
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
# Apache Flink  1.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-9935](https://issues.apache.org/jira/browse/FLINK-9935) | *Critical* | **Batch Table API: grouping by window and attribute causes java.lang.ClassCastException:**

**WARNING: No release note provided for this change.**


---

* [FLINK-9455](https://issues.apache.org/jira/browse/FLINK-9455) | *Major* | **Make SlotManager aware of multi slot TaskManagers**

Flink now properly supports TaskExecutors with multiple slots. Consequently, TaskExecutors can now be started with an arbitrary number of slots and it is no longer recommended to start them with a single slot.


---

* [FLINK-10397](https://issues.apache.org/jira/browse/FLINK-10397) | *Major* | **Remove CoreOptions#MODE**

Flink no longer supports the legacy mode. If you depend on this, then please use Flink 1.6.x.


---

* [FLINK-10291](https://issues.apache.org/jira/browse/FLINK-10291) | *Critical* | **Generate JobGraph with fixed/configurable JobID in StandaloneJobClusterEntrypoint**

The {{StandaloneJobClusterEntrypoint}} now starts all jobs with a fixed {{JobID}}. Thus, in order to run a cluster in HA mode, one needs to set a different cluster id {{high-availability.cluster-id}} for each job/cluster.


---

* [FLINK-10243](https://issues.apache.org/jira/browse/FLINK-10243) | *Major* | **Add option to reduce latency metrics granularity**

The default granularity for latency metrics was modified. To restore the previous behavior users have to explicitly set the granularity to SUBTASK.


---

* [FLINK-10247](https://issues.apache.org/jira/browse/FLINK-10247) | *Critical* | **Run MetricQueryService in separate thread pool**

The metric query service runs now in its own ActorSystem. It needs consequently to open a new port for the query services to communicate with each other. This port can be configured via \`metrics.internal.query-service.port\` and is set by default to \`0\`.


---

* [FLINK-9975](https://issues.apache.org/jira/browse/FLINK-9975) | *Major* | **Netty dependency of Hadoop \>= 2.7 is not relocated**

We now also relocate Hadoop's Netty dependency from {{io.netty}} to {{org.apache.flink.hadoop.shaded.io.netty}}. You can now bundle your own version of Netty into your job but may no longer assume that {{io.netty}} is present in the flink-shaded-hadoop2-uber-\*.jar file.


---

* [FLINK-10242](https://issues.apache.org/jira/browse/FLINK-10242) | *Major* | **Latency marker interval should be configurable**

(1.7 only) Latency metrics are now disabled by default, which all affect all jobs that do not explicitly set the latencyTrackingInterval via the ExecutionConfig.

To restore the previous default behavior users have to configure the metrics.latency.interval in flink-conf.yaml.


---

* [FLINK-7811](https://issues.apache.org/jira/browse/FLINK-7811) | *Major* | **Add support for Scala 2.12**

When using Scala 2.12 you might have to add explicit type annotations in places where they were not required when using Scala 2.11. This is an excerpt from the TransitiveClosureNaive.scala example in the Flink code base that shows the changes that could be required.

Previous code:
{code}
val terminate = prevPaths
 .coGroup(nextPaths)
 .where(0).equalTo(0) {
   (prev, next, out: Collector[(Long, Long)]) =\> {
     val prevPaths = prev.toSet
     for (n \<- next)
       if (!prevPaths.contains(n)) out.collect(n)
   }
}
{code}

With Scala 2.12 you have to change it to:
{code}
val terminate = prevPaths
 .coGroup(nextPaths)
 .where(0).equalTo(0) {
   (prev: Iterator[(Long, Long)], next: Iterator[(Long, Long)], out: Collector[(Long, Long)]) =\> {
       val prevPaths = prev.toSet
       for (n \<- next)
         if (!prevPaths.contains(n)) out.collect(n)
     }
}
{code}

The reason for this is that Scala 2.12 changes how lambdas are implemented. They now use the lambda support using SAM interfaces introduced in Java 8. This makes some method calls ambiguous because now both Scala-style lambdas and SAMs are candidates for methods were it was previously clear which method would be invoked.


---

* [FLINK-9635](https://issues.apache.org/jira/browse/FLINK-9635) | *Critical* | **Local recovery scheduling can cause spread out of tasks**

With the improvements to Flink's scheduling, it can no longer happen that recoveries require more slots than before if local recovery is enabled. Consequently, we encourage our users to use the local recovery feature which can be enabled by \`state.backend.local-recovery: true\`.


---

* [FLINK-10490](https://issues.apache.org/jira/browse/FLINK-10490) | *Major* | **OperatorSnapshotUtil should probably use SavepointV2Serializer**

Snapshots created with OperatorSnapshotUtil before this commit are written in the savepoint format V1. After this commit, we write in the format V2.


---

* [FLINK-10676](https://issues.apache.org/jira/browse/FLINK-10676) | *Major* | **Add 'as' method for OverWindowWithOrderBy in Java API**

Change the over window preceding clause from required to optional.


---

* [FLINK-10354](https://issues.apache.org/jira/browse/FLINK-10354) | *Major* | **Savepoints should be counted as retained checkpoints**

Savepoints are now used while recovering. Previously when using exactly-once sink one could get into problems with duplicate output data when a failure occured after a savepoint was taken but before the next checkpoint occured.
This results in the fact that savepoints are no longer exclusively under the control of the user. Savepoint should not be moved nor deleted if there was no newer checkpoint or savepoint taken.


---

* [FLINK-9376](https://issues.apache.org/jira/browse/FLINK-9376) | *Critical* | **Allow upgrading to incompatible state serializers (state schema evolution)**

Before Flink 1.7, serializer snapshots were implemented as a \`TypeSerializerConfigSnapshot\` (which is now deprecated, and will eventually be removed in the future to be fully replaced by the new \`TypeSerializerSnapshot\` interface introduced in 1.7).
Moreover, the responsibility of serializer schema compatibility checks lived within the \`TypeSerializer\`,
implemented in the \`TypeSerializer#ensureCompatibility(TypeSerializerConfigSnapshot)\` method.

To be future-proof and have flexibility to migrate your state serializers and schema, it is highly recommended to migrate from the old abstractions. Details and migration guides can be found [here](https://ci.apache.org/projects/flink/flink-docs-master/dev/stream/state/custom\_serialization.html).


---

* [FLINK-11230](https://issues.apache.org/jira/browse/FLINK-11230) | *Blocker* | **Sum of FlinkSql after two table union all.The value is too large.**

**WARNING: No release note provided for this change.**



