
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

## Release 1.1.4 - 2016-12-21



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4894](https://issues.apache.org/jira/browse/FLINK-4894) | Don\'t block on buffer request after broadcastEvent |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4715](https://issues.apache.org/jira/browse/FLINK-4715) | TaskManager should commit suicide after cancellation failure |  Major | Distributed Coordination | Till Rohrmann | Ufuk Celebi |
| [FLINK-4445](https://issues.apache.org/jira/browse/FLINK-4445) | Ignore unmatched state when restoring from savepoint |  Major | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4996](https://issues.apache.org/jira/browse/FLINK-4996) | Make CrossHint @Public |  Trivial | Core | Greg Hogan | Greg Hogan |
| [FLINK-4975](https://issues.apache.org/jira/browse/FLINK-4975) | Add a limit for how much data may be buffered during checkpoint alignment |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5046](https://issues.apache.org/jira/browse/FLINK-5046) | Avoid redundant serialization when creating the TaskDeploymentDescriptor |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5123](https://issues.apache.org/jira/browse/FLINK-5123) | Add description how to do proper shading to Flink docs. |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-5194](https://issues.apache.org/jira/browse/FLINK-5194) | Log heartbeats on TRACE level |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5201](https://issues.apache.org/jira/browse/FLINK-5201) | Promote loaded config properties to INFO |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5196](https://issues.apache.org/jira/browse/FLINK-5196) | Don\'t log InputChannelDescriptor |  Major | JobManager | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5198](https://issues.apache.org/jira/browse/FLINK-5198) | Overwrite TaskState toString |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5199](https://issues.apache.org/jira/browse/FLINK-5199) | Improve logging of submitted job graph actions in HA case |  Major | . | Ufuk Celebi |  |
| [FLINK-5207](https://issues.apache.org/jira/browse/FLINK-5207) | Decrease HadoopFileSystem logging |  Major | . | Ufuk Celebi |  |
| [FLINK-5192](https://issues.apache.org/jira/browse/FLINK-5192) | Provide better log config templates |  Major | Distributed Coordination, JobManager | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5169](https://issues.apache.org/jira/browse/FLINK-5169) | Make consumption of input channels fair |  Critical | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5249](https://issues.apache.org/jira/browse/FLINK-5249) | description of datastream rescaling doesn\'t match the figure |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-5259](https://issues.apache.org/jira/browse/FLINK-5259) | wrong execution environment in retry delays example |  Minor | . | David Anderson | David Anderson |
| [FLINK-5278](https://issues.apache.org/jira/browse/FLINK-5278) | Improve Task and checkpoint logging |  Minor | Distributed Coordination, State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-3347](https://issues.apache.org/jira/browse/FLINK-3347) | TaskManager (or its ActorSystem) need to restart in case they notice quarantine |  Critical | Distributed Coordination | Stephan Ewen | Till Rohrmann |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4108](https://issues.apache.org/jira/browse/FLINK-4108) | NPE in Row.productArity |  Major | Batch Connectors and Input/Output Formats, Type Serialization System | Martin Scholl | Timo Walther |
| [FLINK-4506](https://issues.apache.org/jira/browse/FLINK-4506) | CsvOutputFormat defaults allowNullValues to false, even though doc and declaration says true |  Minor | Batch Connectors and Input/Output Formats, Documentation | Michael Wong | Kirill Morozov |
| [FLINK-4586](https://issues.apache.org/jira/browse/FLINK-4586) | NumberSequenceIterator and Accumulator threading issue |  Minor | DataSet API | Johannes | Greg Hogan |
| [FLINK-4581](https://issues.apache.org/jira/browse/FLINK-4581) | Table API throws "No suitable driver found for jdbc:calcite" |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4862](https://issues.apache.org/jira/browse/FLINK-4862) | NPE on EventTimeSessionWindows with ContinuousEventTimeTrigger |  Major | DataStream API, Streaming | Manu Zhang | Manu Zhang |
| [FLINK-4619](https://issues.apache.org/jira/browse/FLINK-4619) | JobManager does not answer to client when restore from savepoint fails |  Major | . | Maciej Prochniak |  |
| [FLINK-4932](https://issues.apache.org/jira/browse/FLINK-4932) | Don\'t let ExecutionGraph fail when in state Restarting |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-4933](https://issues.apache.org/jira/browse/FLINK-4933) | ExecutionGraph.scheduleOrUpdateConsumers can fail the ExecutionGraph |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-4991](https://issues.apache.org/jira/browse/FLINK-4991) | TestTask hangs in testWatchDogInterruptsTask |  Major | Distributed Coordination | Ufuk Celebi |  |
| [FLINK-4977](https://issues.apache.org/jira/browse/FLINK-4977) | Enum serialization does not work in all cases |  Minor | . | Sean Winard | Stephan Ewen |
| [FLINK-3813](https://issues.apache.org/jira/browse/FLINK-3813) | YARNSessionFIFOITCase.testDetachedMode failed on Travis |  Critical | . | Till Rohrmann | Maximilian Michels |
| [FLINK-4998](https://issues.apache.org/jira/browse/FLINK-4998) | ResourceManager fails when num task slots \> Yarn vcores |  Major | ResourceManager, YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-5028](https://issues.apache.org/jira/browse/FLINK-5028) | Stream Tasks must not go through clean shutdown logic on cancellation |  Critical | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-5038](https://issues.apache.org/jira/browse/FLINK-5038) | Errors in the "cancelTask" method prevent closeables from being closed early |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-5040](https://issues.apache.org/jira/browse/FLINK-5040) | Set correct input channel types with eager scheduling |  Major | JobManager | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5057](https://issues.apache.org/jira/browse/FLINK-5057) | Cancellation timeouts are picked from wrong config |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5063](https://issues.apache.org/jira/browse/FLINK-5063) | State handles are not properly cleaned up for declined or expired checkpoints |  Critical | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5058](https://issues.apache.org/jira/browse/FLINK-5058) | taskManagerMemory attribute set wrong value in FlinkShell |  Major | Scala Shell | wyp |  |
| [FLINK-5085](https://issues.apache.org/jira/browse/FLINK-5085) | Execute CheckpointCoodinator\'s state discard calls asynchronously |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5073](https://issues.apache.org/jira/browse/FLINK-5073) | ZooKeeperCompleteCheckpointStore executes blocking delete operation in ZooKeeper client thread |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5082](https://issues.apache.org/jira/browse/FLINK-5082) | Pull ExecutionService lifecycle management out of the JobManager |  Major | JobManager | Till Rohrmann | Till Rohrmann |
| [FLINK-5149](https://issues.apache.org/jira/browse/FLINK-5149) | ContinuousEventTimeTrigger doesn\'t fire at the end of the window |  Major | Streaming | Maximilian Michels | Maximilian Michels |
| [FLINK-5075](https://issues.apache.org/jira/browse/FLINK-5075) | Kinesis consumer incorrectly determines shards as newly discovered when tested against Kinesalite |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5013](https://issues.apache.org/jira/browse/FLINK-5013) | Flink Kinesis connector doesn\'t work on old EMR versions |  Critical | Kinesis Connector | Robert Metzger | Tzu-Li (Gordon) Tai |
| [FLINK-5050](https://issues.apache.org/jira/browse/FLINK-5050) | JSON.org license is CatX |  Major | . | Ted Yu | Sergey\_Sokur |
| [FLINK-5142](https://issues.apache.org/jira/browse/FLINK-5142) | Resource leak in CheckpointCoordinator |  Major | State Backends, Checkpointing | Frank Lauterwald | Stephan Ewen |
| [FLINK-5184](https://issues.apache.org/jira/browse/FLINK-5184) | Error result of compareSerialized in RowComparator class |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-5197](https://issues.apache.org/jira/browse/FLINK-5197) | Late JobStatusChanged messages can interfere with running jobs |  Minor | JobManager | Till Rohrmann | Till Rohrmann |
| [FLINK-3680](https://issues.apache.org/jira/browse/FLINK-3680) | Remove or improve (not set) text in the Job Plan UI |  Major | Webfrontend | Jamie Grier | Ivan Mushketyk |
| [FLINK-5216](https://issues.apache.org/jira/browse/FLINK-5216) | CheckpointCoordinator\'s \'minPauseBetweenCheckpoints\' refers to checkpoint start rather then checkpoint completion |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5218](https://issues.apache.org/jira/browse/FLINK-5218) | Eagerly close checkpoint streams on cancellation |  Critical | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5228](https://issues.apache.org/jira/browse/FLINK-5228) | LocalInputChannel re-trigger request and release deadlock |  Critical | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5172](https://issues.apache.org/jira/browse/FLINK-5172) | In RocksDBStateBackend, set flink-core and flink-streaming-java to "provided" |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-5173](https://issues.apache.org/jira/browse/FLINK-5173) | Upgrade RocksDB dependency |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5246](https://issues.apache.org/jira/browse/FLINK-5246) | Don\'t discard unknown checkpoint messages in the CheckpointCoordinator |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5248](https://issues.apache.org/jira/browse/FLINK-5248) | SavepointITCase doesn\'t catch savepoint restore failure |  Critical | Tests | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5276](https://issues.apache.org/jira/browse/FLINK-5276) | ExecutionVertex archiving can throw NPE with many previous attempts |  Major | JobManager | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5275](https://issues.apache.org/jira/browse/FLINK-5275) | InputChanelDeploymentDescriptors throws misleading Exception if producer failed/cancelled |  Major | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5274](https://issues.apache.org/jira/browse/FLINK-5274) | LocalInputChannel throws NPE if partition reader is released |  Major | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5039](https://issues.apache.org/jira/browse/FLINK-5039) | Avro GenericRecord support is broken |  Blocker | Batch Connectors and Input/Output Formats | Bruno Dumon | Robert Metzger |
| [FLINK-5158](https://issues.apache.org/jira/browse/FLINK-5158) | Handle ZooKeeperCompletedCheckpointStore exceptions in CheckpointCoordinator |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5193](https://issues.apache.org/jira/browse/FLINK-5193) | Recovering all jobs fails completely if a single recovery fails |  Major | JobManager | Till Rohrmann | Till Rohrmann |
| [FLINK-5285](https://issues.apache.org/jira/browse/FLINK-5285) | CancelCheckpointMarker flood when using at least once mode |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5114](https://issues.apache.org/jira/browse/FLINK-5114) | PartitionState update with finished execution fails |  Major | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5326](https://issues.apache.org/jira/browse/FLINK-5326) | IllegalStateException: Bug in Netty consumer logic: reader queue got notified by partition about available data,  but none was available |  Major | Network | Robert Metzger | Ufuk Celebi |
| [FLINK-5352](https://issues.apache.org/jira/browse/FLINK-5352) | Restore RocksDB 1.1.3 memory behavior |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4829](https://issues.apache.org/jira/browse/FLINK-4829) | Accumulators are not thread safe |  Major | Local Runtime | Till Rohrmann | Maximilian Michels |
| [FLINK-5214](https://issues.apache.org/jira/browse/FLINK-5214) | Clean up checkpoint files when failing checkpoint operation on TM |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5229](https://issues.apache.org/jira/browse/FLINK-5229) | Cleanup StreamTaskStates if a checkpoint operation of a subsequent operator fails |  Major | Distributed Coordination, State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4510](https://issues.apache.org/jira/browse/FLINK-4510) | Always create CheckpointCoordinator |  Major | State Backends, Checkpointing | Ufuk Celebi | Jark Wu |
| [FLINK-4984](https://issues.apache.org/jira/browse/FLINK-4984) | Add Cancellation Barriers to BarrierTracker and BarrierBuffer |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4985](https://issues.apache.org/jira/browse/FLINK-4985) | Report Declined/Canceled Checkpoints to Checkpoint Coordinator |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4778](https://issues.apache.org/jira/browse/FLINK-4778) | Update program example in /docs/setup/cli.md due to the change in FLINK-2021 |  Trivial | . | Pattarawat Chormai |  |


