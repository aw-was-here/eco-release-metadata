
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
# Apache hadoop  1-win Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-8902](https://issues.apache.org/jira/browse/HADOOP-8902) | *Major* | **Enable Gridmix v1 & v2 benchmarks on Windows platform**

Enables gridmix v1 and v2 benchmarks on Windows platform.


---

* [HDFS-4337](https://issues.apache.org/jira/browse/HDFS-4337) | *Major* | **Backport HDFS-4240 to branch-1: Make sure nodes are avoided to place replica if some replica are already under the same nodegroup.**

Backport HDFS-4240 to branch-1


---

* [HDFS-3649](https://issues.apache.org/jira/browse/HDFS-3649) | *Major* | **Port HDFS-385 to branch-1-win**

blockplacement policy is now ported to branch-1 and branch-1-win


---

* [HDFS-385](https://issues.apache.org/jira/browse/HDFS-385) | *Major* | **Design a pluggable interface to place replicas of blocks in HDFS**

New experimental API BlockPlacementPolicy allows investigating alternate rules for locating block replicas.


---

* [MAPREDUCE-4737](https://issues.apache.org/jira/browse/MAPREDUCE-4737) | *Major* | ** Hadoop does not close output file / does not call Mapper.cleanup if exception in map**

Ensure that mapreduce APIs are semantically consistent with mapred API w.r.t Mapper.cleanup and Reducer.cleanup; in the sense that cleanup is now called even if there is an error. The old mapred API already ensures that Mapper.close and Reducer.close are invoked during error handling. Note that it is an incompatible change, however end-users can override Mapper.run and Reducer.run to get the old (inconsistent) behaviour.


---

* [MAPREDUCE-4203](https://issues.apache.org/jira/browse/MAPREDUCE-4203) | *Major* | **Create equivalent of ProcfsBasedProcessTree for Windows**

Added an implementation of the process tree for Windows.



