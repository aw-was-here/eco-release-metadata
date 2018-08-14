
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
# Apache Flink  1.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-8910](https://issues.apache.org/jira/browse/FLINK-8910) | *Blocker* | **Introduce automated end-to-end test for local recovery (including sticky scheduling)**

We changed the default SLOT\_IDLE\_TIMEOUT to the HEARTBEAT\_TIMEOUT in the course of this work (commit in master is b17be26711).


---

* [FLINK-9935](https://issues.apache.org/jira/browse/FLINK-9935) | *Critical* | **Batch Table API: grouping by window and attribute causes java.lang.ClassCastException:**

**WARNING: No release note provided for this change.**


---

* [FLINK-7386](https://issues.apache.org/jira/browse/FLINK-7386) | *Critical* | **Flink Elasticsearch 5 connector is not compatible with Elasticsearch 5.2+ client**

Previous APIs in the Flink Elasticsearch Sink's RequestIndexer interface has been deprecated in favor of new signatures. When adding requests to the indexer, the requests now must be of type IndexRequest, DeleteRequest, or UpdateRequest, instead of the base ActionRequest.



