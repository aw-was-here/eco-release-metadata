
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
# Apache Flink  1.8.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-12342](https://issues.apache.org/jira/browse/FLINK-12342) | *Major* | **Yarn Resource Manager Acquires Too Many Containers**

With Flink 1.9.0 the Yarn heartbeat configuration parameter has been renamed from \`yarn.heartbeat-delay\` to \`yarn.heartbeat.interval\`.


---

* [FLINK-13749](https://issues.apache.org/jira/browse/FLINK-13749) | *Minor* | **Make Flink client respect classloading policy**

The Flink client now also respects the configured classloading policy, i.e. parent-first or child-first classloading. Previously only cluster components such as the job manager or task manager supported this setting.

This does mean that users might get different behaviour in their programs, in which case they should configure the classloading policy explicity to use parent-first classloading, which was the previous (hard-coded) behaviour.



