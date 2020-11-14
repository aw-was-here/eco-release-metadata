
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

## Release 1.7.3 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11041](https://issues.apache.org/jira/browse/FLINK-11041) | ReinterpretDataStreamAsKeyedStreamITCase.testReinterpretAsKeyedStream failed on Travis |  Critical | Tests | Till Rohrmann | Stefan Richter |
| [FLINK-11886](https://issues.apache.org/jira/browse/FLINK-11886) | Update CLI output in HA docs |  Major | Command Line Client, Documentation, Runtime / Coordination | chunpinghe | chunpinghe |
| [FLINK-11786](https://issues.apache.org/jira/browse/FLINK-11786) | Merge cron branches into respective release branches |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12021](https://issues.apache.org/jira/browse/FLINK-12021) | Let ResultConjunctFuture return future results in same order as futures |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-12020](https://issues.apache.org/jira/browse/FLINK-12020) | Add documentation for mesos-appmaster-job.sh |  Minor | Deployment / Mesos, Documentation | Till Rohrmann | Jacky Yin |
| [FLINK-12169](https://issues.apache.org/jira/browse/FLINK-12169) | Improve Javadoc of MessageAcknowledgingSourceBase |  Minor | Connectors/ RabbitMQ | Konstantin Knauf | Konstantin Knauf |
| [FLINK-11126](https://issues.apache.org/jira/browse/FLINK-11126) | Filter out AMRMToken in the TaskManager credentials |  Minor | Deployment / YARN | Paul Lin | Paul Lin |
| [FLINK-12578](https://issues.apache.org/jira/browse/FLINK-12578) | Use secure URLs for Maven repositories |  Blocker | Build System | Jungtaek Lim | Jungtaek Lim |
| [FLINK-12741](https://issues.apache.org/jira/browse/FLINK-12741) | Update docs about Kafka producer fault tolerance guarantees |  Trivial | Documentation | Paul Lin | Paul Lin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11584](https://issues.apache.org/jira/browse/FLINK-11584) | ConfigDocsCompletenessITCase fails DescriptionBuilder#linebreak() is used |  Major | Documentation | Nico Kruber | Chesnay Schepler |
| [FLINK-11585](https://issues.apache.org/jira/browse/FLINK-11585) | Prefix matching in ConfigDocsGenerator can result in wrong assignments |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11424](https://issues.apache.org/jira/browse/FLINK-11424) | DatadogHttpReporter throws ConcurrentModificationException if gauge throws exception or returns a non-numeric value |  Major | Runtime / Metrics | lining | lining |
| [FLINK-10964](https://issues.apache.org/jira/browse/FLINK-10964) | sql-client throws exception when paging through finished batch query |  Major | Table SQL / Client | Seth Wiesman | vinoyang |
| [FLINK-11690](https://issues.apache.org/jira/browse/FLINK-11690) | Use configured RPC timeout in MiniCluster |  Major | Runtime / Task | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11745](https://issues.apache.org/jira/browse/FLINK-11745) | TTL end-to-end test restores from the savepoint after the job cancelation |  Major | Runtime / State Backends, Tests | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-9459](https://issues.apache.org/jira/browse/FLINK-9459) | Maven enforcer plugin prevents compilation with HDP's Hadoop |  Major | Build System | Truong Duc Kien |  |
| [FLINK-11823](https://issues.apache.org/jira/browse/FLINK-11823) | TrySerializer#duplicate does not create a proper duplicate |  Major | API / Type Serialization System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-11542](https://issues.apache.org/jira/browse/FLINK-11542) | Missing configuration sections since 1.5 docs |  Major | Documentation | Nico Kruber | Chesnay Schepler |
| [FLINK-11851](https://issues.apache.org/jira/browse/FLINK-11851) | ClusterEntrypoint provides wrong executor to HaServices |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11867](https://issues.apache.org/jira/browse/FLINK-11867) | Fix empty path check in StreamExEnv#readTextFile |  Major | API / DataStream | Tom Goong | Tom Goong |
| [FLINK-11420](https://issues.apache.org/jira/browse/FLINK-11420) | Serialization of case classes containing a Map[String, Any] sometimes throws ArrayIndexOutOfBoundsException |  Blocker | API / Type Serialization System | Jürgen Kreileder | Dawid Wysakowicz |
| [FLINK-11866](https://issues.apache.org/jira/browse/FLINK-11866) | Wrong method name for registering custom types |  Minor | API / Python, Documentation | romano vacca | romano vacca |
| [FLINK-11183](https://issues.apache.org/jira/browse/FLINK-11183) | Heap/NonHeap memory metrics broken |  Major | Runtime / Metrics |  Mario Georgiev | Chesnay Schepler |
| [FLINK-11902](https://issues.apache.org/jira/browse/FLINK-11902) | JarRunHandler wraps all exceptions in a RestHandlerException |  Major | Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11887](https://issues.apache.org/jira/browse/FLINK-11887) | Latency metrics drift apart |  Major | Runtime / Metrics | Suxing Lee | Suxing Lee |
| [FLINK-11855](https://issues.apache.org/jira/browse/FLINK-11855) | Race condition in EmbeddedLeaderService |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-12075](https://issues.apache.org/jira/browse/FLINK-12075) | Not able to submit jobs on YARN when there's a firewall |  Blocker | Deployment / YARN | Richard Deurwaarder | Till Rohrmann |
| [FLINK-12009](https://issues.apache.org/jira/browse/FLINK-12009) | Wrong check message about heartbeat interval for HeartbeatServices |  Trivial | Runtime / Coordination | Bruno Aranda Delgado | vinoyang |
| [FLINK-10941](https://issues.apache.org/jira/browse/FLINK-10941) | Slots prematurely released which still contain unconsumed data |  Critical | Runtime / Coordination | Qi | Andrey Zagrebin |
| [FLINK-11915](https://issues.apache.org/jira/browse/FLINK-11915) | DataInputViewStream skip returns wrong value |  Minor | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Runtime / Task | Andrew Prudhomme | Biao Liu |
| [FLINK-12247](https://issues.apache.org/jira/browse/FLINK-12247) | fix NPE when writing an archive file to a FileSystem |  Major | Deployment / YARN | lamber-ken | lamber-ken |
| [FLINK-12042](https://issues.apache.org/jira/browse/FLINK-12042) | RocksDBStateBackend mistakenly uses default filesystem |  Critical | Runtime / State Backends | Paul Lin | Paul Lin |
| [FLINK-12184](https://issues.apache.org/jira/browse/FLINK-12184) | HistoryServerArchiveFetcher isn't compatible with old version |  Major | Runtime / Coordination | Yumeng Zhang | Congxian Qiu |
| [FLINK-12219](https://issues.apache.org/jira/browse/FLINK-12219) | Yarn application can't stop when flink job failed in per-job yarn cluster mode |  Major | Deployment / YARN, Runtime / REST | lamber-ken | lamber-ken |
| [FLINK-9445](https://issues.apache.org/jira/browse/FLINK-9445) | scala-shell uses plain java command |  Minor | Command Line Client | Andrew Janke | Chesnay Schepler |
| [FLINK-12260](https://issues.apache.org/jira/browse/FLINK-12260) | Slot allocation failure by taskmanager registration timeout and race |  Critical | Runtime / Coordination | Hwanju Kim | Hwanju Kim |
| [FLINK-12296](https://issues.apache.org/jira/browse/FLINK-12296) | Data loss silently in RocksDBStateBackend when more than one operator(has states) chained in a single task |  Blocker | Runtime / State Backends | Congxian Qiu | Congxian Qiu |
| [FLINK-12688](https://issues.apache.org/jira/browse/FLINK-12688) | Make serializer lazy initialization thread safe in StateDescriptor |  Blocker | API / DataStream, API / Type Serialization System | Yu Li | Yu Li |
| [FLINK-11987](https://issues.apache.org/jira/browse/FLINK-11987) | Kafka producer occasionally throws NullpointerException |  Blocker | Connectors / Kafka | LIU Xiao | Yu Li |
| [FLINK-12646](https://issues.apache.org/jira/browse/FLINK-12646) | Use reserved IP as unrouteable IP in RestClientTest |  Minor | Runtime / REST | Victor Wong | Victor Wong |
| [FLINK-10455](https://issues.apache.org/jira/browse/FLINK-10455) | Potential Kafka producer leak in case of failures |  Critical | Connectors / Kafka | Nico Kruber | Jiangjie Qin |
| [FLINK-12835](https://issues.apache.org/jira/browse/FLINK-12835) | Time conversion is wrong in ManualClock |  Minor | Tests | BoWang | BoWang |
| [FLINK-11059](https://issues.apache.org/jira/browse/FLINK-11059) | JobMaster may continue using an invalid slot if releasing idle slot meet a timeout |  Critical | Runtime / Coordination | shuai.xu | shuai.xu |
| [FLINK-12871](https://issues.apache.org/jira/browse/FLINK-12871) | Wrong SSL setup examples in docs |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-12896](https://issues.apache.org/jira/browse/FLINK-12896) | TaskCheckpointStatisticDetailsHandler uses wrong value for JobID when archiving |  Major | Runtime / REST | xymaqingxiang | xymaqingxiang |
| [FLINK-12863](https://issues.apache.org/jira/browse/FLINK-12863) | Race condition between slot offerings and AllocatedSlotReport |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-12865](https://issues.apache.org/jira/browse/FLINK-12865) | State inconsistency between RM and TM on the slot status |  Major | Runtime / Coordination | Yun Gao | Till Rohrmann |
| [FLINK-12895](https://issues.apache.org/jira/browse/FLINK-12895) | TaskManagerProcessFailureBatchRecoveryITCase.testTaskManagerProcessFailure failed on travis |  Critical | Runtime / Coordination, Tests | Haibo Sun | Till Rohrmann |
| [FLINK-12957](https://issues.apache.org/jira/browse/FLINK-12957) | Fix thrift and protobuf dependency examples in documentation |  Minor | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-12889](https://issues.apache.org/jira/browse/FLINK-12889) | Job keeps in FAILING state |  Critical | Runtime / Task | Fan Xinpu | Till Rohrmann |
| [FLINK-12319](https://issues.apache.org/jira/browse/FLINK-12319) | StackOverFlowError in cep.nfa.sharedbuffer.SharedBuffer |  Major | Library / CEP | Marco Pfatschbacher | Liya Fan |
| [FLINK-12736](https://issues.apache.org/jira/browse/FLINK-12736) | ResourceManager may release TM with allocated slots |  Critical | Runtime / Coordination | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-13394](https://issues.apache.org/jira/browse/FLINK-13394) | Use fallback unsafe secure MapR in nightly.sh |  Major | Tests, Travis | Zhenghua Gao | Chesnay Schepler |
| [FLINK-14345](https://issues.apache.org/jira/browse/FLINK-14345) | Snapshot deployments may fail due to MapR HTTPS issue |  Major | Release System | Chesnay Schepler | Chesnay Schepler |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11713](https://issues.apache.org/jira/browse/FLINK-11713) | Remove legacy mode from documentation |  Major | Documentation | Gary Yao | Gary Yao |
| [FLINK-11787](https://issues.apache.org/jira/browse/FLINK-11787) | Add web ui metrics reporting workaround into Flink Kubernetes resource definitions (Flink 1.7) |  Minor | . | Alex | Alex |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12460](https://issues.apache.org/jira/browse/FLINK-12460) | Change taskmanager.tmp.dirs to io.tmp.dirs in configuration docs |  Minor | Documentation, Runtime / Configuration | Fabian Hueske | Till Rohrmann |


