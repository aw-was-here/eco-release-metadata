
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
# Apache Hadoop  2.10.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HDFS-12883](https://issues.apache.org/jira/browse/HDFS-12883) | *Major* | **RBF: Document Router and State Store metrics**

This JIRA makes following change:
Change Router metrics context from 'router' to 'dfs'.


---

* [HDFS-12895](https://issues.apache.org/jira/browse/HDFS-12895) | *Major* | **RBF: Add ACL support for mount table**

Mount tables support ACL, The users won't be able to modify their own entries (we are assuming these old (no-permissions before) mount table with owner:superuser, group:supergroup, permission:755 as the default permissions).  The fix way is login as superuser to modify these mount table entries.


---

* [MAPREDUCE-7029](https://issues.apache.org/jira/browse/MAPREDUCE-7029) | *Minor* | **FileOutputCommitter is slow on filesystems lacking recursive delete**

MapReduce jobs that output to filesystems without direct support for recursive delete can set mapreduce.fileoutputcommitter.task.cleanup.enabled=true to have each task delete their intermediate work directory rather than waiting for the ApplicationMaster to clean up at the end of the job. This can significantly speed up the cleanup phase for large jobs on such filesystems.



