
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
# Apache HBase  0.94.12 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-9377](https://issues.apache.org/jira/browse/HBASE-9377) | *Major* | **Backport HBASE- 9208 "ReplicationLogCleaner slow at large scale"**

The FileCleanerDelegate interface is changed. External classes that directly used to implement that interface have to be changed. Classes that extend BaseHFileCleanerDelegate or BaseLogCleanerDelegate only have to be recompiled.


---

* [HBASE-9468](https://issues.apache.org/jira/browse/HBASE-9468) | *Major* | **Previous active master can still serves RPC request when it is trying recovering expired zk session**

Adds option to disable master's attempt at recovering zookeeper session: i.e. just fail.  Set the fail-fast option when you have a backup master running that you can fail to.


---

* [HBASE-9482](https://issues.apache.org/jira/browse/HBASE-9482) | *Major* | **Do not enforce secure Hadoop for secure HBase**

While it is possible to run secure HBase without securing underlying filesystem, it is recommended that you run secure HBase on top of a secured HDFS cluster to provide stronger guarantees of security. In such cases, you must configure HBase services to be able to authenticate to HDFS services.

However, if the cluster hosting HBase service is protected via other means; for example if it exports only HBase services to external users; you may save some overhead by running secure HBase over unsecured HDFS. In such cases, you must ensure that the HDSF services are not accessible to external user via any means.


---

* [HBASE-9534](https://issues.apache.org/jira/browse/HBASE-9534) | *Major* | **Short-Circuit Coprocessor HTable access when on the same server**

Allow coprocessors accessing an HTable to short-circuit access to the local HRegionServer, rather than requiring the usual RPC path.



