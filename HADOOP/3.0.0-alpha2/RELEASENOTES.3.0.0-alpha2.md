
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
# Apache Hadoop  3.0.0-alpha2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YARN-5049](https://issues.apache.org/jira/browse/YARN-5049) | *Major* | **Extend NMStateStore to save queued container information**

**WARNING: No release note provided for this change.**


---

* [HADOOP-13301](https://issues.apache.org/jira/browse/HADOOP-13301) | *Minor* | **Millisecond timestamp for FsShell console log and MapReduce jobsummary log**

The time format of console logger and MapReduce job summary logger is ISO8601 by default to print milliseconds.


---

* [HDFS-10650](https://issues.apache.org/jira/browse/HDFS-10650) | *Minor* | **DFSClient#mkdirs and DFSClient#primitiveMkdir should use default directory permission**

If the caller does not supply a permission, DFSClient#mkdirs and DFSClient#primitiveMkdir will create a new directory with the default directory permission 00777 instead of 00666.


---

* [HDFS-10725](https://issues.apache.org/jira/browse/HDFS-10725) | *Minor* | **Caller context should always be constructed by a builder**

**WARNING: No release note provided for this change.**


---

* [HDFS-10760](https://issues.apache.org/jira/browse/HDFS-10760) | *Major* | **DataXceiver#run() should not log InvalidToken exception as an error**

Log InvalidTokenException at trace level in DataXceiver#run().


---

* [HDFS-6962](https://issues.apache.org/jira/browse/HDFS-6962) | *Critical* | **ACL inheritance conflicts with umaskmode**

The original implementation of HDFS ACLs applied the client's umask to the permissions when inheriting a default ACL defined on a parent directory.  This behavior is a deviation from the POSIX ACL specification, which states that the umask has no influence when a default ACL propagates from parent to child.  HDFS now offers the capability to ignore the umask in this case for improved compliance with POSIX.  This change is considered backward-incompatible, so the new behavior is off by default and must be explicitly configured by setting dfs.namenode.posix.acl.inheritance.enabled to true in hdfs-site.xml.  Please see the HDFS Permissions Guide for further details.



