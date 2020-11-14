
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
# Apache Flink  1.9.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-11153](https://issues.apache.org/jira/browse/FLINK-11153) | *Major* | **Remove UdfAnalyzer**

The (opt-in) static code analyzer has been removed. Related APIs have been deprecated and no longer have any effect.


---

* [FLINK-12151](https://issues.apache.org/jira/browse/FLINK-12151) | *Major* | **Drop Elasticsearch 1 connector**

The Elasticsearch 1 connector has been dropped and will no longer receive patches. Users may continue to use connector from a previous series (like 1.8) with newer versions of Flink.


---

* [FLINK-10706](https://issues.apache.org/jira/browse/FLINK-10706) | *Major* | **Update the Flink Dashboard and its components**

The web frontend of Flink has been updated to use the latest Angular version.
The old frontend remains available in Flink 1.9 and will be removed in a later Flink release, once the new frontend is considered stable.


---

* [FLINK-12472](https://issues.apache.org/jira/browse/FLINK-12472) | *Minor* | **Support setting attemptFailuresValidityInterval of jobs on Yarn**

Yarn's attempt failure validity interval no longer defaults to the ask timeout \`akka.ask.timeout\`. Instead it can now be configured independently via \`yarn.application-attempt-failures-validity-interval\` whose default value is \`10000\` milliseconds.


---

* [FLINK-12688](https://issues.apache.org/jira/browse/FLINK-12688) | *Blocker* | **Make serializer lazy initialization thread safe in StateDescriptor**

Access to the state serializer field in {{StateDescriptor}} is now modified to private access. Subclasses should use the {{StateDescriptor#getSerializer()}} method as the only means to obtain the wrapped state serializer.


---

* [FLINK-12476](https://issues.apache.org/jira/browse/FLINK-12476) | *Major* | **[State TTL] Consider setting a default background cleanup strategy in StateTtlConfig**

The background cleanup for state with time-to-live can be enabled with the method StateTtlConfig#cleanupInBackground() now. If the state backend supports the background cleanup, the default strategy will kick in.


---

* [FLINK-12617](https://issues.apache.org/jira/browse/FLINK-12617) | *Major* | **StandaloneJobClusterEntrypoint should default to random JobID for non-HA setups**

The \`StandaloneJobClusterEntrypoint\` will now generate a random \`JobID\` when being started with HA disabled.


---

* [FLINK-11579](https://issues.apache.org/jira/browse/FLINK-11579) | *Major* | **Support Netty SslEngine based on openSSL**

You can now optionally use openSSL as Flink's SSL engine. According to https://netty.io/wiki/requirements-for-4.x.html#wiki-h4-4, this is significantly faster. Please refer to https://ci.apache.org/projects/flink/flink-docs-release-1.9/ops/config.html#security-ssl-provider for the available options and how to set openSSL up.


---

* [FLINK-12903](https://issues.apache.org/jira/browse/FLINK-12903) | *Major* | **Remove legacy flink-python APIs**

The older Python APIs for Batch & Streaming have been removed.

A new API is being developed based on the Table API as part of FLINK-12308.

Existing users may continue to use these APIs with future versions of Flink by copying both the flink-(streaming)-python jars into the /lib directory of the distribution and the corresponding start-scripts (pyflink(-stream).sh) into the /bin directory of the distribution.


---

* [FLINK-12555](https://issues.apache.org/jira/browse/FLINK-12555) | *Major* | **Introduce an encapsulated metric group layout for shuffle API and deprecate old one**

Several IO/network metrics have had their scope changed.

These metrics will additionally still be available under their old scope in 1.9, but this may no longer be the case in later versions.

See the 1.9 metrics documentation for which metrics are affected.


---

* [FLINK-12850](https://issues.apache.org/jira/browse/FLINK-12850) | *Major* | **Introduce TypeInfo for LocalDate/LocalTime/LocalDateTime**

Support LocalDate & LocalTime & LocalDataTime TypeInformations.


---

* [FLINK-13060](https://issues.apache.org/jira/browse/FLINK-13060) | *Major* | **FailoverStrategies should respect restart constraints**

Users that have enabled the "region" failover strategy, along with a restart strategy that enforces a certain number of restarts or introduces a restart delay, will see changes in behavior. This failover strategy now respects constraints that are defined by the restart strategy.


---

* [FLINK-13063](https://issues.apache.org/jira/browse/FLINK-13063) | *Blocker* | **AsyncWaitOperator shouldn't be releasing checkpointingLock**

This changes the default chaining behavior of the AsyncWaitOperator. By default, we now break chains so that the AsyncWaitOperator is never chained after another operator.


---

* [FLINK-13013](https://issues.apache.org/jira/browse/FLINK-13013) | *Critical* | **Make sure that SingleInputGate can always request partitions**

In case when partitions are not (yet) found, because we are requesting partitions sooner (now we are requesting partitions before initialise operator states), partitions request re-triggering will also happen sooner, so the incremental back of counter will start counting also sooner. 

It is possible that some Jobs (with long deployment times and large state) might start failing more frequently with {{PartitionNotFound}} exceptions compared to Flink 1.8. If that's the case users should increase {{taskmanager.network.request-backoff.max}} value in order to have the same effective request partitions time out as it was in Flink 1.8.


---

* [FLINK-12852](https://issues.apache.org/jira/browse/FLINK-12852) | *Blocker* | **[hotfix timeout] Deadlock occurs when requiring exclusive buffer for RemoteInputChannel**

To avoid a potential deadlock, this adds a timeout (default value of 30 seconds, configurable via {{taskmanager.network.memory.exclusive-buffers-request-timeout-ms}}) for how long Task will be waiting for assignment of exclusive memory segments. However it is possible that for some previously working deployments this default timeout value is too low and might has to be increased.


---

* [FLINK-8033](https://issues.apache.org/jira/browse/FLINK-8033) | *Major* | **JDK 9 support**

Flink can be compiled and run on Java 9. Note that certain components interacting with external systems (connectors, filesystems, reporters) may not work since the respective projects may have skipped Java 9 support.
Modularized user-jars have not been tested and may or may not work.


---

* [FLINK-13123](https://issues.apache.org/jira/browse/FLINK-13123) | *Major* | **Align Stop/Cancel Commands in CLI and REST Interface and Improve Documentation**

From now on, the {{stop}} command with no further arguments (gracefully) stops the job with a savepoint at the default savepoint location, as configured by the user. This changes the semantics of the pre-existing stop command, as agreed in the mailing list.


---

* [FLINK-13223](https://issues.apache.org/jira/browse/FLINK-13223) | *Blocker* | **Set jobmanager.execution.failover-strategy to region in default flink-conf.yaml**

Flink will now by default use the "region" failover strategy. Flink will now attempt to only restart tasks that are connected to the failed task through a pipelined connection.

Users who were not using a restart strategy or have already configured a failover strategy should not be affected.

Streaming users who were not using a failover strategy may be affected if their jobs are embarrassingly parallel or contain multiple independent jobs. In this case, only the failed parallel pipeline or affected jobs will be restarted.

Batch users may be affected if their job contains blocking exchanges (usually happens for shuffles) or the ExecutionMode was set to BATCH or BATCH\_FORCED via the ExecutionConfig.

Overall users should see an improvement in performance.


---

* [FLINK-12578](https://issues.apache.org/jira/browse/FLINK-12578) | *Blocker* | **Use secure URLs for Maven repositories**

By default Flink now specifies HTTPS URLs for all maven repositories.

Users building Flink from source may encounter issues when accessing the MapR repository, as they are some known (conditional) issues in regards to the SSL certificate.
In this case, users are advised to seek help from MapR to resolve the issue, or \_if all else fails\_ can revert to the HTTP URL using the "unsafe-mapr-repo" profile.


---

* [FLINK-13335](https://issues.apache.org/jira/browse/FLINK-13335) | *Blocker* | **Bring the SQL CREATE TABLE DDL closer to FLIP-37**

The identifiers "string" and "bytes" are reserved keywords now and will be used for data types in the future. In case of SQL statements with a function, field, or table name, those identifiers need to be enclosed in backticks: \`STRING\` or \`BYTES\`.


---

* [FLINK-11159](https://issues.apache.org/jira/browse/FLINK-11159) | *Major* | **Allow configuration whether to fall back to savepoints for restore**

The signature of the \`CompletedCheckpointStore#getLatestCheckpoint\` method has been changed from \`getLatestCheckpoint()\` to \`getLatestCheckpoint(boolean)\`. This signature change breaks backwards compatibility and requires you to update your \`CompletedCheckpointStore\` implementation.

If the parameter is \`true\`, then only checkpoints will be considered for recovery. Otherwise savepoints will be used for recoveries as well.


---

* [FLINK-12364](https://issues.apache.org/jira/browse/FLINK-12364) | *Major* | **Introduce a CheckpointFailureManager to centralized manage checkpoint failure**

The method \`CheckpointIDCounter#get\` has been added to the \`CheckpointIDCounter\` interface. The method retrieves the current checkpoint ID. This is an API breaking change and will require you to update your own \`CheckpointIDCounter\` implementation if you are using a custom \`HighAvailabilityServices\` implementation.


---

* [FLINK-13547](https://issues.apache.org/jira/browse/FLINK-13547) | *Critical* | **Verify and correct string function's semantic for Blink planner**

The Blink planner does not support the \`substr\` command yet. Instead, use the \`substring\` command.


---

* [FLINK-13045](https://issues.apache.org/jira/browse/FLINK-13045) | *Major* | **Move Scala expression DSL to flink-table-api-scala**

Scala Table API users need to update their imports and add "import org.apache.flink.table.api.\_" to their programs in addition to "import org.apache.flink.table.api.scala.\_".



