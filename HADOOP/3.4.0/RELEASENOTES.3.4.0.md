
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
# Apache Hadoop  3.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HDFS-15281](https://issues.apache.org/jira/browse/HDFS-15281) | *Major* | **ZKFC ignores dfs.namenode.rpc-bind-host and uses dfs.namenode.rpc-address to bind to host address**

ZKFC binds host address to "dfs.namenode.servicerpc-bind-host", if configured. Otherwise, it binds to "dfs.namenode.rpc-bind-host". If neither of those is configured, ZKFC binds itself to NameNode RPC server address (effectively "dfs.namenode.rpc-address").


---

* [HADOOP-17010](https://issues.apache.org/jira/browse/HADOOP-17010) | *Major* | **Add queue capacity weights support in FairCallQueue**

When FairCallQueue is enabled, user can specify capacity allocation among all sub-queues via configuration “ipc.\<port\>.callqueue.capacity.weights”. The value of this config is a comma-separated list of positive integers, each of which specifies the weight associated with the sub-queue at that index. This list length should be IPC scheduler priority levels, defined by "scheduler.priority.levels". 

By default, each sub-queue is associated with weight 1, i.e., all sub-queues are allocated with the same capacity.


---

* [HADOOP-17024](https://issues.apache.org/jira/browse/HADOOP-17024) | *Major* | **ListStatus on ViewFS root (ls "/") should list the linkFallBack root (configured target root).**

ViewFS#listStatus on root("/") considers listing from fallbackLink if available. If the same directory name is present in configured mount path as well as in fallback link, then only the configured mount path will be listed in the returned result.


---

* [HDFS-15288](https://issues.apache.org/jira/browse/HDFS-15288) | *Major* | **Add Available Space Rack Fault Tolerant BPP**

Added a new BlockPlacementPolicy: "AvailableSpaceRackFaultTolerantBlockPlacementPolicy" which uses the same optimization logic as the AvailableSpaceBlockPlacementPolicy along with spreading the replicas across maximum number of racks, similar to BlockPlacementPolicyRackFaultTolerant.
The BPP can be configured by setting the blockplacement policy class as org.apache.hadoop.hdfs.server.blockmanagement.AvailableSpaceRackFaultTolerantBlockPlacementPolicy


---

* [HADOOP-17079](https://issues.apache.org/jira/browse/HADOOP-17079) | *Major* | **Optimize UGI#getGroups by adding UGI#getGroupsSet**

Added a UserGroupMapping#getGroupsSet() API and deprecate UserGroupMapping#getGroups.

The UserGroupMapping#getGroups() can be expensive as it involves Set-\>List conversion. For user with large group membership (i.e., \> 1000 groups), we recommend using getGroupSet to avoid the conversion and fast membership look up.


---

* [HDFS-15385](https://issues.apache.org/jira/browse/HDFS-15385) | *Critical* | **Upgrade boost library to 1.72**

Boost 1.72 is required when building native code.


---

* [HADOOP-17091](https://issues.apache.org/jira/browse/HADOOP-17091) | *Major* | **[JDK11] Fix Javadoc errors**

<!-- markdown -->
* Upgraded to Yetus master to change javadoc goals.
* Changed javadoc goals from `javadoc:javadoc` to `process-sources javadoc:javadoc-no-fork`.
* Javadoc with JDK11 fails in some modules. Ignored them for now and we will fix them later.


---

* [HADOOP-17222](https://issues.apache.org/jira/browse/HADOOP-17222) | *Major* | ** Create socket address leveraging URI cache**

DFS client can use the newly added URI cache when creating socket address for read operations. By default it is disabled. When enabled, creating socket address will use cached URI object based on host:port to reduce the frequency of URI object creation.

To enable it, set the following config key to true:
\<property\>
  \<name\>dfs.client.read.uri.cache.enabled\</name\>
  \<value\>true\</value\>
\</property\>


---

* [HADOOP-17215](https://issues.apache.org/jira/browse/HADOOP-17215) | *Major* | **ABFS: Support for conditional overwrite**

ABFS: Support for conditional overwrite.


---

* [HDFS-15025](https://issues.apache.org/jira/browse/HDFS-15025) | *Major* | **Applying NVDIMM storage media to HDFS**

Add a new storage type NVDIMM and a new storage policy ALL\_NVDIMM for HDFS. The NVDIMM storage type is for non-volatile random-access memory storage medias whose data survives when DataNode restarts.


---

* [HDFS-15098](https://issues.apache.org/jira/browse/HDFS-15098) | *Major* | **Add SM4 encryption method for HDFS**

New encryption codec "SM4/CTR/NoPadding" is added. Requires openssl version \>=1.1.1 for native implementation.


---

* [YARN-9809](https://issues.apache.org/jira/browse/YARN-9809) | *Major* | **NMs should supply a health status when registering with RM**

Improved node registration with node health status.


---

* [HADOOP-17125](https://issues.apache.org/jira/browse/HADOOP-17125) | *Major* | **Using snappy-java in SnappyCodec**

The SnappyCodec uses the snappy-java compression library, rather than explicitly referencing native binaries.  It contains the native libraries for many operating systems and instruction sets, falling back to a pure java implementation. It does requires the snappy-java.jar is on the classpath. It can be found in hadoop-common/lib, and has already been present as part of the avro dependencies



