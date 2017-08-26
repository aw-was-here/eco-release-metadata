
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
# Apache Hadoop  3.0.0-beta1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HADOOP-14535](https://issues.apache.org/jira/browse/HADOOP-14535) | *Major* | **wasb: implement high-performance random access and seek of block blobs**

Random access and seek improvements for the wasb:// (Azure) file system.


---

* [YARN-6798](https://issues.apache.org/jira/browse/YARN-6798) | *Major* | **Fix NM startup failure with old state store due to version mismatch**

This fixes the LevelDB state store for the NodeManager.  As of this patch, the state store versions now correspond to the following table.

- Previous Patch: YARN-5049
-- LevelDB Key: queued
-- Hadoop Versions: 2.9.0, 3.0.0-alpha1
-- Corresponding LevelDB Version: 1.2
- Previous Patch: YARN-6127
-- LevelDB Key: AMRMProxy/NextMasterKey
-- Hadoop Versions: 2.9.0, 3.0.0-alpha4
-- Corresponding LevelDB Version: 1.1


---

* [HADOOP-14539](https://issues.apache.org/jira/browse/HADOOP-14539) | *Major* | **Move commons logging APIs over to slf4j in hadoop-common**

In Hadoop common, fatal log level is changed to error because slf4j API does not support fatal log level.


---

* [HADOOP-14518](https://issues.apache.org/jira/browse/HADOOP-14518) | *Minor* | **Customize User-Agent header sent in HTTP/HTTPS requests by WASB.**

WASB now includes the current Apache Hadoop version in the User-Agent string passed to Azure Blob service. Users also may include optional additional information to identify their application. See the documentation of configuration property fs.wasb.user.agent.id for further details.


---

* [HADOOP-11875](https://issues.apache.org/jira/browse/HADOOP-11875) | *Major* | **[JDK9] Add a second copy of Hamlet without \_ as a one-character identifier**

Added org.apache.hadoop.yarn.webapp.hamlet2 package without \_ as a one-character identifier. Please use this package instead of org.apache.hadoop.yarn.webapp.hamlet.


---

* [HDFS-12206](https://issues.apache.org/jira/browse/HDFS-12206) | *Major* | **Rename the split EC / replicated block metrics**

The metrics and MBeans introduced in HDFS-10999 have been renamed for brevity and clarity.


---

* [HADOOP-13595](https://issues.apache.org/jira/browse/HADOOP-13595) | *Blocker* | **Rework hadoop\_usage to be broken up by clients/daemons/etc.**

This patch changes how usage output is generated to now require a sub-command type.  This allows users to see who the intended audience for  a command is or it is a daemon.


---

* [HDFS-6984](https://issues.apache.org/jira/browse/HDFS-6984) | *Major* | **Serialize FileStatus via protobuf**

FileStatus and FsPermission Writable serialization is deprecated and its implementation (incompatibly) replaced with protocol buffers. The FsPermissionProto record moved from hdfs.proto to acl.proto. HdfsFileStatus is now a subtype of FileStatus. FsPermissionExtension with its associated flags for ACLs, encryption, and erasure coding has been deprecated; users should query these attributes on the FileStatus object directly. The FsPermission instance in AclStatus no longer retains or reports these extended attributes (likely unused).


---

* [HADOOP-14722](https://issues.apache.org/jira/browse/HADOOP-14722) | *Major* | **Azure: BlockBlobInputStream position incorrect after seek**

Bug fix to Azure Filesystem related to HADOOP-14535.


---

* [YARN-6961](https://issues.apache.org/jira/browse/YARN-6961) | *Minor* | **Remove commons-logging dependency from hadoop-yarn-server-applicationhistoryservice module**

commons-logging dependency was removed from hadoop-yarn-server-applicationhistoryservice. If you rely on the transitive commons-logging dependency, please define the dependency explicitly.


---

* [HADOOP-14680](https://issues.apache.org/jira/browse/HADOOP-14680) | *Minor* | **Azure: IndexOutOfBoundsException in BlockBlobInputStream**

Bug fix to Azure Filesystem related to HADOOP-14535


---

* [HDFS-11957](https://issues.apache.org/jira/browse/HDFS-11957) | *Major* | **Enable POSIX ACL inheritance by default**

<!-- markdown -->
HDFS-6962 introduced POSIX ACL inheritance feature but it is disable by
default. Now enable the feature by default. Please be aware any code
expecting the old ACL inheritance behavior will have to be updated.
Please see the HDFS Permissions Guide for further details.


---

* [MAPREDUCE-6870](https://issues.apache.org/jira/browse/MAPREDUCE-6870) | *Major* | **Add configuration for MR job to finish when all reducers are complete (even with unfinished mappers)**

**WARNING: No release note provided for this change.**


---

* [HADOOP-14260](https://issues.apache.org/jira/browse/HADOOP-14260) | *Major* | **Configuration.dumpConfiguration should redact sensitive information**

<!-- markdown -->
Configuration.dumpConfiguration no longer prints out the clear text values for the sensitive keys listed in `hadoop.security.sensitive-config-keys`. Callers can override the default list of sensitive keys either to redact more keys or print the clear text values for a few extra keys for debugging purpose.


---

* [HDFS-12221](https://issues.apache.org/jira/browse/HDFS-12221) | *Major* | **Replace xcerces in XmlEditsVisitor**

New patch with changes in maven dependency. (removed apache xcerces as dependency)


---

* [HADOOP-14726](https://issues.apache.org/jira/browse/HADOOP-14726) | *Minor* | **Mark FileStatus::isDir as final**

The deprecated FileStatus::isDir method has been marked as final. FileSystems should override FileStatus::isDirectory


---

* [HADOOP-14660](https://issues.apache.org/jira/browse/HADOOP-14660) | *Major* | **wasb: improve throughput by 34% when account limit exceeded**

Up to 34% throughput improvement for the wasb:// (Azure) file system when fs.azure.selfthrottling.enable is false fs.azure.autothrottling.enable is true.


---

* [HADOOP-14769](https://issues.apache.org/jira/browse/HADOOP-14769) | *Major* | **WASB: delete recursive should not fail if a file is deleted**

Recursive directory delete improvement for the wasb filesystem.


---

* [HDFS-12303](https://issues.apache.org/jira/browse/HDFS-12303) | *Blocker* | **Change default EC cell size to 1MB for better performance**

**WARNING: No release note provided for this change.**



