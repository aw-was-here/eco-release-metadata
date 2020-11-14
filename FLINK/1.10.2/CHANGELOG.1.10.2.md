
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

## Release 1.10.2 - 2020-08-21



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-17844](https://issues.apache.org/jira/browse/FLINK-17844) | Activate japicmp-maven-plugin checks for @PublicEvolving between bug fix releases (x.y.u -\> x.y.v) |  Critical | Build System | Till Rohrmann | Chesnay Schepler |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-17248](https://issues.apache.org/jira/browse/FLINK-17248) | Make the thread nums of io executor of ClusterEntrypoint and MiniCluster configurable |  Major | Runtime / Checkpointing, Runtime / Coordination | Yun Tang | Yun Tang |
| [FLINK-17819](https://issues.apache.org/jira/browse/FLINK-17819) | Yarn error unhelpful when forgetting HADOOP\_CLASSPATH |  Critical | Deployment / YARN | Arvid Heise | Kostas Kloudas |
| [FLINK-18010](https://issues.apache.org/jira/browse/FLINK-18010) | Add more logging to HistoryServer |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17970](https://issues.apache.org/jira/browse/FLINK-17970) | Increase default value of IO pool executor to 4 \* #cores |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-17945](https://issues.apache.org/jira/browse/FLINK-17945) | Improve error reporting of Python CI tests |  Major | API / Python, Tests | Robert Metzger | Dian Fu |
| [FLINK-16217](https://issues.apache.org/jira/browse/FLINK-16217) | SQL Client crashed when any uncatched exception is thrown |  Critical | Table SQL / Client | Jark Wu | godfrey he |
| [FLINK-16225](https://issues.apache.org/jira/browse/FLINK-16225) | Metaspace Out Of Memory should be handled as Fatal Error in TaskManager |  Critical | Runtime / Task | Stephan Ewen | Andrey Zagrebin |
| [FLINK-16717](https://issues.apache.org/jira/browse/FLINK-16717) | Use headless service for rpc and blob port when flink on K8S |  Major | Deployment / Kubernetes | vanderliang | vanderliang |
| [FLINK-18501](https://issues.apache.org/jira/browse/FLINK-18501) | Mapping of Pluggable Filesystems to scheme is not properly logged |  Minor | FileSystems | Fabian Paul | Fabian Paul |
| [FLINK-18644](https://issues.apache.org/jira/browse/FLINK-18644) | Remove obsolete doc for hive connector |  Minor | Connectors / Hive, Documentation | Rui Li | Rui Li |
| [FLINK-18772](https://issues.apache.org/jira/browse/FLINK-18772) | Hide submit job web ui elements when running in per-job/application mode |  Minor | Runtime / Web Frontend | Till Rohrmann | Till Rohrmann |
| [FLINK-16619](https://issues.apache.org/jira/browse/FLINK-16619) | Misleading SlotManagerImpl logging for slot reports of unknown task manager |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17503](https://issues.apache.org/jira/browse/FLINK-17503) | Make memory configuration logging more user-friendly |  Major | Runtime / Coordination | Till Rohrmann | Matthias |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13689](https://issues.apache.org/jira/browse/FLINK-13689) | Rest High Level Client for Elasticsearch6.x connector leaks threads if no connection could be established |  Major | Connectors / ElasticSearch | Rishindra Kumar | static-max |
| [FLINK-17420](https://issues.apache.org/jira/browse/FLINK-17420) | Cannot alias Tuple and Row fields when converting DataStream to Table |  Major | Table SQL / API | Gyula Fora | Leonard Xu |
| [FLINK-17555](https://issues.apache.org/jira/browse/FLINK-17555) | docstring of pyflink.table.descriptors.FileSystem:1:duplicate object description of pyflink.table.descriptors.FileSystem |  Major | API / Python | Piotr Nowojski | Shuiqiang Chen |
| [FLINK-17092](https://issues.apache.org/jira/browse/FLINK-17092) | Pyflink test BlinkStreamDependencyTests is instable |  Major | API / Python, Tests | Zhijiang | Shuiqiang Chen |
| [FLINK-16346](https://issues.apache.org/jira/browse/FLINK-16346) | BlobsCleanupITCase.testBlobServerCleanupCancelledJob fails on Travis |  Critical | Runtime / Coordination | Till Rohrmann | Chesnay Schepler |
| [FLINK-17562](https://issues.apache.org/jira/browse/FLINK-17562) | POST /jars/:jarid/plan is not working |  Minor | Documentation, Runtime / Web Frontend | AT-Fieldless | Nicholas Jiang |
| [FLINK-17578](https://issues.apache.org/jira/browse/FLINK-17578) | Union of 2 SideOutputs behaviour incorrect |  Major | API / DataStream | Tom Wells | Danish Amjad |
| [FLINK-17643](https://issues.apache.org/jira/browse/FLINK-17643) | LaunchCoordinatorTest fails |  Major | Deployment / Mesos | Arvid Heise | Till Rohrmann |
| [FLINK-17700](https://issues.apache.org/jira/browse/FLINK-17700) | The callback client of JavaGatewayServer should run in a daemon thread |  Major | API / Python | Shuiqiang Chen | Shuiqiang Chen |
| [FLINK-15758](https://issues.apache.org/jira/browse/FLINK-15758) | Investigate potential out-of-memory problems due to managed unsafe memory allocation |  Critical | Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-17809](https://issues.apache.org/jira/browse/FLINK-17809) | BashJavaUtil script logic does not work for paths with spaces |  Major | Deployment / Scripts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17763](https://issues.apache.org/jira/browse/FLINK-17763) | No log files when starting scala-shell |  Minor | Scala Shell | Jeff Zhang | Chesnay Schepler |
| [FLINK-14894](https://issues.apache.org/jira/browse/FLINK-14894) | HybridOffHeapUnsafeMemorySegmentTest#testByteBufferWrap failed on Travis |  Critical | Runtime / Network, Tests | Gary Yao | Andrey Zagrebin |
| [FLINK-14369](https://issues.apache.org/jira/browse/FLINK-14369) | KafkaProducerAtLeastOnceITCase\>KafkaProducerTestBase.testOneToOneAtLeastOnceCustomOperator fails on Travis |  Critical | Connectors / Kafka | Till Rohrmann | Shuiqiang Chen |
| [FLINK-17801](https://issues.apache.org/jira/browse/FLINK-17801) | TaskExecutorTest.testHeartbeatTimeoutWithResourceManager timeout |  Critical | Runtime / Coordination, Tests | Robert Metzger | Till Rohrmann |
| [FLINK-17822](https://issues.apache.org/jira/browse/FLINK-17822) | Nightly Flink CLI end-to-end test failed with "JavaGcCleanerWrapper$PendingCleanersRunner cannot access class jdk.internal.misc.SharedSecrets" in Java 11 |  Blocker | Runtime / Task, Tests | Dian Fu | Andrey Zagrebin |
| [FLINK-17870](https://issues.apache.org/jira/browse/FLINK-17870) | dependent jars are missing to be shipped to cluster in scala shell |  Major | Scala Shell | Jeff Zhang | Jeff Zhang |
| [FLINK-17558](https://issues.apache.org/jira/browse/FLINK-17558) | Partitions are released in TaskExecutor Main Thread |  Critical | Runtime / Coordination | Gary Yao | Chesnay Schepler |
| [FLINK-17744](https://issues.apache.org/jira/browse/FLINK-17744) | StreamContextEnvironment#execute cannot be call JobListener#onJobExecuted |  Major | Client / Job Submission | Echo Lee | Echo Lee |
| [FLINK-18035](https://issues.apache.org/jira/browse/FLINK-18035) | Executors#newCachedThreadPool could not work as expected |  Blocker | Runtime / Coordination | Yang Wang | Chesnay Schepler |
| [FLINK-18008](https://issues.apache.org/jira/browse/FLINK-18008) | HistoryServer does not log environment information on startup |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18012](https://issues.apache.org/jira/browse/FLINK-18012) | Deactivate slot timeout if TaskSlotTable.tryMarkSlotActive is called |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-17959](https://issues.apache.org/jira/browse/FLINK-17959) | Exception: "CANCELLED: call already cancelled" is thrown when run python udf |  Major | API / Python | Hequn Cheng | Dian Fu |
| [FLINK-16451](https://issues.apache.org/jira/browse/FLINK-16451) | Fix IndexOutOfBoundsException for DISTINCT AGG with constants |  Critical | Table SQL / Planner | jinfeng | Jark Wu |
| [FLINK-17466](https://issues.apache.org/jira/browse/FLINK-17466) | toRetractStream doesn't work correctly with Pojo conversion class |  Critical | Table SQL / Planner | Gyula Fora | Jark Wu |
| [FLINK-18048](https://issues.apache.org/jira/browse/FLINK-18048) | "--host" option could not take effect for standalone application cluster |  Critical | Deployment / Scripts | Yang Wang | Yang Wang |
| [FLINK-18045](https://issues.apache.org/jira/browse/FLINK-18045) | Fix Kerberos credentials checking to unblock Flink on secured MapR |  Critical | Deployment / YARN | Bart Krasinski | Bart Krasinski |
| [FLINK-15849](https://issues.apache.org/jira/browse/FLINK-15849) | Update SQL-CLIENT document from type to data-type |  Blocker | Documentation, Table SQL / API | Jingsong Lee | Danny Chen |
| [FLINK-17788](https://issues.apache.org/jira/browse/FLINK-17788) | scala shell in yarn mode is broken |  Major | Scala Shell | Jeff Zhang | Kostas Kloudas |
| [FLINK-18241](https://issues.apache.org/jira/browse/FLINK-18241) | Custom OptionsFactory in user code not working when configured via flink-conf.yaml |  Major | Runtime / Configuration, Runtime / State Backends | Nico Kruber | Dawid Wysakowicz |
| [FLINK-18223](https://issues.apache.org/jira/browse/FLINK-18223) | AvroSerializer does not correctly instantiate GenericRecord |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Lorenzo Nicora | Lorenzo Nicora |
| [FLINK-16432](https://issues.apache.org/jira/browse/FLINK-16432) | Building Hive connector gives problems |  Blocker | Connectors / Hive | Niels Basjes | Arvid Heise |
| [FLINK-17891](https://issues.apache.org/jira/browse/FLINK-17891) |  FlinkYarnSessionCli sets wrong execution.target type |  Major | Command Line Client, Deployment / YARN | Shangwen Tang | Kostas Kloudas |
| [FLINK-17322](https://issues.apache.org/jira/browse/FLINK-17322) | Enable latency tracker would corrupt the broadcast state |  Major | Runtime / Network | Yun Tang | Arvid Heise |
| [FLINK-18329](https://issues.apache.org/jira/browse/FLINK-18329) | Dist NOTICE issues |  Blocker | Build System, Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18242](https://issues.apache.org/jira/browse/FLINK-18242) | Custom OptionsFactory settings seem to have no effect on RocksDB |  Major | Runtime / State Backends | Nico Kruber | Yu Li |
| [FLINK-18352](https://issues.apache.org/jira/browse/FLINK-18352) | org.apache.flink.core.execution.DefaultExecutorServiceLoader not thread safe |  Major | Client / Job Submission | Marcos Klein | Kostas Kloudas |
| [FLINK-17639](https://issues.apache.org/jira/browse/FLINK-17639) | Document which FileSystems are supported by the StreamingFileSink |  Major | Documentation | Kostas Kloudas | Guowei Ma |
| [FLINK-18168](https://issues.apache.org/jira/browse/FLINK-18168) | Error results when use UDAF with Object Array return type |  Major | Table SQL / Runtime | Zou | Zou |
| [FLINK-17800](https://issues.apache.org/jira/browse/FLINK-17800) | RocksDB optimizeForPointLookup results in missing time windows |  Critical | Runtime / State Backends | Yordan Pavlov | Yun Tang |
| [FLINK-18297](https://issues.apache.org/jira/browse/FLINK-18297) | SQL client: setting execution.type to invalid value shuts down the session |  Major | Table SQL / Client | David Anderson |  |
| [FLINK-16309](https://issues.apache.org/jira/browse/FLINK-16309) | ElasticSearch 7 connector is missing in SQL connector list |  Major | Documentation, Table SQL / Ecosystem | Fabian Hueske | Leonard Xu |
| [FLINK-18097](https://issues.apache.org/jira/browse/FLINK-18097) | History server doesn't clean all job json files |  Minor | Runtime / REST | Milan Nikl |  |
| [FLINK-18539](https://issues.apache.org/jira/browse/FLINK-18539) | StreamExecutionEnvironment#addSource(SourceFunction, TypeInformation) doesn't use the user defined type information |  Critical | API / DataStream | Jark Wu | Jark Wu |
| [FLINK-18517](https://issues.apache.org/jira/browse/FLINK-18517) | kubernetes session test failed with "java.net.SocketException: Broken pipe" |  Critical | Deployment / Kubernetes, Tests | Dian Fu | Yang Wang |
| [FLINK-18595](https://issues.apache.org/jira/browse/FLINK-18595) | Deadlock during job shutdown |  Critical | Runtime / Network | Dian Fu | Zhijiang |
| [FLINK-18663](https://issues.apache.org/jira/browse/FLINK-18663) | RestServerEndpoint may prevent server shutdown |  Critical | Runtime / REST | tartarus | tartarus |
| [FLINK-18677](https://issues.apache.org/jira/browse/FLINK-18677) | ZooKeeperLeaderRetrievalService does not invalidate leader in case of SUSPENDED connection |  Major | Runtime / Coordination | Till Rohrmann | Matthias |
| [FLINK-16510](https://issues.apache.org/jira/browse/FLINK-16510) | Task manager safeguard shutdown may not be reliable |  Major | Runtime / Task | Maximilian Michels | Maximilian Michels |
| [FLINK-18702](https://issues.apache.org/jira/browse/FLINK-18702) | Flink elasticsearch connector leaks threads and classloaders thereof |  Major | Connectors / ElasticSearch | Jun Qin | Jun Qin |
| [FLINK-18859](https://issues.apache.org/jira/browse/FLINK-18859) | ExecutionGraphNotEnoughResourceTest.testRestartWithSlotSharingAndNotEnoughResources failed with "Condition was not met in given timeout." |  Critical | Runtime / Coordination, Tests | Dian Fu | Zhu Zhu |
| [FLINK-18821](https://issues.apache.org/jira/browse/FLINK-18821) | Netty client retry mechanism may cause PartitionRequestClientFactory#createPartitionRequestClient to wait infinitely |  Major | Runtime / Network | Caizhi Weng | Roman Khachatryan |
| [FLINK-18902](https://issues.apache.org/jira/browse/FLINK-18902) | Cannot serve results of asynchronous REST operations in per-job mode |  Blocker | Runtime / REST | Till Rohrmann | Till Rohrmann |
| [FLINK-18646](https://issues.apache.org/jira/browse/FLINK-18646) | Managed memory released check can block RPC thread |  Critical | Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-15836](https://issues.apache.org/jira/browse/FLINK-15836) | Throw fatal error in KubernetesResourceManager when the pods watcher is closed with exception |  Major | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-16160](https://issues.apache.org/jira/browse/FLINK-16160) | Schema#proctime and Schema#rowtime don't work in TableEnvironment#connect code path |  Critical | Table SQL / API | Zhenghua Gao | Zhenghua Gao |


