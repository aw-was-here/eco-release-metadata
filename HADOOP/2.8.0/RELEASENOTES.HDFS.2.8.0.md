
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
# Hadoop HDFS 2.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-8157](https://issues.apache.org/jira/browse/HDFS-8157) | *Major* | **Writes to RAM DISK reserve locked memory for block files**

This change requires setting the dfs.datanode.max.locked.memory configuration key to use the HDFS Lazy Persist feature. Its value limits the combined off-heap memory for blocks in RAM via caching and lazy persist writes.


---

* [HDFS-7933](https://issues.apache.org/jira/browse/HDFS-7933) | *Major* | **fsck should also report decommissioning replicas.**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-7645](https://issues.apache.org/jira/browse/HDFS-7645) | *Major* | **Rolling upgrade is restoring blocks from trash multiple times**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-7501](https://issues.apache.org/jira/browse/HDFS-7501) | *Major* | **TransactionsSinceLastCheckpoint can be negative on SBNs**

Fixed a bug where the StandbyNameNode's TransactionsSinceLastCheckpoint metric may slide into a negative number after every subsequent checkpoint.


---

* [HDFS-6888](https://issues.apache.org/jira/browse/HDFS-6888) | *Major* | **Allow selectively audit logging ops**

Specific HDFS ops can be selectively excluded from audit logging via 'dfs.namenode.audit.log.debug.cmdlist' configuration.


---

* [HDFS-6666](https://issues.apache.org/jira/browse/HDFS-6666) | *Minor* | **Abort NameNode and DataNode startup if security is enabled but block access token is not enabled.**

NameNode and DataNode now abort during startup if attempting to run in secure mode, but block access tokens are not enabled by setting configuration property dfs.block.access.token.enable to true in hdfs-site.xml.  Previously, this case logged a warning, because this would be an insecure configuration.


---

* [HDFS-6564](https://issues.apache.org/jira/browse/HDFS-6564) | *Major* | **Use slf4j instead of common-logging in hdfs-client**

Users may need special attention for this change while upgrading to this version. Previously hdfs client was using commons-logging as the logging framework. With this change it will use slf4j framework. For more details about slf4j, please see: http://www.slf4j.org/manual.html. Also, org.apache.hadoop.hdfs.protocol.CachePoolInfo#LOG public static member variable has been removed as it is not used anywhere. Users need to correct their code if any one has a reference to this variable. One can retrieve the named logger via the logging framework of their choice directly like, org.slf4j.Logger LOG = org.slf4j.LoggerFactory.getLogger(org.apache.hadoop.hdfs.protocol.CachePoolInfo.class);



