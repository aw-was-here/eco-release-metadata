
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
# Apache Flink  1.10.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-13127](https://issues.apache.org/jira/browse/FLINK-13127) | *Major* | **"--yarnship" doesn't support resource classloading**

This change orders the shipped files wrt to resources and jar files as well as alphabetically in these groups.


---

* [FLINK-13697](https://issues.apache.org/jira/browse/FLINK-13697) | *Major* | **Drop deprecated ExternalCatalog API**

The deprecated ExternalCatalog API was dropped. This includes:
\* ExternalCatalog (and all dependent classes e.g. ExternalTable)
\* SchematicDescriptor, MetadataDescriptor, StatisticsDescriptor
Those were replaced with the new Catalog API


---

* [FLINK-9787](https://issues.apache.org/jira/browse/FLINK-9787) | *Minor* | **Change ExecutionConfig#getGlobalJobParameters to return an instance of GlobalJobParameters instead of null if no custom globalJobParameters are set yet**

The \`ExecutionConfig#setGlobalJobParameters\` only accepts non null argument values.


---

* [FLINK-12847](https://issues.apache.org/jira/browse/FLINK-12847) | *Major* | **Update Kinesis Connectors to latest Apache licensed libraries**

After FLINK-12847 flink-connector-kinesis is officially of Apache 2.0 license and its artifact will be deployed to Maven central as part of Flink releases. Users can use the artifact out of shelf and no longer have to build and maintain it on their own.


---

* [FLINK-13921](https://issues.apache.org/jira/browse/FLINK-13921) | *Major* | **Simplify cluster level RestartStrategy configuration**

Flink's cluster level restart strategy configuration has been simplified to no longer override the default restart strategy if \`restart-strategy.fixed-delay.attempts\` or \`restart-strategy.fixed-delay.delay\` are being set. Please checkout https://ci.apache.org/projects/flink/flink-docs-master/dev/task\_failure\_recovery.html for more information.


---

* [FLINK-14029](https://issues.apache.org/jira/browse/FLINK-14029) | *Minor* | **Update Flink's Mesos scheduling behavior to reject all expired offers**

Flink's Mesos integration now rejects all expired offers instead of only 4. This improves the situation where Fenzo holds on a lot of expired offers without giving them back to the Mesos resource manager.


---

* [FLINK-14493](https://issues.apache.org/jira/browse/FLINK-14493) | *Major* | **Introduce data types to ConfigOptions**

Configuration's getters method throw exceptions when parsing failed. Before, the provided default value was returned in those cases.


---

* [FLINK-12147](https://issues.apache.org/jira/browse/FLINK-12147) | *Major* | **InfluxDB throws errors if metric value is NaN/infinity**

The InfluxDBReporter now silently skips NaN / Inf fields.


---

* [FLINK-13034](https://issues.apache.org/jira/browse/FLINK-13034) | *Major* | **Improve the performance when checking whether mapstate is empty for RocksDBStateBackend**

We have added a new method MapState#isEmpty() which enables users to check whether a map state is empty. The new method is 40% faster than mapState.keys().iterator().hasNext() when using the RocksDB state backend.


---

* [FLINK-12342](https://issues.apache.org/jira/browse/FLINK-12342) | *Major* | **Yarn Resource Manager Acquires Too Many Containers**

With Flink 1.9.0 the Yarn heartbeat configuration parameter has been renamed from \`yarn.heartbeat-delay\` to \`yarn.heartbeat.interval\`.


---

* [FLINK-12122](https://issues.apache.org/jira/browse/FLINK-12122) | *Major* | **Spread out tasks evenly across all available registered TaskManagers**

In order to use a scheduling strategy which is more similar to the pre FLIP-6 behaviour where Flink tries to spread out the workload across all available \`TaskExecutors\`, one needs to set \`cluster.evenly-spread-out-slots: true\` in the \`flink-conf.yaml\`


---

* [FLINK-14344](https://issues.apache.org/jira/browse/FLINK-14344) | *Major* | **A preparation for snapshotting master hook state asynchronously**

The contract of \`MasterTriggerRestoreHook#triggerCheckpoint\` (@PublicEvolving api) has changed - we now require it to be non-blocking. Any heavy operation should be executed asynchronously, for example using the given executor.


---

* [FLINK-14066](https://issues.apache.org/jira/browse/FLINK-14066) | *Blocker* | **Pyflink building failure in master and 1.9.0 version**

**WARNING: No release note provided for this change.**


---

* [FLINK-14618](https://issues.apache.org/jira/browse/FLINK-14618) | *Minor* | **Give more detailed debug information on akka framesize exception**

Added required framesize to exception message.


---

* [FLINK-13749](https://issues.apache.org/jira/browse/FLINK-13749) | *Minor* | **Make Flink client respect classloading policy**

The Flink client now also respects the configured classloading policy, i.e. parent-first or child-first classloading. Previously only cluster components such as the job manager or task manager supported this setting.

This does mean that users might get different behaviour in their programs, in which case they should configure the classloading policy explicity to use parent-first classloading, which was the previous (hard-coded) behaviour.


---

* [FLINK-14904](https://issues.apache.org/jira/browse/FLINK-14904) | *Major* | **Rename ANY type to RAW type**

The identifier "raw" is a reserved keyword now. Use backticks to escape it for SQL field and function names.


---

* [FLINK-14957](https://issues.apache.org/jira/browse/FLINK-14957) | *Major* | **Remove deprecated option -yst**

The Flink CLI no longer supports the deprecated command line options
\`-yst/--yarnstreaming\`. All Flink users are advised to remove this command line option.


---

* [FLINK-14599](https://issues.apache.org/jira/browse/FLINK-14599) | *Major* | **Support precision of TimestampType in blink planner**

[incompatible change] Disable conversion between Timestmap and long in parameters and results of UDXs
http://mail-archives.apache.org/mod\_mbox/flink-dev/201911.mbox/%3cCAL5q=a5dsm9+QEZ0eVG-gS7qR6ippRRnRiYAQFaGwNU\_Spe6OA@mail.gmail.com%3e


---

* [FLINK-14651](https://issues.apache.org/jira/browse/FLINK-14651) | *Critical* | **Set default value of config option jobmanager.scheduler to "ng"**

Users that experience issues related to scheduling, can fallback to the legacy scheduler by setting "jobmanager.scheduler: legacy" in their flink-conf.yaml


---

* [FLINK-14516](https://issues.apache.org/jira/browse/FLINK-14516) | *Critical* | **Remove non credit based network code**

Non credit-based network flow control code was removed alongside of the configuration option {{ taskmanager.network.credit-model }}. Its default value {{true}} is now the only option in Flink.


---

* [FLINK-14857](https://issues.apache.org/jira/browse/FLINK-14857) | *Major* | **Deprecate checkpoint lock from the Operators API**

Deprecated {{getCheckpointLock}} method of the {{org.apache.flink.streaming.runtime.tasks.StreamTask}} class.

Users should use {{MailboxExecutor}} to run actions that require synchronization with the task's thread (e.g. collecting output produced by an external thread). {{MailboxExecutor#yield}} or {{MailboxExecutor#tryYield}} methods can be used for actions that should give control to other actions temporarily, if the current operator is blocked.

{{MailboxExecutor}} can be accessed by using {{YieldingOperatorFactory}}. Example usage can be found in the {{AsyncWaitOperator}}.


---

* [FLINK-14645](https://issues.apache.org/jira/browse/FLINK-14645) | *Critical* | **Data types defined in DDL will lose precision and nullability when converting to properties**

The TableSchema derived from properties now bridges to the default conversion class, i.e. LocalDateTime/LocalDate/LocalTime, instead of java.sql.Timestamp/Date/Time. All the connectors consume/produce the java.sql.Timestamp/Date/Time classes should adapt to the new conversion classes.


---

* [FLINK-15068](https://issues.apache.org/jira/browse/FLINK-15068) | *Major* | **Disable RocksDB's local LOG by default**

Logging in RocksDB (e.g., logging related to flush, compaction, memtable creation, etc.) has been disabled by default to prevent disk space from being filled up unexpectedly. Users that need to enable logging should implement their own RocksDBOptionsFactory that creates DBOptions instances with InfoLogLevel set to INFO\_LEVEL.


---

* [FLINK-14845](https://issues.apache.org/jira/browse/FLINK-14845) | *Major* | **Introduce data compression to blocking shuffle.**

Now user can set taskmanager.network.blocking-shuffle.compression.enabled to true to enable data compression of blocking shuffle.


---

* [FLINK-14649](https://issues.apache.org/jira/browse/FLINK-14649) | *Major* | **Flatten all the connector properties keys to make it easy to configure in DDL**

Some indexed connector properties have been refactored to have a better experience in DDL statement, including Kafka "connector.properties", "connector.specific-offsets" and Elasticsearch "connector.hosts". Please see documentation for the description of new properties. The old properties are deprecated and will be removed in future versions. You can find the new properties here: https://ci.apache.org/projects/flink/flink-docs-release-1.10/dev/table/connect.htm


---

* [FLINK-14952](https://issues.apache.org/jira/browse/FLINK-14952) | *Blocker* | **Yarn containers can exceed physical memory limits when using BoundedBlockingSubpartition.**

This changes the option key and default value for the type of BoundedBlockingSubpartition in batch jobs. 

The previous key \`taskmanager.network.bounded-blocking-subpartition-type\` was changed to \`taskmanager.network.blocking-shuffle.type\` now. 

And the respective option default value was also changed from \`auto\` to \`file\` for avoiding yarn killing task manager container when memory usage of mmap exceeds some threshold.


---

* [FLINK-14926](https://issues.apache.org/jira/browse/FLINK-14926) | *Major* | **Make sure no resource leak of RocksObject**

Interfaces OptionsFactory and ConfigurableOptionsFactory have been deprecated in favor of RocksDBOptionsFactory and ConfigurableRocksDBOptionsFactory, respectively.


---

* [FLINK-14058](https://issues.apache.org/jira/browse/FLINK-14058) | *Major* | **FLIP-53 Fine-grained Operator Resource Management**

Config options \`table.exec.resource.external-buffer-memory\`,
\`table.exec.resource.hash-agg.memory\`, \`table.exec.resource.hash-join.memory\`,
and \`table.exec.resource.sort.memory\` have been deprecated. Beginning from Flink
1.10, these config options are interpreted as weight hints instead of absolute
memory requirements. Flink choses sensible default weight hints which should
not be adjustment by users.


---

* [FLINK-12785](https://issues.apache.org/jira/browse/FLINK-12785) | *Major* | **RocksDB savepoint recovery can use a lot of unmanaged memory**

Before FLINK-12785, user may encounter OOM if there are huge KV pairs when restoring from savepoint of RocksDB state backend. In FLINK-12785 we introduce a size limit in RocksDBWriteBatchWrapper with default value 2MB, and RocksDB's WriteBatch will flush if the consumed memory exceeds it. User could tune the limit through the state.backend.rocksdb.write-batch-size property in flink-conf.yaml if needed.


---

* [FLINK-15506](https://issues.apache.org/jira/browse/FLINK-15506) | *Blocker* | **State TTL Compaction Filter option off by default**

'state.backend.rocksdb.ttl.compaction.filter.enabled' is now true by default. Disable it only if you experience serious performance degradation during RocksDB compaction.


---

* [FLINK-15605](https://issues.apache.org/jira/browse/FLINK-15605) | *Major* | **Remove deprecated in 1.9 StateTtlConfig.TimeCharacteristic**

\`StateTtlConfig#TimeCharacteristic\` has been removed in favor of \`StateTtlConfig#TtlTimeCharacteristic\`


---

* [FLINK-15606](https://issues.apache.org/jira/browse/FLINK-15606) | *Major* | **Deprecate enable default background cleanup of state with TTL**

StateTtlConfig#Builder#cleanupInBackground is now deprecated because the background cleanup of state with TTL is enabled by default.


---

* [FLINK-11956](https://issues.apache.org/jira/browse/FLINK-11956) | *Critical* | **Remove shading from S3 filesystems build**

Removed class relocations from s3-hadoop and s3-presto filesystems to facilitate the use any credential providers.

\* as a consequence s3-hadoop and s3-presto can only be used as plugins

\* other filesystems are strongly recommended to be only used as plugins


---

* [FLINK-13980](https://issues.apache.org/jira/browse/FLINK-13980) | *Major* | **FLIP-49 Unified Memory Configuration for TaskExecutors**

With FLINK-13980, a new memory model has been introduced for the task executor. New configuration options have been introduced to control the memory consumption of the task executor process. This affects all types of deployments: standalone, YARN, Mesos, and the new active Kubernetes integration. The memory model of the job manager process has not been changed yet but it is planned to be updated as well.

If you try to reuse your previous Flink configuration without any adjustments, the new memory model can result in differently computed memory parameters for the JVM and, thus, performance changes.

Please note that the following options have been removed and have no effect anymore: "taskmanager.memory.fraction", "taskmanager.memory.off-heap", "taskmanager.memory.preallocate".

The following options, if used, are interpreted as other new options in order to maintain backwards compatibility where it makes sense: "taskmanager.heap.size", "taskmanager.memory.size", "taskmanager.network.memory.min", "taskmanager.network.memory.max", "taskmanager.network.memory.fraction".


The container cut-off configuration options, \`containerized.heap-cutoff-ratio\` and \`containerized.heap-cutoff-min\`, have no effect for task executor processes anymore but they still have the same semantics for the JobManager process.

More details, please refer to Flink user documents.


---

* [FLINK-14594](https://issues.apache.org/jira/browse/FLINK-14594) | *Major* | **Fix matching logics of ResourceSpec/ResourceProfile/Resource considering double values**

Serialized \`JobGraphs\` which set the \`ResourceSpec\` created by Flink versions \< 1.10 are no longer compatible with Flink \>= 1.10. If you want to migrate these jobs to Flink 1.10.0 you will have to stop the job with a savepoint and then resume it from this savepoint on the Flink 1.10.0 cluster.



