
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
# Apache Flink  1.11.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-15115](https://issues.apache.org/jira/browse/FLINK-15115) | *Major* | **Drop Kafka 0.8/0.9**

The Kafka 0.8 and 0.9 connectors are no longer under active development.


---

* [FLINK-12484](https://issues.apache.org/jira/browse/FLINK-12484) | *Major* | **Drop unnecessary locking for code-paths that now use the mailbox**

Removed deprecated in Flink 1.10 {{getCheckpointLock}} method of the {{org.apache.flink.streaming.runtime.tasks.StreamTask}} class.

Users should use {{MailboxExecutor}} to run actions that require synchronization with the task's thread (e.g. collecting output produced by an external thread). {{MailboxExecutor#yield}} or {{MailboxExecutor#tryYield}} methods can be used for actions that should give control to other actions temporarily, if the current operator is blocked.

{{MailboxExecutor}} can be accessed by using {{YieldingOperatorFactory}}. Example usage can be found in the {{AsyncWaitOperator}}.


---

* [FLINK-15862](https://issues.apache.org/jira/browse/FLINK-15862) | *Major* | **Remove deprecated class KafkaPartitioner and all its usages**

Deprecated KafkaPartitioner was removed. Please see the release notes of 1.3.0 how to migrate from that interface.


---

* [FLINK-16046](https://issues.apache.org/jira/browse/FLINK-16046) | *Major* | **Drop Elasticsearch 2.x connector**

The Elasticsearch 2 connectors is no longer under active development. Prior version of these connectors will continue to work with Flink.


---

* [FLINK-14802](https://issues.apache.org/jira/browse/FLINK-14802) | *Major* | **Multi vectorized read version support for hive orc read**

Support vectorized read of ORC in Hive 1.x versions.


---

* [FLINK-15672](https://issues.apache.org/jira/browse/FLINK-15672) | *Major* | **Switch to Log4j 2 by default**

Flink now uses Log4j2 by default.

Users who wish to revert back to Log4j1 can find instructions to do so in the logging documentation.


---

* [FLINK-15349](https://issues.apache.org/jira/browse/FLINK-15349) | *Critical* | **add "create catalog" DDL to blink planner**

added "CREATE CATALOG" DDL to blink planner to support dynamically loading catalogs


---

* [FLINK-16015](https://issues.apache.org/jira/browse/FLINK-16015) | *Major* | **Refine fallback filesystems to only handle specific filesystems**

By default, if there is an official filesystem plugin for a given schema, it will not be allowed to use fallback filesystem factories (like HADOOP libraries on the classpath) to load it. Added {{fs.allowed-fallback-filesystems}} configuration option to override this behaviour.


---

* [FLINK-16219](https://issues.apache.org/jira/browse/FLINK-16219) | *Major* | **Make AsyncWaitOperator chainable again**

AsyncWaitOperator will be allowed to be chained by default with all operators, except of tasks with SourceFunction. This mostly revert limitation introduced as a bug fix for https://issues.apache.org/jira/browse/FLINK-13063


---

* [FLINK-16362](https://issues.apache.org/jira/browse/FLINK-16362) | *Major* | **Remove deprecated method in StreamTableSink**

This is an incompatible change, the existing StreamTableSinks should remove emitDataStream method.


---

* [FLINK-16400](https://issues.apache.org/jira/browse/FLINK-16400) | *Critical* | **HdfsKindTest.testS3Kind fails in Hadoop 2.4.1 nightly test**

\`org.apache.flink.core.fs.FileSystem#getKind\` method has been formally deprecated, as it was not used by Flink.


---

* [FLINK-16363](https://issues.apache.org/jira/browse/FLINK-16363) | *Major* | **Correct the execution behavior of TableEnvironment and StreamTableEnvironment**

In previous versions, TableEnvironment.execute() and StreamExecutionEnvironment.execute() can both trigger table and DataStream programs. Since 1.11.0, table programs can only be triggered by TableEnvironment.execute(). Once table program is convereted into DataStream program (through toAppendStream() or toRetractStream() method), it can only be triggered by StreamExecutionEnvironment.execute().


---

* [FLINK-11720](https://issues.apache.org/jira/browse/FLINK-11720) | *Critical* | **ES5: ElasticsearchSinkITCase failing**

The ElasticSearch5 connector has been upgraded to version 5.3.3.


---

* [FLINK-15090](https://issues.apache.org/jira/browse/FLINK-15090) | *Major* | **Reverse the dependency from flink-streaming-java to flink-client**

Starting from Flink 1.11.0, the flink-streaming-java module does not have a dependency on flink-clients anymore. If your project was depending on this transitive dependency you now have to add flink-clients as an explicit dependency.


---

* [FLINK-10742](https://issues.apache.org/jira/browse/FLINK-10742) | *Major* | **Let Netty use Flink's buffers directly in credit-based mode**

After FLINK-10742, while reading data stream from network on receiver side, it would reuse the Flink's buffers directly to avoid extra copy from Netty's ByteBuf to Flink's buffer. Therefore the Netty internal memory overhead is greatly reduced, which can solve the potential direct OutOfMemoryError specially in large-scale jobs.


---

* [FLINK-16586](https://issues.apache.org/jira/browse/FLINK-16586) | *Major* | **Build ResultSubpartitionInfo and InputChannelInfo in respective constructors**

The argument type of methods inside ShuffleEnvironment#createInputGates and #createResultPartitionWriters are adjusted from \`Collection\` to \`List\` for satisfying the order guarantee requirement in unaligned checkpoint.
It will break the compatibility if users already implemented a custom ShuffleService based on ShuffleServiceFactory interface proposed from release-1.8.


---

* [FLINK-16471](https://issues.apache.org/jira/browse/FLINK-16471) | *Major* | **develop PostgresCatalog**

added JDBCCatalog and PostgresCatalog. They help Flink connect to relational databases and leverage their metadata for SQL jobs, save users time from manually typing in table schemas and other metadata.


---

* [FLINK-15911](https://issues.apache.org/jira/browse/FLINK-15911) | *Blocker* | **Flink does not work over NAT**

Flink now supports working over NAT networks, by configuring separated external and local bind addresses/ports.

The following configuration options will be used for external addresses/ports.
\* jobmanager.rpc.address
\* jobmanager.rpc.port
\* taskmanager.host
\* taskmanager.rpc.port
\* taskmanager.data.port

The following configuration options will be used for local bind addresses/ports.
\* jobmanager.bind-host
\* jobmanager.rpc.bind-port
\* taskmanager.bind-host
\* taskmanager.rpc.bind-port
\* taskmanager.data.bind-port

Note: Currently, the new feature does not work with queryable state.
Note: If hostname is used for the external address of a Flink process (JM/TM), it is required to be resolvable from all the other processes (excluding itself).


---

* [FLINK-15438](https://issues.apache.org/jira/browse/FLINK-15438) | *Minor* | **Counter metrics are incorrectly reported as total counts to DataDog**

The DataDog metrics reporter now reports counts as the number of events over the reporting interval, instead of the total count. This aligns the count semantics with the DataDog documentation.


---

* [FLINK-6258](https://issues.apache.org/jira/browse/FLINK-6258) | *Major* | **Deprecate ListCheckpointed interface**

The \`ListCheckpointed\` interface has been deprecated because it uses Java Serialization for checkpointing state which is problematic for savepoint compatibility. Use the \`CheckpointedFunction\` interface instead, which gives more control over state serialization.


---

* [FLINK-16913](https://issues.apache.org/jira/browse/FLINK-16913) | *Blocker* | **ReadableConfigToConfigurationAdapter#getEnum throws UnsupportedOperationException**

Starting from 1.11 the StateBackendFactory#createFromConfig interface now takes ReadableConfig instead of Configuration. A configuration class is still a valid argument to that method, as it implements the ReadableConfig interface. Implementors of custom StateBackends should adjust their implementations.


---

* [FLINK-16535](https://issues.apache.org/jira/browse/FLINK-16535) | *Major* | **BatchTableSink#emitDataSet returns DataSink**

This is an incompatible change, the existing BatchTableSinks should rename emitDataSet to consumeDataSet and return DataSink.


---

* [FLINK-16864](https://issues.apache.org/jira/browse/FLINK-16864) | *Major* | **Add idle metrics for Task**

Added idleTime metric for Tasks


---

* [FLINK-16303](https://issues.apache.org/jira/browse/FLINK-16303) | *Major* | **Add Rest Handler to list JM Logfiles and enable reading Logs by Filename**

Requesting an unavailable log or stdout file from the JobManager's HTTP server returns status code 404 now. In previous releases, the HTTP server would return a file with '(file unavailable)' as its content.


---

* [FLINK-16820](https://issues.apache.org/jira/browse/FLINK-16820) | *Major* | **support reading timestamp, data, and time in JDBCTableSource**

JDBCTableSource right now supports reading timestamp, data, and time types


---

* [FLINK-16683](https://issues.apache.org/jira/browse/FLINK-16683) | *Blocker* | **Remove scripts for starting Flink on Windows**

Flink no longer supports starting clusters with .bat scripts. Users should instead use environments like WSL or Cygwin and work with the .sh scripts.


---

* [FLINK-17126](https://issues.apache.org/jira/browse/FLINK-17126) | *Major* | **Correct the execution behavior of BatchTableEnvironment**

In previous versions, BatchTableEnvironment.execute() and ExecutionEnvironment.execute() can both trigger table and DataSet programs for legacy batch planner. Since 1.11.0, batch table programs can only be triggered by BatchEnvironment.execute(). Once table program is convereted into DataSet program (through toDataSet() method), it can only be triggered by ExecutionEnvironment.execute().


---

* [FLINK-17236](https://issues.apache.org/jira/browse/FLINK-17236) | *Major* | **Add new Training section to Documentation**

Added a section of Hands-on Tutorials to the documentation.


---

* [FLINK-16404](https://issues.apache.org/jira/browse/FLINK-16404) | *Major* | **Avoid caching buffers for blocked input channels before barrier alignment**

Note that the metric of \`lastCheckpointAlignmentBuffered\` has been removed in this ticket, because the upstream task will not send any following data after barrier until alignment on downstream side. But this info in web UI still exists and always shows 0 now. We will also remove it from UI in a follow-up separate ticket future.


---

* [FLINK-16645](https://issues.apache.org/jira/browse/FLINK-16645) | *Major* | **Limit the maximum backlogs in subpartitions for data skew case**

Added new config parameter {{taskmanager.network.memory.max-buffers-per-channel}} to limit potential data skew if {{taskmanager.network.memory.floating-buffers-per-gate}} is configured to a high value.


---

* [FLINK-14816](https://issues.apache.org/jira/browse/FLINK-14816) | *Major* | **Add thread dump feature for taskmanager**

It is now possible to create and view the thread dump of a \`TaskExecutor\` through Flink's web ui. The thread dump view can be found under \`Task Managers -\> Task Manager -\> Thread Dump tab\`.


---

* [FLINK-16408](https://issues.apache.org/jira/browse/FLINK-16408) | *Critical* | **Bind user code class loader to lifetime of a slot**

The user code class loader is being reused by the \`TaskExecutor\` as long as there is at least a single slot allocated for the respective job. This changes Flink's recovery behaviour slightly so that it will not reload static fields. The benefit is that this change drastically reduces pressure on the JVM's metaspace.


---

* [FLINK-11086](https://issues.apache.org/jira/browse/FLINK-11086) | *Major* | **Add support for Hadoop 3**

Flink now supports Hadoop versions above Hadoop 3.0.0.

Note that the Flink project does not provide any updated "flink-shaded-hadoop-\*" jars. Users need to provide Hadoop dependencies through the HADOOP\_CLASSPATH environment variable (recommended) or the lib/ folder.
Also, the "include-hadoop" Maven profile has been removed.


---

* [FLINK-17350](https://issues.apache.org/jira/browse/FLINK-17350) | *Critical* | **StreamTask should always fail immediately on failures in synchronous part of a checkpoint**

Failures in synchronous part of checkpointing (like an exceptions thrown by an operator) will fail it's Task (and job) immediately, regardless of the configuration parameters. Since Flink 1.5 such failures could be ignored by setting \`setTolerableCheckpointFailureNumber(...)\` or its deprecated \`setFailTaskOnCheckpointError(...)\` predecessor. Now both options will only affect asynchronous failures.


---

* [FLINK-15629](https://issues.apache.org/jira/browse/FLINK-15629) | *Major* | **Remove LegacyScheduler class and the consequently unused codes after this removal**

Flink no longer supports the legacy scheduler. Hence, setting \`jobmanager.scheduler: legacy\` will no longer work and fail with an \`IllegalArgumentException\`. The only valid option for \`jobmanager.scheduler\` is the default value \`ng\`.


---

* [FLINK-5763](https://issues.apache.org/jira/browse/FLINK-5763) | *Critical* | **Make savepoints self-contained and relocatable**

After FLINK-5763, we made savepoint self-contained and relocatable so that users can migrate savepoint from one place to another without any other processing manually. Currently do not support this feature after Entropy Injection enabled.


---

* [FLINK-16963](https://issues.apache.org/jira/browse/FLINK-16963) | *Major* | **Convert all MetricReporters to plugins**

All MetricReporters that come with Flink have been converted to plugins.
They should no longer be placed into /lib (doing so may result in dependency conflicts!), but /plugins/\<some\_directory\> instead.


---

* [FLINK-17520](https://issues.apache.org/jira/browse/FLINK-17520) | *Critical* | **Extend CompositeTypeSerializerSnapshot to allow composite serializers to signal migration based on outer configuration**

The \`boolean isOuterSnapshotCompatible(TypeSerializer)\` on the \`CompositeTypeSerializerSnapshot\` class has been deprecated, in favor of a new \`OuterSchemaCompatibility resolveOuterSchemaCompatibility(TypeSerializer)\` method. Please implement that instead. Compared to the old method, the new method allows composite serializers to signal state schema migration based on outer schema and configuration.


---

* [FLINK-17527](https://issues.apache.org/jira/browse/FLINK-17527) | *Major* | **kubernetes-session.sh uses log4j-console.properties**

The logging properties files \`log4j-yarn-session.properties\` and \`logback-yarn.xml\` haven been renamed into \`log4j-session.properties\` and \`logback-session.xml\`. Moreover, \`yarn-session.sh\` and \`kubernetes-session.sh\` use these logging properties files.


---

* [FLINK-15947](https://issues.apache.org/jira/browse/FLINK-15947) | *Major* | **Finish moving scala expression DSL to flink-table-api-scala**

Due to various issues with packages {{org.apache.flink.table.api.scala/java}} all classes from those packages were relocated. Moreover the scala expressions were moved to org.apache.flink.table.api as anounced in Flink 1.9.

If you used one of 
\* {{org.apache.flink.table.api.java.StreamTableEnvironment}}
\* {{org.apache.flink.table.api.scala.StreamTableEnvironment}}
\* {{org.apache.flink.table.api.java.BatchTableEnvironment}}
\* {{org.apache.flink.table.api.scala.BatchTableEnvironment}}

and you do not convert to/from DataStream switch to:
\* {{org.apache.flink.table.api.TableEnvironment}}

If you do convert to/from DataStream/DataSet change your imports to one of:
\* {{org.apache.flink.table.api.bridge.java.StreamTableEnvironment}}
\* {{org.apache.flink.table.api.bridge.scala.StreamTableEnvironment}}
\* {{org.apache.flink.table.api.bridge.java.BatchTableEnvironment}}
\* {{org.apache.flink.table.api.bridge.scala.BatchTableEnvironment}}

For the Scala expressions use the import:
{{org.apache.flink.table.api.\_}} instead of {{org.apache.flink.table.api.bridge.scala.\_}}

additionally if you use Scala's implicit conversions to/from DataStream/DataSet import
{{org.apache.flink.table.api.bridge.scala.\_}} instead of {{org.apache.flink.table.api.scala.\_}}


---

* [FLINK-16605](https://issues.apache.org/jira/browse/FLINK-16605) | *Major* | **Add max limitation to the total number of slots**

With FLINK-16605, user could define the maximum number of slots through "slotmanager.number-of-slots.max" that the Flink cluster allocates.

This is meant for limiting the resource consumption for batch workloads. It is not recommended to configure this option for streaming workloads, which may fail if there are not enough slots. Note that this configuration option does not take effect for standalone clusters, where how many slots are allocated is not controlled by Flink.


---

* [FLINK-17351](https://issues.apache.org/jira/browse/FLINK-17351) | *Critical* | **CheckpointCoordinator and CheckpointFailureManager ignores checkpoint timeouts**

Checkpoint timeouts will now be treated as normal checkpoint failures and checked against \`setTolerableCheckpointFailureNumber(...)\`.


---

* [FLINK-16934](https://issues.apache.org/jira/browse/FLINK-16934) | *Major* | **Change default planner to blink**

The default table planner has been changed to blink


---

* [FLINK-16998](https://issues.apache.org/jira/browse/FLINK-16998) | *Major* | **Add a changeflag to Row type**

An additional change flag called \`RowKind\` was added to the \`Row\` type. This changed the serialization format and will trigger a state migration.


---

* [FLINK-18173](https://issues.apache.org/jira/browse/FLINK-18173) | *Blocker* | **Bundle flink-csv and flink-json jars in lib**

There is no need to download manually jar files for \`flink-csv\` and \`flink-json\` as they are now bundled in the \`lib\` folder.


---

* [FLINK-18307](https://issues.apache.org/jira/browse/FLINK-18307) | *Major* | **Replace "slave" file name with "workers"**

For Standalone Setups, the file with the worker nodes is no longer called "slaves", but "workers".
Previous setups that use the "start-cluster.sh" and "stop-cluster.sh" scripts simply need to rename that file.


---

* [FLINK-17376](https://issues.apache.org/jira/browse/FLINK-17376) | *Critical* | **Remove deprecated state access methods**

We removed deprecated state access methods \`RuntimeContext.getFoldingState(...)\`, \`OperatorStateStore.getSerializableListState(...)\`, and \`OperatorStateStore.getOperatorState(...)\`. This means that some code that was compiled against Flink 1.10 will not work with a Flink 1.11 cluster. An example of this is our Kafka connector which internally used \`OperatorStateStore.getSerializableListState\`.


---

* [FLINK-18242](https://issues.apache.org/jira/browse/FLINK-18242) | *Major* | **Custom OptionsFactory settings seem to have no effect on RocksDB**

After FLINK-18242, the deprecated \`OptionsFactory\` and \`ConfigurableOptionsFactory\` classes are removed (not applicable for release-1.10), please use \`RocksDBOptionsFactory\` and \`ConfigurableRocksDBOptionsFactory\` instead. Please also recompile your application codes if any class extending \`DefaultConfigurableOptionsFactory\`.


---

* [FLINK-17800](https://issues.apache.org/jira/browse/FLINK-17800) | *Critical* | **RocksDB optimizeForPointLookup results in missing time windows**

After FLINK-17800 by default we will set \`setTotalOrderSeek\` to true for RocksDB's \`ReadOptions\`, to prevent user from miss using \`optimizeForPointLookup\`. Meantime we support customizing \`ReadOptions\` through \`RocksDBOptionsFactory\`. Please set \`setTotalOrderSeek\` back to false if any performance regression observed (normally won't happen according to our testing).


---

* [FLINK-16614](https://issues.apache.org/jira/browse/FLINK-16614) | *Major* | **FLIP-116 Unified Memory Configuration for Job Manager**

see comment: https://issues.apache.org/jira/browse/FLINK-16614?focusedCommentId=17117630&page=com.atlassian.jira.plugin.system.issuetabpanels%3Acomment-tabpanel#comment-17117630



