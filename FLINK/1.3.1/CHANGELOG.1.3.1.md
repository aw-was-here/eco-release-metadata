
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

## Release 1.3.1 - 2017-06-22



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6803](https://issues.apache.org/jira/browse/FLINK-6803) | Add test for PojoSerializer when Pojo changes |  Major | Type Serialization System | Till Rohrmann | Till Rohrmann |
| [FLINK-6796](https://issues.apache.org/jira/browse/FLINK-6796) | Allow setting the user code class loader for AbstractStreamOperatorTestHarness |  Minor | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6859](https://issues.apache.org/jira/browse/FLINK-6859) | StateCleaningCountTrigger should not delete timer |  Major | Table API & SQL | Fabian Hueske | sunjincheng |
| [FLINK-6929](https://issues.apache.org/jira/browse/FLINK-6929) | Add documentation for Table API OVER windows |  Major | Documentation, Table API & SQL | Fabian Hueske | sunjincheng |
| [FLINK-6952](https://issues.apache.org/jira/browse/FLINK-6952) | Add link to Javadocs |  Minor | Documentation | Ufuk Celebi | Ufuk Celebi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6492](https://issues.apache.org/jira/browse/FLINK-6492) | Unclosed DataOutputViewStream in GenericArraySerializerConfigSnapshot#write() |  Minor | State Backends, Checkpointing | Ted Yu |  |
| [FLINK-6659](https://issues.apache.org/jira/browse/FLINK-6659) | RocksDBMergeIteratorTest, SavepointITCase leave temporary directories behind |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-6320](https://issues.apache.org/jira/browse/FLINK-6320) | Flakey JobManagerHAJobGraphRecoveryITCase |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-6669](https://issues.apache.org/jira/browse/FLINK-6669) | [Build] Scala style check errror on Windows |  Minor | . | Jinjiang Ling | Jinjiang Ling |
| [FLINK-6780](https://issues.apache.org/jira/browse/FLINK-6780) | ExternalTableSource should add time attributes in the row type |  Critical | Table API & SQL | Haohui Mai | Haohui Mai |
| [FLINK-6775](https://issues.apache.org/jira/browse/FLINK-6775) | StateDescriptor cannot be shared by multiple subtasks |  Blocker | DataStream API | Till Rohrmann | Till Rohrmann |
| [FLINK-6809](https://issues.apache.org/jira/browse/FLINK-6809) | side outputs documentation: wrong variable name in java example code |  Trivial | Documentation | Petr Novotnik | Petr Novotnik |
| [FLINK-6797](https://issues.apache.org/jira/browse/FLINK-6797) | building docs fails with bundler 1.15 |  Major | Documentation | David Anderson | David Anderson |
| [FLINK-6816](https://issues.apache.org/jira/browse/FLINK-6816) | Fix wrong usage of Scala string interpolation in Table API |  Minor | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-6812](https://issues.apache.org/jira/browse/FLINK-6812) | Elasticsearch 5 release artifacts not published to Maven central |  Blocker | ElasticSearch Connector | Tzu-Li (Gordon) Tai | Robert Metzger |
| [FLINK-6844](https://issues.apache.org/jira/browse/FLINK-6844) | TraversableSerializer should implement compatibility methods |  Blocker | Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6853](https://issues.apache.org/jira/browse/FLINK-6853) | Migrating from Flink 1.1 fails for FlinkCEP |  Major | CEP | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6808](https://issues.apache.org/jira/browse/FLINK-6808) | Stream join fails when checkpointing is enabled |  Blocker | DataStream API | Francisco Rosa | Tzu-Li (Gordon) Tai |
| [FLINK-6815](https://issues.apache.org/jira/browse/FLINK-6815) | Javadocs don't work anymore in Flink 1.4-SNAPSHOT |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-6783](https://issues.apache.org/jira/browse/FLINK-6783) | Wrongly extracted TypeInformations for WindowedStream::aggregate |  Blocker | Core, DataStream API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6772](https://issues.apache.org/jira/browse/FLINK-6772) | Incorrect ordering of matched state events in Flink CEP |  Major | CEP | Tzu-Li (Gordon) Tai | Kostas Kloudas |
| [FLINK-6869](https://issues.apache.org/jira/browse/FLINK-6869) | Scala serializers do not have the serialVersionUID specified |  Blocker | Scala API, Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6883](https://issues.apache.org/jira/browse/FLINK-6883) | Serializer for collection of Scala case classes are generated with different anonymous class names in 1.3 |  Blocker | Scala API, Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6804](https://issues.apache.org/jira/browse/FLINK-6804) | Inconsistent state migration behaviour between different state backends |  Critical | State Backends, Checkpointing, Type Serialization System | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-6801](https://issues.apache.org/jira/browse/FLINK-6801) | PojoSerializerConfigSnapshot cannot deal with missing Pojo fields |  Major | Type Serialization System | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-6848](https://issues.apache.org/jira/browse/FLINK-6848) | Extend the managed state docs with a Scala example |  Major | Documentation, State Backends, Checkpointing | Fokko Driesprong | Fokko Driesprong |
| [FLINK-6833](https://issues.apache.org/jira/browse/FLINK-6833) | Race condition: Asynchronous checkpointing task can fail completed StreamTask |  Critical | Local Runtime, State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-6899](https://issues.apache.org/jira/browse/FLINK-6899) | Wrong state array size in NestedMapsStateTable |  Minor | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-6744](https://issues.apache.org/jira/browse/FLINK-6744) | Flaky ExecutionGraphSchedulingTest |  Critical | Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-6685](https://issues.apache.org/jira/browse/FLINK-6685) | SafetyNetCloseableRegistry is closed prematurely in Task::triggerCheckpointBarrier |  Blocker | . | Stefan Richter | Stefan Richter |
| [FLINK-6915](https://issues.apache.org/jira/browse/FLINK-6915) | EnumValueSerializer broken |  Major | State Backends, Checkpointing, Type Serialization System | Till Rohrmann | Till Rohrmann |
| [FLINK-6914](https://issues.apache.org/jira/browse/FLINK-6914) | TrySerializer#ensureCompatibility causes StackOverflowException |  Major | State Backends, Checkpointing, Type Serialization System | Till Rohrmann | Till Rohrmann |
| [FLINK-6913](https://issues.apache.org/jira/browse/FLINK-6913) | Instable StatefulJobSavepointMigrationITCase.testRestoreSavepoint |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6941](https://issues.apache.org/jira/browse/FLINK-6941) | Selecting window start / end on over window causes field not resolve exception |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6886](https://issues.apache.org/jira/browse/FLINK-6886) | Fix Timestamp field can not be selected in event time case when  toDataStream[T], \`T\` not a \`Row\` Type. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6602](https://issues.apache.org/jira/browse/FLINK-6602) | Table source with defined time attributes allows empty string |  Major | Table API & SQL | Timo Walther | Zhe Li |
| [FLINK-6930](https://issues.apache.org/jira/browse/FLINK-6930) | Selecting window start / end on row-based Tumble/Slide window causes NPE |  Major | Table API & SQL | Fabian Hueske | Jark Wu |
| [FLINK-6881](https://issues.apache.org/jira/browse/FLINK-6881) | Creating a table from a POJO and defining a time attribute fails |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6896](https://issues.apache.org/jira/browse/FLINK-6896) | Creating a table from a POJO and use table sink to output fail |  Major | Table API & SQL | Mark You | sunjincheng |
| [FLINK-6921](https://issues.apache.org/jira/browse/FLINK-6921) | EnumValueSerializer cannot properly handle appended enum values |  Critical | Type Serialization System | Till Rohrmann | Till Rohrmann |
| [FLINK-6948](https://issues.apache.org/jira/browse/FLINK-6948) | EnumValueSerializer cannot handle removed enum values |  Critical | Type Serialization System | Till Rohrmann | Till Rohrmann |
| [FLINK-6922](https://issues.apache.org/jira/browse/FLINK-6922) | Enum(Value)SerializerConfigSnapshot uses Java serialization to store enum values |  Major | Type Serialization System | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-6652](https://issues.apache.org/jira/browse/FLINK-6652) | Problem with DelimitedInputFormat |  Major | Batch Connectors and Input/Output Formats | Moritz Schubotz | Fabian Hueske |
| [FLINK-6954](https://issues.apache.org/jira/browse/FLINK-6954) | Flink 1.3 checkpointing failing with KeyedCEPPatternOperator |  Blocker | CEP, DataStream API, State Backends, Checkpointing | Shashank Agarwal |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6830](https://issues.apache.org/jira/browse/FLINK-6830) | Add ITTests for savepoint migration from 1.3 |  Major | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


