
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

* [HDFS-9624](https://issues.apache.org/jira/browse/HDFS-9624) | *Major* | **DataNode start slowly due to the initial DU command operations**

Make it configurable how long the cached du file is valid. Useful for rolling upgrade.


---

* [HDFS-9525](https://issues.apache.org/jira/browse/HDFS-9525) | *Blocker* | **hadoop utilities need to support provided delegation tokens**

If hadoop.token.files property is defined and configured to one or more comma-delimited delegation token files, Hadoop will use those token files to connect to the services as named in the token.


---

* [YARN-4762](https://issues.apache.org/jira/browse/YARN-4762) | *Blocker* | **NMs failing on DelegatingLinuxContainerRuntime init with LCE on**

Fixed CgroupHandler's creation and usage to avoid NodeManagers crashing when LinuxContainerExecutor is enabled.


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

* [YARN-4784](https://issues.apache.org/jira/browse/YARN-4784) | *Major* | **Fairscheduler: defaultQueueSchedulingPolicy should not accept FIFO**

Clusters cannot use FIFO policy as the defaultQueueSchedulingPolicy. Clusters with a single level of queues will have to explicitly set the policy to FIFO if that is desired.


---

* [HADOOP-10694](https://issues.apache.org/jira/browse/HADOOP-10694) | *Major* | **Remove synchronized input streams from Writable deserialization**

Remove invisible synchronization primitives from DataInputBuffer


---

* [HADOOP-12782](https://issues.apache.org/jira/browse/HADOOP-12782) | *Major* | **Faster LDAP group name resolution with ActiveDirectory**

If the user object returned by LDAP server has the user's group object DN (supported by Active Directory), Hadoop can reduce LDAP group mapping latency by setting hadoop.security.group.mapping.ldap.search.attr.memberof to memberOf.


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

It is now possible to specify multiple jar files for the libjars argument using a wildcard. For example, you can specify "-libjars 'libs/\*'" as a shorthand for all jars in the libs directory.


---

* [YARN-5137](https://issues.apache.org/jira/browse/YARN-5137) | *Major* | **Make DiskChecker pluggable in NodeManager**

Added new plugin property yarn.nodemanager.disk-validator to allow the NodeManager to use an alternate class for checking whether a disk is good or not.


---

* [HDFS-8312](https://issues.apache.org/jira/browse/HDFS-8312) | *Critical* | **Trash does not descent into child directories to check for permissions**

HDFS-8312. Added permission check for moving file to Trash. (Weiwei Yang via Eric Yang)


---

* [MAPREDUCE-6776](https://issues.apache.org/jira/browse/MAPREDUCE-6776) | *Major* | **yarn.app.mapreduce.client.job.max-retries should have a more useful default**

The default value of yarn.app.mapreduce.client.job.max-retries has been changed from 0 to 3.  This will help protect clients from failures that are transient.  True failures may take slightly longer now due to the retries.


---

* [HADOOP-13522](https://issues.apache.org/jira/browse/HADOOP-13522) | *Major* | **Add %A and %a formats for fs -stat command to print permissions**

Added permissions to the fs stat command. They are now available as symbolic (%A) and octal (%a) formats, which are in line with Linux.


---

* [YARN-5388](https://issues.apache.org/jira/browse/YARN-5388) | *Critical* | **Deprecate and remove DockerContainerExecutor**

DockerContainerExecutor is deprecated starting 2.9.0 and removed from 3.0.0. Please use LinuxContainerExecutor with the DockerRuntime to run Docker containers on YARN clusters.


---

* [HDFS-10756](https://issues.apache.org/jira/browse/HDFS-10756) | *Major* | **Expose getTrashRoot to HTTPFS and WebHDFS**

"getTrashRoot" returns a trash root for a path. Currently in DFS if the path "/foo" is a normal path, it returns "/user/$USER/.Trash" for "/foo" and if "/foo" is an encrypted zone, it returns "/foo/.Trash/$USER" for the child file/dir of "/foo". This patch is about to override the old "getTrashRoot" of httpfs and webhdfs, so that the behavior of returning trash root in httpfs and webhdfs are consistent with DFS.


---

* [YARN-5825](https://issues.apache.org/jira/browse/YARN-5825) | *Major* | **ProportionalPreemptionalPolicy could use readLock over LeafQueue instead of synchronized block**

**WARNING: No release note provided for this change.**


---

* [HADOOP-12705](https://issues.apache.org/jira/browse/HADOOP-12705) | *Major* | **Upgrade Jackson 2.2.3 to 2.7.8**

We are sorry for causing pain for everyone for whom this Jackson update causes problems, but it was proving impossible to stay on the older version: too much code had moved past it, and by staying back we were limiting what Hadoop could do, and giving everyone who wanted an up to date version of Jackson a different set of problems. We've selected Jackson 2.7.8 as it fixed fix a security issue in XML parsing, yet proved compatible at the API level with the Hadoop codebase --and hopefully everything downstream.


---

* [HADOOP-13050](https://issues.apache.org/jira/browse/HADOOP-13050) | *Blocker* | **Upgrade to AWS SDK 1.11.45**

The dependency on the AWS SDK has been bumped to 1.11.45.


---

* [HADOOP-13953](https://issues.apache.org/jira/browse/HADOOP-13953) | *Major* | **Make FTPFileSystem's data connection mode and transfer mode configurable**

Added two configuration key fs.ftp.data.connection.mode and fs.ftp.transfer.mode, and configure FTP data connection mode and transfer mode accordingly.


---

* [YARN-6110](https://issues.apache.org/jira/browse/YARN-6110) | *Minor* | **Fix opportunistic containers documentation**

Committed to trunk and branch-2



