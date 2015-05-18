
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
# Hadoop HDFS 3.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-8349](https://issues.apache.org/jira/browse/HDFS-8349) | *Minor* | **Remove .xml and documentation references to dfs.webhdfs.enabled**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-8332](https://issues.apache.org/jira/browse/HDFS-8332) | *Major* | **DFS client API calls should check filesystem closed**

Users may need special attention for this change while upgrading to this version. Previously user could call some APIs(example: setReplication) wrongly even after closing the fs object. With this change DFS client will not allow any operations to call on closed fs objects.  As calling fs operations on closed fs is not right thing to do, users need to correct the usage if any.


---

* [HDFS-8241](https://issues.apache.org/jira/browse/HDFS-8241) | *Minor* | **Remove unused NameNode startup option -finalize**

Remove -finalize option from hdfs namenode command.


---

* [HDFS-7985](https://issues.apache.org/jira/browse/HDFS-7985) | *Major* | **WebHDFS should be always enabled**

WebHDFS is mandatory and cannot be disabled.


---

* [HDFS-7460](https://issues.apache.org/jira/browse/HDFS-7460) | *Major* | **Rewrite httpfs to use new shell framework**

This deprecates the following environment variables:

| Old | New |
|:---- |:---- |
| HTTPFS\_LOG | HADOOP\_LOG\_DIR|
| HTTPFS\_CONFG | HADOOP\_CONF\_DIR |


---

* [HDFS-7302](https://issues.apache.org/jira/browse/HDFS-7302) | *Major* | **namenode -rollingUpgrade downgrade may finalize a rolling upgrade**

Remove "downgrade" from "namenode -rollingUpgrade" startup option since it may incorrectly finalize an ongoing rolling upgrade.


---

* [HDFS-7281](https://issues.apache.org/jira/browse/HDFS-7281) | *Major* | **Missing block is marked as corrupted block**

The patch improves the reporting around missing blocks and corrupted blocks.
 
1. A block is missing if and only if all DNs of its expected replicas are dead. 
2. A block is corrupted if and only if all its available replicas are corrupted. So if a block has 3 replicas; one of the DN is dead, the other two replicas are corrupted; it will be marked as corrupted.
3. A new line is added to fsck output to display the corrupt block size per file.
4. A new line is added to fsck output to display the number of missing blocks in the summary section.


---

* [HDFS-6246](https://issues.apache.org/jira/browse/HDFS-6246) | *Minor* | **Remove 'dfs.support.append' flag from trunk code**

Appends in HDFS can no longer be disabled.


---

* [HDFS-5570](https://issues.apache.org/jira/browse/HDFS-5570) | *Major* | **Deprecate hftp / hsftp and replace them with webhdfs / swebhdfs**

Support for hftp and hsftp has been removed.  They have superseded by webhdfs  and swebhdfs.


---

* [HDFS-5079](https://issues.apache.org/jira/browse/HDFS-5079) | *Major* | **Cleaning up NNHAStatusHeartbeat.State DatanodeProtocolProtos.**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-3034](https://issues.apache.org/jira/browse/HDFS-3034) | *Major* | **Remove the deprecated Syncable.sync() method**

Remove the deprecated DFSOutputStream.sync() method.


---

* [HDFS-2538](https://issues.apache.org/jira/browse/HDFS-2538) | *Minor* | **option to disable fsck dots**

fsck does not print out dots for progress reporting by default. To print out dots, you should specify '-showprogress' option.


---

* [HDFS-46](https://issues.apache.org/jira/browse/HDFS-46) | *Major* | **The namespace quota of root directory should not be Integer.MAX\_VALUE**

Change default namespace quota of root directory from Integer.MAX\_VALUE to Long.MAX\_VALUE.



