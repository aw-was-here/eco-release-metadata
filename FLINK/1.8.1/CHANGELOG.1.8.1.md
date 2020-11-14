
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

## Release 1.8.1 - 2019-07-02



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12169](https://issues.apache.org/jira/browse/FLINK-12169) | Improve Javadoc of MessageAcknowledgingSourceBase |  Minor | Connectors/ RabbitMQ | Konstantin Knauf | Konstantin Knauf |
| [FLINK-12137](https://issues.apache.org/jira/browse/FLINK-12137) | Add more proper explanation on flink streaming connectors |  Major | Connectors / Kinesis | JoongkeunYang | JoongkeunYang |
| [FLINK-12391](https://issues.apache.org/jira/browse/FLINK-12391) | Add timeout to transfer.sh |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12539](https://issues.apache.org/jira/browse/FLINK-12539) | StreamingFileSink: Make the class extendable to customize for different usecases |  Major | Connectors / FileSystem | Kailash Hassan Dayanand | Kailash Hassan Dayanand |
| [FLINK-12378](https://issues.apache.org/jira/browse/FLINK-12378) | Consolidate FileSystem Documentation |  Major | Documentation, FileSystems | Seth Wiesman | Seth Wiesman |
| [FLINK-11126](https://issues.apache.org/jira/browse/FLINK-11126) | Filter out AMRMToken in the TaskManager credentials |  Minor | Deployment / YARN | Paul Lin | Paul Lin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11897](https://issues.apache.org/jira/browse/FLINK-11897) | ExecutionGraphSuspendTest does not wait for all tasks to be submitted |  Critical | Runtime / Coordination, Tests | chunpinghe | chunpinghe |
| [FLINK-12112](https://issues.apache.org/jira/browse/FLINK-12112) | AbstractTaskManagerProcessFailureRecoveryTest process output logging does not work properly |  Major | Runtime / Coordination, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12009](https://issues.apache.org/jira/browse/FLINK-12009) | Wrong check message about heartbeat interval for HeartbeatServices |  Trivial | Runtime / Coordination | Bruno Aranda Delgado | vinoyang |
| [FLINK-12132](https://issues.apache.org/jira/browse/FLINK-12132) | The example in /docs/ops/deployment/yarn\_setup.md should be updated due to the change FLINK-2021 |  Trivial | Deployment / YARN, Documentation | Wang Geng | Wang Geng |
| [FLINK-10941](https://issues.apache.org/jira/browse/FLINK-10941) | Slots prematurely released which still contain unconsumed data |  Critical | Runtime / Coordination | Qi | Andrey Zagrebin |
| [FLINK-11915](https://issues.apache.org/jira/browse/FLINK-11915) | DataInputViewStream skip returns wrong value |  Minor | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Runtime / Task | Andrew Prudhomme | Biao Liu |
| [FLINK-12247](https://issues.apache.org/jira/browse/FLINK-12247) | fix NPE when writing an archive file to a FileSystem |  Major | Deployment / YARN | lamber-ken | lamber-ken |
| [FLINK-12042](https://issues.apache.org/jira/browse/FLINK-12042) | RocksDBStateBackend mistakenly uses default filesystem |  Critical | Runtime / State Backends | Paul Lin | Paul Lin |
| [FLINK-12184](https://issues.apache.org/jira/browse/FLINK-12184) | HistoryServerArchiveFetcher isn't compatible with old version |  Major | Runtime / Coordination | Yumeng Zhang | Congxian Qiu |
| [FLINK-12219](https://issues.apache.org/jira/browse/FLINK-12219) | Yarn application can't stop when flink job failed in per-job yarn cluster mode |  Major | Deployment / YARN, Runtime / REST | lamber-ken | lamber-ken |
| [FLINK-9445](https://issues.apache.org/jira/browse/FLINK-9445) | scala-shell uses plain java command |  Minor | Command Line Client | Andrew Janke | Chesnay Schepler |
| [FLINK-12301](https://issues.apache.org/jira/browse/FLINK-12301) | Scala value classes inside case classes cannot be serialized anymore in Flink 1.8.0 |  Major | API / Scala | Michael | Aljoscha Krettek |
| [FLINK-12260](https://issues.apache.org/jira/browse/FLINK-12260) | Slot allocation failure by taskmanager registration timeout and race |  Critical | Runtime / Coordination | Hwanju Kim | Hwanju Kim |
| [FLINK-12375](https://issues.apache.org/jira/browse/FLINK-12375) | flink-container job jar does not have read permissions |  Major | flink-docker | Adam Lamar | Yun Tang |
| [FLINK-12416](https://issues.apache.org/jira/browse/FLINK-12416) | Docker build script fails on symlink creation ln -s |  Major | flink-docker | Slava D | Yun Tang |
| [FLINK-12296](https://issues.apache.org/jira/browse/FLINK-12296) | Data loss silently in RocksDBStateBackend when more than one operator(has states) chained in a single task |  Blocker | Runtime / State Backends | Congxian Qiu | Congxian Qiu |
| [FLINK-12688](https://issues.apache.org/jira/browse/FLINK-12688) | Make serializer lazy initialization thread safe in StateDescriptor |  Blocker | API / DataStream, API / Type Serialization System | Yu Li | Yu Li |
| [FLINK-11987](https://issues.apache.org/jira/browse/FLINK-11987) | Kafka producer occasionally throws NullpointerException |  Blocker | Connectors / Kafka | LIU Xiao | Yu Li |
| [FLINK-12547](https://issues.apache.org/jira/browse/FLINK-12547) | Deadlock when the task thread downloads jars using BlobClient |  Major | Runtime / Coordination | Haibo Sun | Haibo Sun |
| [FLINK-12544](https://issues.apache.org/jira/browse/FLINK-12544) | Deadlock while releasing memory and requesting segment concurrent in SpillableSubpartition |  Major | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12740](https://issues.apache.org/jira/browse/FLINK-12740) | SpillableSubpartitionTest deadlocks on Travis |  Major | Runtime / Network | Chesnay Schepler | Zhijiang |
| [FLINK-12646](https://issues.apache.org/jira/browse/FLINK-12646) | Use reserved IP as unrouteable IP in RestClientTest |  Minor | Runtime / REST | Victor Wong | Victor Wong |
| [FLINK-10455](https://issues.apache.org/jira/browse/FLINK-10455) | Potential Kafka producer leak in case of failures |  Critical | Connectors / Kafka | Nico Kruber | Jiangjie Qin |
| [FLINK-11107](https://issues.apache.org/jira/browse/FLINK-11107) | Avoid memory stateBackend to create arbitrary folders under HA path when no checkpoint path configured |  Blocker | Runtime / Checkpointing | Yun Tang | Yun Tang |
| [FLINK-12835](https://issues.apache.org/jira/browse/FLINK-12835) | Time conversion is wrong in ManualClock |  Minor | Tests | BoWang | BoWang |
| [FLINK-11059](https://issues.apache.org/jira/browse/FLINK-11059) | JobMaster may continue using an invalid slot if releasing idle slot meet a timeout |  Critical | Runtime / Coordination | shuai.xu | shuai.xu |
| [FLINK-12297](https://issues.apache.org/jira/browse/FLINK-12297) | Make ClosureCleaner recursive |  Blocker | API / DataSet, API / DataStream | Dawid Wysakowicz | Aitozi |
| [FLINK-12871](https://issues.apache.org/jira/browse/FLINK-12871) | Wrong SSL setup examples in docs |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-12896](https://issues.apache.org/jira/browse/FLINK-12896) | TaskCheckpointStatisticDetailsHandler uses wrong value for JobID when archiving |  Major | Runtime / REST | xymaqingxiang | xymaqingxiang |
| [FLINK-12863](https://issues.apache.org/jira/browse/FLINK-12863) | Race condition between slot offerings and AllocatedSlotReport |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-12865](https://issues.apache.org/jira/browse/FLINK-12865) | State inconsistency between RM and TM on the slot status |  Major | Runtime / Coordination | Yun Gao | Till Rohrmann |
| [FLINK-12895](https://issues.apache.org/jira/browse/FLINK-12895) | TaskManagerProcessFailureBatchRecoveryITCase.testTaskManagerProcessFailure failed on travis |  Critical | Runtime / Coordination, Tests | Haibo Sun | Till Rohrmann |
| [FLINK-12957](https://issues.apache.org/jira/browse/FLINK-12957) | Fix thrift and protobuf dependency examples in documentation |  Minor | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13655](https://issues.apache.org/jira/browse/FLINK-13655) | Caused by: java.io.IOException: Thread 'SortMerger spilling thread' terminated due to an exception |  Minor | API / Type Serialization System | LiJun |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12350](https://issues.apache.org/jira/browse/FLINK-12350) | RocksDBStateBackendTest doesn't cover the incremental checkpoint code path |  Major | Runtime / State Backends | Yu Li | Yu Li |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12617](https://issues.apache.org/jira/browse/FLINK-12617) | StandaloneJobClusterEntrypoint should default to random JobID for non-HA setups |  Major | Runtime / Configuration | Konstantin Knauf | Konstantin Knauf |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12460](https://issues.apache.org/jira/browse/FLINK-12460) | Change taskmanager.tmp.dirs to io.tmp.dirs in configuration docs |  Minor | Documentation, Runtime / Configuration | Fabian Hueske | Till Rohrmann |


