
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

* [FLINK-10243](https://issues.apache.org/jira/browse/FLINK-10243) | *Major* | **Add option to reduce latency metrics granularity**

The default granularity for latency metrics was modified. To restore the previous behavior users have to explicitly set the granularity to SUBTASK.


---

* [FLINK-10242](https://issues.apache.org/jira/browse/FLINK-10242) | *Major* | **Disable latency metrics by default**

Latency metrics are now disabled by default, which all affect all jobs that do not explicitly set the latencyTrackingInterval via the ExecutionConfig. To restore the previous default behavior users have to configure the metrics.latency.interval in flink-conf.yaml.



