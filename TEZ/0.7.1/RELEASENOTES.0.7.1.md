
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
# Apache Tez  0.7.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [TEZ-2679](https://issues.apache.org/jira/browse/TEZ-2679) | *Major* | **Admin forms of launch env settings**

TEZ-2679 introduced new admin configuration (tez.am.launch.cluster-default.env, tez.task.launch.cluster-default.env) settings. The settings will be merged per environment variable and environment variables specified in both admin setting and user override will merged in the following manner (assuming linux classpath here, but works for other OS's).

./:USER\_PATH:ADMIN\_PATH


---

* [TEZ-2909](https://issues.apache.org/jira/browse/TEZ-2909) | *Major* | **Tez UI: Application link in All DAGs table is disable when applicationhistory is unavailable.**

Thanks you [~hitesh]
Committed to both master and branch-0.7.


---

* [TEZ-2949](https://issues.apache.org/jira/browse/TEZ-2949) | *Major* | **Allow duplicate dag names within session for Tez**

In earlier versions of Tez, DAG submissions to a Tez AM were rejected if the dagName was not unique for that Tez session/application. After this change, the uniqueness constraint for the dagName is no longer enforced.


---

* [TEZ-2972](https://issues.apache.org/jira/browse/TEZ-2972) | *Major* | **Avoid task rescheduling when a node turns unhealthy**

**WARNING: No release note provided for this change.**


---

* [TEZ-2914](https://issues.apache.org/jira/browse/TEZ-2914) | *Major* | **Ability to limit vertex concurrency**

Added new vertex level config "tez.am.vertex.max-task-concurrency" that can be set using the per vertex conf API to limit the task concurrency of a given vertex.



