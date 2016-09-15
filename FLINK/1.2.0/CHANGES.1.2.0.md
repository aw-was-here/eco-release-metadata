
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

## Release 1.2.0 - Unreleased (as of 2016-09-15)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4180](https://issues.apache.org/jira/browse/FLINK-4180) | Create a batch SQL example |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4181](https://issues.apache.org/jira/browse/FLINK-4181) | Add a basic streaming Table API example |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-3940](https://issues.apache.org/jira/browse/FLINK-3940) | Add support for ORDER BY OFFSET FETCH |  Minor | Table API & SQL | Fabian Hueske | GaoLun |
| [FLINK-4359](https://issues.apache.org/jira/browse/FLINK-4359) | Add INTERVAL type |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3097](https://issues.apache.org/jira/browse/FLINK-3097) | Add support for custom functions in Table API |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4420](https://issues.apache.org/jira/browse/FLINK-4420) | Introduce star(\*) to select all of the columns in the table |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-3755](https://issues.apache.org/jira/browse/FLINK-3755) | Introduce key groups for key-value state to support dynamic scaling |  Major | . | Till Rohrmann | Till Rohrmann |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3904](https://issues.apache.org/jira/browse/FLINK-3904) | GlobalConfiguration doesn\'t ensure config has been loaded |  Minor | . | Maximilian Michels | Maximilian Michels |
| [FLINK-4179](https://issues.apache.org/jira/browse/FLINK-4179) | Update TPCHQuery3Table example |  Major | Table API & SQL | Timo Walther |  |
| [FLINK-4299](https://issues.apache.org/jira/browse/FLINK-4299) | Show loss of job manager in Client |  Major | Client | Ufuk Celebi | Maximilian Michels |
| [FLINK-4251](https://issues.apache.org/jira/browse/FLINK-4251) | Add possiblity for the RMQ Streaming Sink to customize the queue |  Minor | Streaming Connectors | Philipp Grulich |  |
| [FLINK-4203](https://issues.apache.org/jira/browse/FLINK-4203) | Improve Table API documentation |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4306](https://issues.apache.org/jira/browse/FLINK-4306) | Fix Flink and Storm dependencies in flink-storm and flink-storm-examples |  Major | Storm Compatibility | Stephan Ewen | Stephan Ewen |
| [FLINK-4161](https://issues.apache.org/jira/browse/FLINK-4161) | Quickstarts can exclude more flink-dist dependencies |  Trivial | Quickstarts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4308](https://issues.apache.org/jira/browse/FLINK-4308) | Allow uploaded jar directory to be configurable |  Minor | Webfrontend | Zhenzhong Xu |  |
| [FLINK-2090](https://issues.apache.org/jira/browse/FLINK-2090) | toString of CollectionInputFormat takes long time when the collection is huge |  Minor | . | Till Rohrmann | Ivan Mushketyk |
| [FLINK-4242](https://issues.apache.org/jira/browse/FLINK-4242) | Improve validation exception messages |  Minor | Table API & SQL | Till Rohrmann | GaoLun |
| [FLINK-4310](https://issues.apache.org/jira/browse/FLINK-4310) | Move BinaryCompatibility Check plugin to relevant projects |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-4366](https://issues.apache.org/jira/browse/FLINK-4366) | Enforce parallelism=1 For AllWindowedStream |  Major | . | Aljoscha Krettek | Jark Wu |
| [FLINK-4104](https://issues.apache.org/jira/browse/FLINK-4104) | Restructure Gelly docs |  Minor | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-4302](https://issues.apache.org/jira/browse/FLINK-4302) | Add JavaDocs to MetricConfig |  Major | Metrics | Ufuk Celebi | Chesnay Schepler |
| [FLINK-4281](https://issues.apache.org/jira/browse/FLINK-4281) | Wrap all Calcite Exceptions in Flink Exceptions |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4322](https://issues.apache.org/jira/browse/FLINK-4322) | Unify CheckpointCoordinator and SavepointCoordinator |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4189](https://issues.apache.org/jira/browse/FLINK-4189) | Introduce symbols for internal use |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4282](https://issues.apache.org/jira/browse/FLINK-4282) | Add Offset Parameter to WindowAssigners |  Major | Streaming | Aljoscha Krettek |  |
| [FLINK-4222](https://issues.apache.org/jira/browse/FLINK-4222) | Allow Kinesis configuration to get credentials from AWS Metadata |  Minor | Streaming Connectors | Nick Chadwick |  |
| [FLINK-3866](https://issues.apache.org/jira/browse/FLINK-3866) | StringArraySerializer claims type is immutable; shouldn\'t |  Minor | Core | Tatu Saloranta | Ivan Mushketyk |
| [FLINK-4435](https://issues.apache.org/jira/browse/FLINK-4435) | Replace Guava\'s VisibleForTesting annotation with Flink\'s annotation |  Major | . | Stephan Ewen | Jark Wu |
| [FLINK-4253](https://issues.apache.org/jira/browse/FLINK-4253) | Rename "recovery.mode" config key to "high-availability" |  Major | . | Ufuk Celebi | ramkrishna.s.vasudevan |
| [FLINK-4457](https://issues.apache.org/jira/browse/FLINK-4457) | Make the ExecutionGraph independent of Akka |  Major | Distributed Coordination | Till Rohrmann | Stephan Ewen |
| [FLINK-3899](https://issues.apache.org/jira/browse/FLINK-3899) | Document window processing with Reduce/FoldFunction + WindowFunction |  Major | Documentation, Streaming | Fabian Hueske | Daniel Blazevski |
| [FLINK-4525](https://issues.apache.org/jira/browse/FLINK-4525) | Drop the "eager split pre-assignment" code paths |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-4190](https://issues.apache.org/jira/browse/FLINK-4190) | Generalise RollingSink to work with arbitrary buckets |  Minor | filesystem-connector, Streaming Connectors | Josh Forman-Gornall | Josh Forman-Gornall |
| [FLINK-4539](https://issues.apache.org/jira/browse/FLINK-4539) | Duplicate/inconsistent logic for physical memory size in classes "Hardware" and "EnvironmentInformation" |  Minor | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-4340](https://issues.apache.org/jira/browse/FLINK-4340) | Remove RocksDB Semi-Async Checkpoint Mode |  Major | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4459](https://issues.apache.org/jira/browse/FLINK-4459) | Introduce SlotProvider for Scheduler |  Major | Scheduler | Till Rohrmann | Kurt Young |
| [FLINK-4599](https://issues.apache.org/jira/browse/FLINK-4599) | Add \'explain()\' also to StreamTableEnvironment |  Major | Table API & SQL | Timo Walther | Simone Robutti |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4259](https://issues.apache.org/jira/browse/FLINK-4259) | Unclosed FSDataOutputStream in FileCache#copy() |  Minor | . | Ted Yu | Neelesh Srinivas Salian |
| [FLINK-4289](https://issues.apache.org/jira/browse/FLINK-4289) | Source files have executable flag set |  Minor | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4296](https://issues.apache.org/jira/browse/FLINK-4296) | Scheduler accepts more tasks than it has task slots available |  Critical | JobManager, TaskManager | Maximilian Michels | Till Rohrmann |
| [FLINK-4290](https://issues.apache.org/jira/browse/FLINK-4290) | CassandraConnectorTest deadlocks |  Critical | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-4298](https://issues.apache.org/jira/browse/FLINK-4298) | Clean up Storm Compatibility Dependencies |  Major | Storm Compatibility | Stephan Ewen | Stephan Ewen |
| [FLINK-4285](https://issues.apache.org/jira/browse/FLINK-4285) | Non-existing example in Flink quickstart setup documentation |  Minor | Documentation, Examples | Tzu-Li (Gordon) Tai | Stephan Ewen |
| [FLINK-4292](https://issues.apache.org/jira/browse/FLINK-4292) | HCatalog project incorrectly set up |  Critical | Batch Connectors and Input/Output Formats | Stephan Ewen | Stephan Ewen |
| [FLINK-4307](https://issues.apache.org/jira/browse/FLINK-4307) | Broken user-facing API for ListState |  Blocker | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-4219](https://issues.apache.org/jira/browse/FLINK-4219) | Quote PDSH opts in start-cluster.sh |  Major | Startup Shell Scripts | Greg Hogan | Greg Hogan |
| [FLINK-4314](https://issues.apache.org/jira/browse/FLINK-4314) | Test instability in JobManagerHAJobGraphRecoveryITCase.testJobPersistencyWhenJobManagerShutdown |  Major | . | Ufuk Celebi |  |
| [FLINK-4297](https://issues.apache.org/jira/browse/FLINK-4297) | Yarn client can\'t determine fat jar location if path contains spaces |  Major | YARN Client | Maximilian Michels | Maximilian Michels |
| [FLINK-4304](https://issues.apache.org/jira/browse/FLINK-4304) | Jar names that contain whitespace cause problems in web client |  Major | Web Client | Timo Walther | Timo Walther |
| [FLINK-3138](https://issues.apache.org/jira/browse/FLINK-3138) | Method References are not supported as lambda expressions |  Major | Core | Stephan Ewen | Timo Walther |
| [FLINK-4226](https://issues.apache.org/jira/browse/FLINK-4226) | Typo: Define Keys using Field Expressions example should use window and not reduce |  Trivial | Documentation | Ahmad Ragab |  |
| [FLINK-4276](https://issues.apache.org/jira/browse/FLINK-4276) | TextInputFormatTest.testNestedFileRead fails on Windows OS |  Trivial | Batch Connectors and Input/Output Formats, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4291](https://issues.apache.org/jira/browse/FLINK-4291) | No log entry for unscheduled reporters |  Trivial | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4332](https://issues.apache.org/jira/browse/FLINK-4332) | Savepoint Serializer mixed read()/readFully() |  Critical | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4333](https://issues.apache.org/jira/browse/FLINK-4333) | Name mixup in Savepoint versions |  Trivial | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4337](https://issues.apache.org/jira/browse/FLINK-4337) | Remove unnecessary Scala suffix from Hadoop1 artifact |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-4316](https://issues.apache.org/jira/browse/FLINK-4316) | Make flink-core independent of Hadoop |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-4342](https://issues.apache.org/jira/browse/FLINK-4342) | Fix dependencies of flink-connector-filesystem |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-4270](https://issues.apache.org/jira/browse/FLINK-4270) | \'as\' in front of join does not work |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4236](https://issues.apache.org/jira/browse/FLINK-4236) | Flink Dashboard stops showing list of uploaded jars if main method cannot be looked up |  Major | Job-Submission | Gary Yao | Maximilian Michels |
| [FLINK-4385](https://issues.apache.org/jira/browse/FLINK-4385) | Union on Timestamp fields does not work |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4394](https://issues.apache.org/jira/browse/FLINK-4394) | RMQSource: The QueueName is not accessible to subclasses |  Major | Streaming Connectors | Dominik Bruhn | Dominik Bruhn |
| [FLINK-4309](https://issues.apache.org/jira/browse/FLINK-4309) | Potential null pointer dereference in DelegatingConfiguration#keySet() |  Minor | . | Ted Yu | Sunny T |
| [FLINK-4388](https://issues.apache.org/jira/browse/FLINK-4388) | Race condition during initialization of MemorySegmentFactory |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-4293](https://issues.apache.org/jira/browse/FLINK-4293) | Malformatted Apache Headers |  Minor | . | Stephan Ewen | Chesnay Schepler |
| [FLINK-4411](https://issues.apache.org/jira/browse/FLINK-4411) | [py] Chained dual input children are not properly propagated |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4412](https://issues.apache.org/jira/browse/FLINK-4412) | [py] Chaining does not properly handle broadcast variables |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4409](https://issues.apache.org/jira/browse/FLINK-4409) | class conflict between jsr305-1.3.9.jar and flink-shaded-hadoop2-1.1.1.jar |  Minor | Build System | Renkai Ge | Stephan Ewen |
| [FLINK-4021](https://issues.apache.org/jira/browse/FLINK-4021) | Problem of setting autoread for netty channel when more tasks sharing the same Tcp connection |  Major | Network | Zhijiang Wang | Zhijiang Wang |
| [FLINK-4425](https://issues.apache.org/jira/browse/FLINK-4425) | "Out Of Memory" during savepoint deserialization |  Major | State Backends, Checkpointing | Sergii Koshel |  |
| [FLINK-4454](https://issues.apache.org/jira/browse/FLINK-4454) | Lookups for JobManager address in config |  Minor | Client | Maximilian Michels | Maximilian Michels |
| [FLINK-4417](https://issues.apache.org/jira/browse/FLINK-4417) | Checkpoints should be subsumed by CheckpointID not, by timestamp |  Major | State Backends, Checkpointing | Stephan Ewen | ramkrishna.s.vasudevan |
| [FLINK-4453](https://issues.apache.org/jira/browse/FLINK-4453) | Scala code example in Window documentation shows Java |  Trivial | Documentation | Fabian Hueske | Jark Wu |
| [FLINK-4437](https://issues.apache.org/jira/browse/FLINK-4437) | Lock evasion around lastTriggeredCheckpoint may lead to lost updates to related fields |  Major | . | Ted Yu |  |
| [FLINK-4341](https://issues.apache.org/jira/browse/FLINK-4341) | Kinesis connector does not emit maximum watermark properly |  Blocker | Streaming Connectors | Scott Kidder | Tzu-Li (Gordon) Tai |
| [FLINK-4488](https://issues.apache.org/jira/browse/FLINK-4488) | Prevent cluster shutdown after job execution for non-detached jobs |  Minor | YARN Client | Maximilian Michels | Maximilian Michels |
| [FLINK-4486](https://issues.apache.org/jira/browse/FLINK-4486) | JobManager not fully running when yarn-session.sh finishes |  Major | YARN Client | Niels Basjes | Maximilian Michels |
| [FLINK-4526](https://issues.apache.org/jira/browse/FLINK-4526) | ApplicationClient: remove redundant proxy messages |  Major | YARN Client | Maximilian Michels | Maximilian Michels |
| [FLINK-4271](https://issues.apache.org/jira/browse/FLINK-4271) | There is no way to set parallelism of operators produced by CoGroupedStreams |  Major | DataStream API | Wenlong Lyu | Jark Wu |
| [FLINK-4567](https://issues.apache.org/jira/browse/FLINK-4567) | Enhance SerializedThrowable to properly preserver cause chains |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-4566](https://issues.apache.org/jira/browse/FLINK-4566) | ProducerFailedException does not properly preserve Exception causes |  Major | Network | Stephan Ewen | Stephan Ewen |
| [FLINK-4570](https://issues.apache.org/jira/browse/FLINK-4570) | Scalastyle Maven plugin fails undeterministically |  Major | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-4073](https://issues.apache.org/jira/browse/FLINK-4073) | YARNSessionCapacitySchedulerITCase.testTaskManagerFailure failed on Travis |  Critical | Tests | Till Rohrmann | Maximilian Michels |
| [FLINK-4436](https://issues.apache.org/jira/browse/FLINK-4436) | Unclosed DataOutputBuffer in Utils#setTokensFor() |  Minor | . | Ted Yu |  |
| [FLINK-4522](https://issues.apache.org/jira/browse/FLINK-4522) | Gelly link broken in homepage |  Major | Documentation, Gelly | Vasia Kalavri | Greg Hogan |
| [FLINK-4257](https://issues.apache.org/jira/browse/FLINK-4257) | Handle delegating algorithm change of class |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-4601](https://issues.apache.org/jira/browse/FLINK-4601) | Check for empty string properly |  Trivial | . | Alexander Pivovarov |  |
| [FLINK-4592](https://issues.apache.org/jira/browse/FLINK-4592) | Fix flaky test ScalarFunctionsTest.testCurrentTimePoint |  Major | Table API & SQL | Timo Walther | Timo Walther |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4312](https://issues.apache.org/jira/browse/FLINK-4312) | Remove Serializabiliy of ExecutionGraph |  Minor | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-4320](https://issues.apache.org/jira/browse/FLINK-4320) | Fix misleading ScheduleMode names |  Minor | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-4392](https://issues.apache.org/jira/browse/FLINK-4392) | Make RPC Service Thread Safe |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-4403](https://issues.apache.org/jira/browse/FLINK-4403) | RPC proxy classloading should use Flink class\' classloader |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-4434](https://issues.apache.org/jira/browse/FLINK-4434) | Add a testing RPC service |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-4380](https://issues.apache.org/jira/browse/FLINK-4380) | Introduce KeyGroupAssigner and Max-Parallelism Parameter |  Major | Streaming | Aljoscha Krettek | Stefan Richter |
| [FLINK-4381](https://issues.apache.org/jira/browse/FLINK-4381) | Refactor State to Prepare For Key-Group State Backends |  Major | Streaming | Aljoscha Krettek | Stefan Richter |
| [FLINK-3761](https://issues.apache.org/jira/browse/FLINK-3761) | Refactor State Backends/Make Keyed State Key-Group Aware |  Major | State Backends, Checkpointing | Till Rohrmann | Aljoscha Krettek |
| [FLINK-4490](https://issues.apache.org/jira/browse/FLINK-4490) | Decouple Slot and Instance |  Major | Distributed Coordination | Kurt Young | Stephan Ewen |
| [FLINK-4389](https://issues.apache.org/jira/browse/FLINK-4389) | Expose metrics to Webfrontend |  Major | Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |


