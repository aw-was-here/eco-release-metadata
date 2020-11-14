
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
# Apache Flink  1.6.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-10291](https://issues.apache.org/jira/browse/FLINK-10291) | *Critical* | **Generate JobGraph with fixed/configurable JobID in StandaloneJobClusterEntrypoint**

The {{StandaloneJobClusterEntrypoint}} now starts all jobs with a fixed {{JobID}}. Thus, in order to run a cluster in HA mode, one needs to set a different cluster id {{high-availability.cluster-id}} for each job/cluster.


---

* [FLINK-10243](https://issues.apache.org/jira/browse/FLINK-10243) | *Major* | **Add option to reduce latency metrics granularity**

The default granularity for latency metrics was modified. To restore the previous behavior users have to explicitly set the granularity to SUBTASK.


---

* [FLINK-10242](https://issues.apache.org/jira/browse/FLINK-10242) | *Major* | **Latency marker interval should be configurable**

(1.7 only) Latency metrics are now disabled by default, which all affect all jobs that do not explicitly set the latencyTrackingInterval via the ExecutionConfig.

To restore the previous default behavior users have to configure the metrics.latency.interval in flink-conf.yaml.


---

* [FLINK-10354](https://issues.apache.org/jira/browse/FLINK-10354) | *Major* | **Savepoints should be counted as retained checkpoints**

Savepoints are now used while recovering. Previously when using exactly-once sink one could get into problems with duplicate output data when a failure occured after a savepoint was taken but before the next checkpoint occured.
This results in the fact that savepoints are no longer exclusively under the control of the user. Savepoint should not be moved nor deleted if there was no newer checkpoint or savepoint taken.



