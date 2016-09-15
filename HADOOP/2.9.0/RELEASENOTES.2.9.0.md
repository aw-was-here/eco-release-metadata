
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
# Apache Hadoop  2.9.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HDFS-9525](https://issues.apache.org/jira/browse/HDFS-9525) | *Blocker* | **hadoop utilities need to support provided delegation tokens**

If hadoop.token.files property is defined and configured to one or more comma-delimited delegation token files, Hadoop will use those token files to connect to the services as named in the token.


---

* [MAPREDUCE-6622](https://issues.apache.org/jira/browse/MAPREDUCE-6622) | *Critical* | **Add capability to set JHS job cache to a task-based limit**

Two recommendations for the mapreduce.jobhistory.loadedtasks.cache.size property:
1) For every 100k of cache size, set the heap size of the Job History Server to 1.2GB.  For example, mapreduce.jobhistory.loadedtasks.cache.size=500000, heap size=6GB.
2) Make sure that the cache size is larger than the number of tasks required for the largest job run on the cluster.  It might be a good idea to set the value slightly higher (say, 20%) in order to allow for job size growth.


---

* [YARN-4762](https://issues.apache.org/jira/browse/YARN-4762) | *Blocker* | **NMs failing on DelegatingLinuxContainerRuntime init with LCE on**

Fixed CgroupHandler\'s creation and usage to avoid NodeManagers crashing when LinuxContainerExecutor is enabled.


---

* [HDFS-1477](https://issues.apache.org/jira/browse/HDFS-1477) | *Major* | **Support reconfiguring dfs.heartbeat.interval and dfs.namenode.heartbeat.recheck-interval without NN restart**

Steps to reconfigure:
1. change value of the parameter in corresponding xml configuration file
2. to reconfigure, run
    hdfs dfsadmin -reconfig namenode \<nn\_addr\>:\<ipc\_port\> start
3. to check status of the most recent reconfigure operation, run
    hdfs dfsadmin -reconfig namenode \<nn\_addr\>:\<ipc\_port\> status
4. to query a list reconfigurable properties on NN, run
    hdfs dfsadmin -reconfig namenode \<nn\_addr\>:\<ipc\_port\> properties


---

* [YARN-4732](https://issues.apache.org/jira/browse/YARN-4732) | *Trivial* | **\*ProcessTree classes have too many whitespace issues**




---

* [HDFS-9349](https://issues.apache.org/jira/browse/HDFS-9349) | *Major* | **Support reconfiguring fs.protected.directories without NN restart**

Steps to reconfigure:
1. change value of the parameter in corresponding xml configuration file
2. to reconfigure, run
    hdfs dfsadmin -reconfig namenode \<nn\_addr\>:\<ipc\_port\> start
3. to check status of the most recent reconfigure operation, run
    hdfs dfsadmin -reconfig namenode \<nn\_addr\>:\<ipc\_port\> status
4. to query a list reconfigurable properties on NN, run
    hdfs dfsadmin -reconfig namenode \<nn\_addr\>:\<ipc\_port\> properties


---

* [MAPREDUCE-6670](https://issues.apache.org/jira/browse/MAPREDUCE-6670) | *Minor* | **TestJobListCache#testEviction sometimes fails on Windows with timeout**

Backport the fix to 2.7 and 2.8


---

* [YARN-4784](https://issues.apache.org/jira/browse/YARN-4784) | *Major* | **Fairscheduler: defaultQueueSchedulingPolicy should not accept FIFO**

Clusters cannot use FIFO policy as the defaultQueueSchedulingPolicy. Clusters with a single level of queues will have to explicitly set the policy to FIFO if that is desired.


---

* [HDFS-3702](https://issues.apache.org/jira/browse/HDFS-3702) | *Minor* | **Add an option for NOT writing the blocks locally if there is a datanode on the same box as the client**

This patch will attempt to allocate all replicas to remote DataNodes, by adding local DataNode to the excluded DataNodes. If no sufficient replicas can be obtained, it will fall back to default block placement policy, which writes one replica to local DataNode.


---

* [HADOOP-10694](https://issues.apache.org/jira/browse/HADOOP-10694) | *Major* | **Remove synchronized input streams from Writable deserialization**

Remove invisible synchronization primitives from DataInputBuffer


---

* [HDFS-9016](https://issues.apache.org/jira/browse/HDFS-9016) | *Major* | **Display upgrade domain information in fsck**

New fsck option "-upgradedomains" has been added to display upgrade domains of any block.


---

* [HDFS-10328](https://issues.apache.org/jira/browse/HDFS-10328) | *Minor* | **Add per-cache-pool default replication num configuration**

Add per-cache-pool default replication num configuration


---

* [HADOOP-13354](https://issues.apache.org/jira/browse/HADOOP-13354) | *Major* | **Update WASB driver to use the latest version (4.2.0) of SDK for Microsoft Azure Storage Clients**

The WASB FileSystem now uses version 4.2.0 of the Azure Storage SDK.


---

* [HADOOP-13403](https://issues.apache.org/jira/browse/HADOOP-13403) | *Major* | **AzureNativeFileSystem rename/delete performance improvements**

WASB has added an optional capability to execute certain FileSystem operations in parallel on multiple threads for improved performance.  Please refer to the Azure Blob Storage documentation page for more information on how to enable and control the feature.


---

* [HADOOP-12747](https://issues.apache.org/jira/browse/HADOOP-12747) | *Major* | **support wildcard in libjars argument**

It is now possible to specify multiple jar files for the libjars argument using a wildcard. For example, you can specify "-libjars \'libs/\*\'" as a shorthand for all jars in the libs directory.


---

* [YARN-5137](https://issues.apache.org/jira/browse/YARN-5137) | *Major* | **Make DiskChecker pluggable in NodeManager**

Added new plugin property yarn.nodemanager.disk-validator to allow the NodeManager to use an alternate class for checking whether a disk is good or not.


---

* [HADOOP-13208](https://issues.apache.org/jira/browse/HADOOP-13208) | *Minor* | **S3A listFiles(recursive=true) to do a bulk listObjects instead of walking the pseudo-tree of directories**

S3A has optimized the listFiles method by doing a bulk listing of all entries under a path in a single S3 operation instead of recursively walking the directory tree.  The listLocatedStatus method has been optimized by fetching results from S3 lazily as the caller traverses the returned iterator instead of doing an eager fetch of all possible results.


---

* [HDFS-8312](https://issues.apache.org/jira/browse/HDFS-8312) | *Critical* | **Trash does not descent into child directories to check for permissions**

HDFS-8312. Added permission check for moving file to Trash. (Weiwei Yang via Eric Yang)



