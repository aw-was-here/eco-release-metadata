
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

* [HADOOP-13361](https://issues.apache.org/jira/browse/HADOOP-13361) | *Major* | **Modify hadoop\_verify\_user to be consistent with hadoop\_subcommand\_opts (ie more granularity)**

Users:

In Apache Hadoop 3.0.0-alpha1, verification required environment variables with the format of HADOOP\_(subcommand)\_USER where subcommand was lowercase applied globally.  This changes the format to be (command)\_(subcommand)\_USER where all are uppercase to be consistent with the \_OPTS functionality as well as being able to set per-command options.  Additionally, the check is now happening sooner, which should make it faster to fail.

Developers:

This changes hadoop\_verify\_user to require the program's name as part of the function call.  This is incompatible with Apache Hadoop 3.0.0-alpha1.


---

* [HDFS-6962](https://issues.apache.org/jira/browse/HDFS-6962) | *Critical* | **ACL inheritance conflicts with umaskmode**

The original implementation of HDFS ACLs applied the client's umask to the permissions when inheriting a default ACL defined on a parent directory.  This behavior is a deviation from the POSIX ACL specification, which states that the umask has no influence when a default ACL propagates from parent to child.  HDFS now offers the capability to ignore the umask in this case for improved compliance with POSIX.  This change is considered backward-incompatible, so the new behavior is off by default and must be explicitly configured by setting dfs.namenode.posix.acl.inheritance.enabled to true in hdfs-site.xml.  Please see the HDFS Permissions Guide for further details.


---

* [HADOOP-13341](https://issues.apache.org/jira/browse/HADOOP-13341) | *Major* | **Deprecate HADOOP\_SERVERNAME\_OPTS; replace with (command)\_(subcommand)\_OPTS**

<!-- markdown -->
Users:
* Ability to set per-command+sub-command options from the command line.
* Makes daemon environment variable options consistent across the project. (See deprecation list below)
* HADOOP\_CLIENT\_OPTS is now honored for every non-daemon sub-command. Prior to this change, many sub-commands did not use it.

Developers:
* No longer need to do custom handling for options in the case section of the shell scripts.
* Consolidates all \_OPTS handling into hadoop-functions.sh to enable future projects.
* All daemons running with secure mode features now get \_SECURE\_EXTRA\_OPTS support.

\_OPTS Changes:

| Old | New |
|:---- |:---- |
| HADOOP\_BALANCER\_OPTS | HDFS\_BALANCER\_OPTS | 
| HADOOP\_DATANODE\_OPTS | HDFS\_DATANODE\_OPTS | 
| HADOOP\_DN\_SECURE_EXTRA_OPTS | HDFS\_DATANODE\_SECURE\_EXTRA\_OPTS | 
| HADOOP\_JOB\_HISTORYSERVER\_OPTS | MAPRED\_HISTORYSERVER\_OPTS | 
| HADOOP\_JOURNALNODE\_OPTS | HDFS\_JOURNALNODE\_OPTS | 
| HADOOP\_MOVER\_OPTS | HDFS\_MOVER\_OPTS | 
| HADOOP\_NAMENODE\_OPTS | HDFS\_NAMENODE\_OPTS | 
| HADOOP\_NFS3\_OPTS | HDFS\_NFS3\_OPTS | 
| HADOOP\_NFS3\_SECURE\_EXTRA\_OPTS | HDFS\_NFS3\_SECURE\_EXTRA\_OPTS | | HADOOP\_PORTMAP\_OPTS | HDFS\_PORTMAP\_OPTS | 
| HADOOP\_SECONDARYNAMENODE\_OPTS | 
HDFS\_SECONDARYNAMENODE\_OPTS | 
| HADOOP\_ZKFC\_OPTS | HDFS\_ZKFC\_OPTS |


---

* [HADOOP-13588](https://issues.apache.org/jira/browse/HADOOP-13588) | *Major* | **ConfServlet should respect Accept request header**

Conf HTTP service should set response's content type according to the Accept header in the request.


---

* [HDFS-10636](https://issues.apache.org/jira/browse/HDFS-10636) | *Major* | **Modify ReplicaInfo to remove the assumption that replica metadata and data are stored in java.io.File.**

**WARNING: No release note provided for this change.**


---

* [HADOOP-13218](https://issues.apache.org/jira/browse/HADOOP-13218) | *Major* | **Migrate other Hadoop side tests to prepare for removing WritableRPCEngine**

**WARNING: No release note provided for this change.**



