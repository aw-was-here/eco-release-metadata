
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
# Apache Flink  1.12.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-17520](https://issues.apache.org/jira/browse/FLINK-17520) | *Critical* | **Extend CompositeTypeSerializerSnapshot to allow composite serializers to signal migration based on outer configuration**

The \`boolean isOuterSnapshotCompatible(TypeSerializer)\` on the \`CompositeTypeSerializerSnapshot\` class has been deprecated, in favor of a new \`OuterSchemaCompatibility resolveOuterSchemaCompatibility(TypeSerializer)\` method. Please implement that instead. Compared to the old method, the new method allows composite serializers to signal state schema migration based on outer schema and configuration.


---

* [FLINK-18242](https://issues.apache.org/jira/browse/FLINK-18242) | *Major* | **Custom OptionsFactory settings seem to have no effect on RocksDB**

After FLINK-18242, the deprecated \`OptionsFactory\` and \`ConfigurableOptionsFactory\` classes are removed (not applicable for release-1.10), please use \`RocksDBOptionsFactory\` and \`ConfigurableRocksDBOptionsFactory\` instead. Please also recompile your application codes if any class extending \`DefaultConfigurableOptionsFactory\`.


---

* [FLINK-18360](https://issues.apache.org/jira/browse/FLINK-18360) | *Minor* | **Flink History Server doesn't show correctly table of Completed jobs when there are no archived jobs are in the archive directory**

Histrory server show correctly Completed Jobs table when there are no archived jobs


---

* [FLINK-17800](https://issues.apache.org/jira/browse/FLINK-17800) | *Critical* | **RocksDB optimizeForPointLookup results in missing time windows**

After FLINK-17800 by default we will set \`setTotalOrderSeek\` to true for RocksDB's \`ReadOptions\`, to prevent user from miss using \`optimizeForPointLookup\`. Meantime we support customizing \`ReadOptions\` through \`RocksDBOptionsFactory\`. Please set \`setTotalOrderSeek\` back to false if any performance regression observed (normally won't happen according to our testing).


---

* [FLINK-15416](https://issues.apache.org/jira/browse/FLINK-15416) | *Major* | **Add Retry Mechanism for PartitionRequestClientFactory.ConnectingChannel**

new configuration parameter: taskmanager.network.retries


---

* [FLINK-18809](https://issues.apache.org/jira/browse/FLINK-18809) | *Major* | **Update internal aggregate functions to new type system**

SQL queries that use the COLLECT function might need to be updated to the new type system.


---

* [FLINK-18901](https://issues.apache.org/jira/browse/FLINK-18901) | *Major* | **Use new type inference for SQL DDL of aggregate functions**

The CREATE FUNCTION DDL for aggregate functions uses the new type inference now. It might be necessary to update existing implementations to the new reflective type extraction logic. Use StreamTableEnvironment.registerFunction for the old stack.


---

* [FLINK-19009](https://issues.apache.org/jira/browse/FLINK-19009) | *Trivial* | **wrong way to calculate the "downtime" metric**

The down time metric is now calculated as described in the documentation.


---

* [FLINK-19032](https://issues.apache.org/jira/browse/FLINK-19032) | *Major* | **Remove deprecated RuntimeContext#getAllAcumullators**

The long deprecated method RuntimeContext#getAllAcumulators was removed. Please use RuntimeContext#getAccumulator instead.


---

* [FLINK-13857](https://issues.apache.org/jira/browse/FLINK-13857) | *Major* | **Remove remaining UdfAnalyzer configurations**

The ExecutionConfig#get/setCodeAnalysisMode method and SkipCodeAnalysis class were removed. They took no effect even before that change, therefore there is no need to use any of these.


---

* [FLINK-19084](https://issues.apache.org/jira/browse/FLINK-19084) | *Major* | **Remove deprecated methods in ExecutionConfig**

Deprecated methods ExecutionConfig#isLatencyTrackingEnabled was removed, you can use ExecutionConfig#getLatencyTrackingInterval instead.

Deprecated, ineffective for some time methods ExecutionConfig#enable/disableSysoutLogging, ExecutionConfig#set/isFailTaskOnCheckpointError were removed. These methods had no effect, simply remove usages of those.

Removed '-q' flag from cli. The option had no effect.


---

* [FLINK-16866](https://issues.apache.org/jira/browse/FLINK-16866) | *Critical* | **Make job submission non-blocking**

The semantics of submitting a job have slightly changed. The submission call returns almost immediately, with the job being in a new INITIALIZING state. Operations such as triggering a savepoint or retrieving the full job details are not available while the job is in that state.
Once the JobManager for that job has been created, the job is in CREATED state and all calls are available.


---

* [FLINK-19035](https://issues.apache.org/jira/browse/FLINK-19035) | *Major* | **Remove deprecated DataStream#fold() method and all related classes**

The long deprecated (Windowed)DataStream#fold was removed in 1.12. Please use other operations such as e.g. (Windowed)DataStream#reduce that perform better in distributed systems.


---

* [FLINK-18447](https://issues.apache.org/jira/browse/FLINK-18447) | *Major* | **Add 'flink-connector-base' to 'flink-dist'**

The 'flink-connector-base' module is now part of 'flink-dist' and is always in the classpath of the JVM in standalone deployments or docker images.

Connectors that build on top of this connector base should now declare the dependency as 'provided', similar to API dependencies.


---

* [FLINK-19083](https://issues.apache.org/jira/browse/FLINK-19083) | *Major* | **Remove deprecated DataStream#split**

The DataStream#split() operation has been removed after being marked as deprecated for a couple of versions. Please use Side Outputs instead: https://ci.apache.org/projects/flink/flink-docs-stable/dev/stream/side\_output.html


---

* [FLINK-18802](https://issues.apache.org/jira/browse/FLINK-18802) | *Major* | **Create an uber jar when packaging flink-avro for sql client**

The sql client jar was renamed to flink-sql-avro-${flink.version}.jar, previously flink-avro-${flink.version}-sql-jar.jar. Moreover it is no longer needed to add avro dependencies manually.


---

* [FLINK-18192](https://issues.apache.org/jira/browse/FLINK-18192) | *Major* | **Upgrade to Avro version 1.10.0 from 1.8.2**

The default version of avro in flink-avro module was upgraded to 1.10. If for some reason you need an older version (you have avro coming from hadoop, or you use classes generated from an older avro version), please explicitly downgrade the avro version in your project.

NOTE: We observed a decreased performance of the Avro 1.10 version compared to 1.8.2. If you are concerned with the performance and you are fine working with an older version of Avro, consider downgrading the Avro version.


---

* [FLINK-19273](https://issues.apache.org/jira/browse/FLINK-19273) | *Major* | **Update parser module for FLIP-107**

The term "METADATA" is a reserved keyword now. Use backticks to escape column names and other identifiers with this name.


---

* [FLINK-19319](https://issues.apache.org/jira/browse/FLINK-19319) | *Major* | **Deprecate StreamExecutionEnvironment.setStreamTimeCharacteristic() and TimeCharacteristic**

This is formatted in Markdown for easy inclusion in the release post.

In Flink 1.12 the default stream time characteristic has been changed to \`EventTime\`, thus you don't need to call this method for enabling event-time support anymore. Explicitly using processing-time windows and timers works in event-time mode. If you need to disable watermarks, please use \`ExecutionConfig.setAutoWatermarkInterval(long)\`. If you are using \`IngestionTime\`, please manually set an appropriate \`WatermarkStrategy\`. If you are using generic "time window" operations (for example \`KeyedStream.timeWindow()\` that change behaviour based on the time characteristic, please use equivalent operations that explicitly specify processing time or event time.


---

* [FLINK-19318](https://issues.apache.org/jira/browse/FLINK-19318) | *Major* | **Deprecate timeWindow() operations in DataStream API**

In Flink 1.12 we deprecated the \`timeWindow()\` operations in the DataStream API. Please use \`window(WindowAssigner)\` with either a \`TumblingEventTimeWindows\`, \`SlidingEventTimeWindows\`, \`TumblingProcessingTimeWindows\`, or \`SlidingProcessingTimeWindows\`. For more information, see the deprecation description of \`TimeCharacteristic\`/\`setStreamTimeCharacteristic\`.

(This is formatted as Markdown for easy inclusion in the release blog post)


---

* [FLINK-18662](https://issues.apache.org/jira/browse/FLINK-18662) | *Critical* | **Provide more detailed metrics why unaligned checkpoint is taking long time**

This is modifing the {{checkpointAlignmentTime}} metric for the at-least-once checkopinting and unaligned exactly-once checkpointing. Previously it was
always 0, now it's defined as the duration between processing first and the last checkpoint barrier.


---

* [FLINK-19750](https://issues.apache.org/jira/browse/FLINK-19750) | *Critical* | **Deserializer is not opened in Kafka consumer when restoring from state**

Patch merged.
master: 200be714ff7476f66b7f56cd9b266670b752afe0
release-1.11: 78cd4628285c9dfdc0ada3f59cdefc4e8a7eb0bc


---

* [FLINK-19783](https://issues.apache.org/jira/browse/FLINK-19783) | *Critical* | **Upgrade mesos to 1.7 or newer**

The Mesos dependency has been bumped from 1.0.1 to 1.7.0.


---

* [FLINK-19278](https://issues.apache.org/jira/browse/FLINK-19278) | *Major* | **Bump Scala Macros Version to 2.1.1**

Flink now relies on Scala Macros 2.1.1. This means that we no longer support Scala \< 2.11.11.


---

* [FLINK-19479](https://issues.apache.org/jira/browse/FLINK-19479) | *Major* | **Allow explicitly configuring time behaviour on KeyedStream.intervalJoin()**

Before Flink 1.12 the \`KeyedStream.intervalJoin()\` operation was changing behavior based on the globally set Stream TimeCharacteristic. In Flink 1.12 we introduced explicit \`inProcessingTime()\` and \`inEventTime()\` methods on \`IntervalJoin\` and the join no longer changes behaviour based on the global characteristic.


---

* [FLINK-8357](https://issues.apache.org/jira/browse/FLINK-8357) | *Major* | **enable rolling in default log settings**

The default log4j configuration has changed: Besides the existing rolling of log files on startup of Flink, they also roll once they've reached a size of 100MB. Flink keeps a total of 10 log files, effectively limiting the total size of the log directory to 1GB (per Flink service logging to that directory)


---

* [FLINK-19924](https://issues.apache.org/jira/browse/FLINK-19924) | *Major* | **Disallow unaligned checkpoints for iterative jobs**

Added execution.checkpointing.unaligned.forced


---

* [FLINK-19661](https://issues.apache.org/jira/browse/FLINK-19661) | *Major* | **Implement changes required to resolve FLIP-104**

FLINK-19661 (FLIP-104) introduced the metrics overview page for the JobManager to align it with the memory model introduced in FLINK-16614 (FLIP-116). Additionally, the goal was to achieve a similar look-and-feel comparing the TaskManager's and the JobManager's metrics overview page.

As part of this work, dynamic parameters are now being forwarded to the JobManager. This enabled us to pass the memory configuration for the JobManager through dynamic parameters as it was already done for the TaskManager. The effective memory configuration is now being exposed through the JobManager's configuration page and REST endpoint.


---

* [FLINK-14431](https://issues.apache.org/jira/browse/FLINK-14431) | *Major* | **Update TaskManager's memory information to match its memory composition**

FLINK-14431 (FLIP-102) updated the metrics overview page of the TaskManagers aligning it with the memory model introduced in FLINK-13980 (FLIP-49).

As part of this work, new metrics have been introduced for managed memory, netty shuffle memory (network) and metaspace. Minor naming bugs have been corrected as well.


---

* [FLINK-19868](https://issues.apache.org/jira/browse/FLINK-19868) | *Major* | **Csv Serialization schema contains line delimiter**

The 'csv.line-delimiter' option has been removed from CSV format. Because the line delimiter should be defined by the connector instead of format. If users have been using this option in previous Flink version, they should alter such table to remove this option when upgrading to Flink 1.12. There should not much users using this option.



