
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
# Hadoop MAPREDUCE 2.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [MAPREDUCE-5583](https://issues.apache.org/jira/browse/MAPREDUCE-5583) | *Major* | **Ability to limit running map and reduce tasks**

This introduces two new MR2 job configs, mentioned below, which allow users to control the maximum simultaneously-running tasks of the submitted job, across the cluster:

* mapreduce.job.running.map.limit (default: 0, for no limit)
* mapreduce.job.running.reduce.limit (default: 0, for no limit)

This is controllable at a per-job level.



