
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
# Apache Flink  1.8.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-12688](https://issues.apache.org/jira/browse/FLINK-12688) | *Blocker* | **Make serializer lazy initialization thread safe in StateDescriptor**

Access to the state serializer field in {{StateDescriptor}} is now modified to private access. Subclasses should use the {{StateDescriptor#getSerializer()}} method as the only means to obtain the wrapped state serializer.


---

* [FLINK-12617](https://issues.apache.org/jira/browse/FLINK-12617) | *Major* | **StandaloneJobClusterEntrypoint should default to random JobID for non-HA setups**

The \`StandaloneJobClusterEntrypoint\` will now generate a random \`JobID\` when being started with HA disabled.



