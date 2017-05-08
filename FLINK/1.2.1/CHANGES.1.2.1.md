
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

## Release 1.2.1 - 2017-04-26



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6139](https://issues.apache.org/jira/browse/FLINK-6139) | Documentation for building / preparing Flink for MapR |  Major | Documentation | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5639](https://issues.apache.org/jira/browse/FLINK-5639) | Clarify License implications of RabbitMQ Connector |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-5681](https://issues.apache.org/jira/browse/FLINK-5681) | Make ReaperThread for SafetyNetCloseableRegistry a singleton |  Major | Core | Stefan Richter | Stefan Richter |
| [FLINK-5581](https://issues.apache.org/jira/browse/FLINK-5581) | Improve Kerberos security related documentation |  Major | Documentation, Security | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5721](https://issues.apache.org/jira/browse/FLINK-5721) | Add FoldingState to State Documentation |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5702](https://issues.apache.org/jira/browse/FLINK-5702) | Kafka Producer docs should warn if using setLogFailuresOnly, at-least-once is compromised |  Major | Documentation, Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5807](https://issues.apache.org/jira/browse/FLINK-5807) | improved wording for doc home page |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-5805](https://issues.apache.org/jira/browse/FLINK-5805) | improve docs for ProcessFunction |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-5800](https://issues.apache.org/jira/browse/FLINK-5800) | Make sure that the CheckpointStreamFactory is instantiated once per operator only |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5705](https://issues.apache.org/jira/browse/FLINK-5705) | webmonitor's request/response use UTF-8 explicitly |  Major | Webfrontend | shijinkui | shijinkui |
| [FLINK-5837](https://issues.apache.org/jira/browse/FLINK-5837) | improve readability of the queryable state docs |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-5876](https://issues.apache.org/jira/browse/FLINK-5876) | Mention Scala type fallacies for queryable state client serializers |  Major | Documentation | Ufuk Celebi |  |
| [FLINK-5894](https://issues.apache.org/jira/browse/FLINK-5894) | HA docs are misleading re: state backends |  Major | Documentation | David Anderson |  |
| [FLINK-5877](https://issues.apache.org/jira/browse/FLINK-5877) | Fix Scala snippet in Async I/O API doc |  Minor | Documentation | Andrea Sella | Andrea Sella |
| [FLINK-5895](https://issues.apache.org/jira/browse/FLINK-5895) | Reduce logging aggressiveness of FileSystemSafetyNet |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-5938](https://issues.apache.org/jira/browse/FLINK-5938) | Replace ExecutionContext by Executor in Scheduler |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-4326](https://issues.apache.org/jira/browse/FLINK-4326) | Flink start-up scripts should optionally start services on the foreground |  Major | Startup Shell Scripts | Elias Levy | Greg Hogan |
| [FLINK-5217](https://issues.apache.org/jira/browse/FLINK-5217) | Deprecated interface Checkpointed make clear suggestion |  Major | DataStream API | shijinkui |  |
| [FLINK-6212](https://issues.apache.org/jira/browse/FLINK-6212) | Missing reference to flink-avro dependency |  Minor | Documentation | Omar Erminy |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5678](https://issues.apache.org/jira/browse/FLINK-5678) | User-defined TableFunctions do not support all types of parameters |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-5628](https://issues.apache.org/jira/browse/FLINK-5628) | CheckpointStatsTracker implements Serializable but isn't |  Blocker | Local Runtime | Chesnay Schepler | Ufuk Celebi |
| [FLINK-5644](https://issues.apache.org/jira/browse/FLINK-5644) | Task#lastCheckpointSize metric broken |  Major | Metrics, Streaming | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5708](https://issues.apache.org/jira/browse/FLINK-5708) | we should remove duplicated configuration options |  Minor | Documentation | Yelei Feng |  |
| [FLINK-5652](https://issues.apache.org/jira/browse/FLINK-5652) | Memory leak in AsyncDataStream |  Major | DataStream API | Dmitry Golubets | Till Rohrmann |
| [FLINK-5699](https://issues.apache.org/jira/browse/FLINK-5699) | Cancel with savepoint fails with a NPE if savepoint target directory not set |  Minor | State Backends, Checkpointing | Till Rohrmann | Ufuk Celebi |
| [FLINK-5732](https://issues.apache.org/jira/browse/FLINK-5732) | Java quick start mvn command line is incorrect |  Trivial | Documentation | Colin Breame | Ufuk Celebi |
| [FLINK-5806](https://issues.apache.org/jira/browse/FLINK-5806) | TaskExecutionState toString format have wrong key |  Major | . | shijinkui | shijinkui |
| [FLINK-5771](https://issues.apache.org/jira/browse/FLINK-5771) | DelimitedInputFormat does not correctly handle multi-byte delimiters |  Major | filesystem-connector | Colin Breame | Fabian Hueske |
| [FLINK-5751](https://issues.apache.org/jira/browse/FLINK-5751) | 404 in documentation |  Trivial | Documentation | Colin Breame |  |
| [FLINK-5773](https://issues.apache.org/jira/browse/FLINK-5773) | Cannot cast scala.util.Failure to org.apache.flink.runtime.messages.Acknowledge |  Major | Distributed Coordination | Colin Breame | Till Rohrmann |
| [FLINK-5814](https://issues.apache.org/jira/browse/FLINK-5814) | flink-dist creates wrong symlink when not used with cleaned before |  Minor | Build System | Nico Kruber | Nico Kruber |
| [FLINK-5828](https://issues.apache.org/jira/browse/FLINK-5828) | BlobServer create cache dir has concurrency safety problem |  Major | Core | ZhengBowen |  |
| [FLINK-5817](https://issues.apache.org/jira/browse/FLINK-5817) | Fix test concurrent execution failure by test dir conflicts. |  Major | . | Wenlong Lyu | Wenlong Lyu |
| [FLINK-5669](https://issues.apache.org/jira/browse/FLINK-5669) | flink-streaming-contrib DataStreamUtils.collect in local environment mode fails when offline |  Minor | flink-contrib | Rick Cox |  |
| [FLINK-4813](https://issues.apache.org/jira/browse/FLINK-4813) | Having flink-test-utils as a dependency outside Flink fails the build |  Major | Build System | Robert Metzger | Nico Kruber |
| [FLINK-5749](https://issues.apache.org/jira/browse/FLINK-5749) |     unset HADOOP\_HOME and HADOOP\_CONF\_DIR to avoid env in build machine failing the UT and IT |  Major | . | Wenlong Lyu | Wenlong Lyu |
| [FLINK-5885](https://issues.apache.org/jira/browse/FLINK-5885) | Java code snippet instead of scala in documentation |  Trivial | Cassandra Connector, Documentation | Evgeny Vanslov | Andrea Sella |
| [FLINK-5907](https://issues.apache.org/jira/browse/FLINK-5907) | RowCsvInputFormat bug on parsing tsv |  Major | Java API | Flavio Pompermaier | Kurt Young |
| [FLINK-5934](https://issues.apache.org/jira/browse/FLINK-5934) | Scheduler in ExecutionGraph null if failure happens in ExecutionGraph.restoreLatestCheckpointedState |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5945](https://issues.apache.org/jira/browse/FLINK-5945) | Close function in OuterJoinOperatorBase#executeOnCollections |  Major | Core | Greg Hogan | Greg Hogan |
| [FLINK-5965](https://issues.apache.org/jira/browse/FLINK-5965) | Typo on DropWizard wrappers |  Trivial | Documentation | Francisco Sokol |  |
| [FLINK-6002](https://issues.apache.org/jira/browse/FLINK-6002) | Documentation: 'MacOS X' under 'Download and Start Flink' in Quickstart page is not rendered correctly |  Trivial | Documentation | Bowen Li |  |
| [FLINK-6025](https://issues.apache.org/jira/browse/FLINK-6025) | User code ClassLoader not used when KryoSerializer fallbacks to serialization for copying |  Major | Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5942](https://issues.apache.org/jira/browse/FLINK-5942) | Harden ZooKeeperStateHandleStore to deal with corrupted data |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5940](https://issues.apache.org/jira/browse/FLINK-5940) | ZooKeeperCompletedCheckpointStore cannot handle broken state handles |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5949](https://issues.apache.org/jira/browse/FLINK-5949) | Flink on YARN checks for Kerberos credentials for non-Kerberos authentication methods |  Blocker | Security, YARN | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6001](https://issues.apache.org/jira/browse/FLINK-6001) | NPE on TumblingEventTimeWindows with ContinuousEventTimeTrigger and allowedLateness |  Critical | DataStream API, Streaming | Vladislav Pernin | Aljoscha Krettek |
| [FLINK-6006](https://issues.apache.org/jira/browse/FLINK-6006) | Kafka Consumer can lose state if queried partition list is incomplete on restore |  Blocker | Kafka Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6051](https://issues.apache.org/jira/browse/FLINK-6051) | Wrong metric scope names in documentation |  Minor | Documentation, Metrics | Joshua Griffith |  |
| [FLINK-5701](https://issues.apache.org/jira/browse/FLINK-5701) | FlinkKafkaProducer should check asyncException on checkpoints |  Critical | Kafka Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5962](https://issues.apache.org/jira/browse/FLINK-5962) | Cancel checkpoint canceller tasks in CheckpointCoordinator |  Critical | State Backends, Checkpointing | Till Rohrmann | Stephan Ewen |
| [FLINK-5650](https://issues.apache.org/jira/browse/FLINK-5650) | Flink-python tests executing cost too long time |  Critical | Python API, Tests | shijinkui | Chesnay Schepler |
| [FLINK-5985](https://issues.apache.org/jira/browse/FLINK-5985) | Flink treats every task as stateful (making topology changes impossible) |  Critical | State Backends, Checkpointing | Gyula Fora | Stefan Richter |
| [FLINK-6084](https://issues.apache.org/jira/browse/FLINK-6084) | Cassandra connector does not declare all dependencies |  Critical | Cassandra Connector | Robert Metzger | Robert Metzger |
| [FLINK-6000](https://issues.apache.org/jira/browse/FLINK-6000) | Can not start HA cluster with start-cluster.sh |  Major | Startup Shell Scripts | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6170](https://issues.apache.org/jira/browse/FLINK-6170) | Some checkpoint metrics rely on latest stat snapshot |  Major | Metrics, State Backends, Checkpointing, Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-6133](https://issues.apache.org/jira/browse/FLINK-6133) | fix build status in README.md |  Minor | Build System | Bowen Li | Bowen Li |
| [FLINK-5972](https://issues.apache.org/jira/browse/FLINK-5972) | Don't allow shrinking merging windows |  Blocker | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6182](https://issues.apache.org/jira/browse/FLINK-6182) | Fix possible NPE in SourceStreamTask |  Minor | Local Runtime | Ufuk Celebi |  |
| [FLINK-6207](https://issues.apache.org/jira/browse/FLINK-6207) | Duplicate type serializers for async snapshots of CopyOnWriteStateTable |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6181](https://issues.apache.org/jira/browse/FLINK-6181) | Zookeeper scripts use invalid regex |  Major | Build System, Startup Shell Scripts | Robert Metzger | Robert Metzger |
| [FLINK-6183](https://issues.apache.org/jira/browse/FLINK-6183) | TaskMetricGroup may not be cleanup when Task.run() is never called or exits early |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6184](https://issues.apache.org/jira/browse/FLINK-6184) | Buffer metrics can cause NPE |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6203](https://issues.apache.org/jira/browse/FLINK-6203) | DataSet Transformations |  Minor | DataSet API, Documentation | 苏拓 | Chesnay Schepler |
| [FLINK-4848](https://issues.apache.org/jira/browse/FLINK-4848) | keystoreFilePath should be checked against null in SSLUtils#createSSLServerContext |  Minor | Security | Ted Yu | Chesnay Schepler |
| [FLINK-6308](https://issues.apache.org/jira/browse/FLINK-6308) | Task managers are not attaching to job manager on macos |  Major | Docker | Mateusz Zakarczemny |  |
| [FLINK-6468](https://issues.apache.org/jira/browse/FLINK-6468) | release 1.2.1 tag in git |  Minor | Build System | Petr Novotnik | Robert Metzger |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5825](https://issues.apache.org/jira/browse/FLINK-5825) | In yarn mode, a small pic can not be loaded |  Minor | Webfrontend, YARN | Tao Wang |  |
| [FLINK-5640](https://issues.apache.org/jira/browse/FLINK-5640) | configure the explicit Unit Test file suffix |  Major | Tests | shijinkui | shijinkui |
| [FLINK-5723](https://issues.apache.org/jira/browse/FLINK-5723) | Use "Used" instead of "Initial" to make taskmanager tag more readable |  Trivial | Webfrontend | Tao Wang |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3903](https://issues.apache.org/jira/browse/FLINK-3903) | Homebrew Installation |  Minor | Build System, Documentation | Eron Wright |  |


