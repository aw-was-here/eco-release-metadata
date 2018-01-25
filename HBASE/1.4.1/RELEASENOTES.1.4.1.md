
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
# Apache HBase  1.4.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-19691](https://issues.apache.org/jira/browse/HBASE-19691) | *Critical* | **Do not require ADMIN permission for obtaining ClusterStatus**

This change reverts an unintentional requirement for global ADMIN permission to obtain cluster status from the active HMaster.


---

* [HBASE-19358](https://issues.apache.org/jira/browse/HBASE-19358) | *Major* | **Improve the stability of splitting log when do fail over**

After HBASE-19358 we introduced a new property hbase.split.writer.creation.bounded to limit the opening writers for each WALSplitter. If set to true, we won't open any writer for recovered.edits until the entries accumulated in memory reaching hbase.regionserver.hlog.splitlog.buffersize (which defaults at 128M) and will write and close the file in one go instead of keeping the writer open. It's false by default and we recommend to set it to true if your cluster has a high region load (like more than 300 regions per RS), especially when you observed obvious NN/HDFS slow down during hbase (single RS or cluster) failover.


---

* [HBASE-19483](https://issues.apache.org/jira/browse/HBASE-19483) | *Major* | **Add proper privilege check for rsgroup commands**

This JIRA aims at refactoring AccessController, using ACL as core library in CPs.
1. Stripping out a public class AccessChecker from AccessController, using ACL as core library in CPs. AccessChecker don't have any dependency on anything CP related. Create it's instance from other CPS.
2. Change the default value of hbase.security.authorization to false.
3. Don't use CP hooks to check access in RSGroup. Use the access checker instance directly in functions of RSGroupAdminServiceImpl.


---

* [HBASE-11409](https://issues.apache.org/jira/browse/HBASE-11409) | *Major* | **Add more flexibility for input directory structure to LoadIncrementalHFiles**

Allows for users to bulk load entire tables from hdfs by specifying the parameter -loadTable.  This allows you to pass in a table level directory and have all regions column families bulk loaded, if you do not specify the -loadTable parameter LoadIncrementalHFiles will work as before. Note: you must have a pre-created table to run with -loadTable it will not create one for you.


---

* [HBASE-19163](https://issues.apache.org/jira/browse/HBASE-19163) | *Major* | **"Maximum lock count exceeded" from region server's batch processing**

When there are many mutations against the same row in a batch, as each mutation will acquire a shared row lock, it will exceed the maximum shared lock count the java ReadWritelock supports (64k). Along with other optimization, the batch is divided into multiple possible minibatches. A new config is added to limit the maximum number of mutations in the minibatch.

   \<property\>
    \<name\>hbase.regionserver.minibatch.size\</name\>
    \<value\>20000\</value\>
   \</property\>
The default value is 20000.


---

* [HBASE-17513](https://issues.apache.org/jira/browse/HBASE-17513) | *Critical* | **Thrift Server 1 uses different QOP settings than RPC and Thrift Server 2 and can easily be misconfigured so there is no encryption when the operator expects it.**

This change fixes an issue where users could have unintentionally configured the HBase Thrift1 server to run without wire-encryption, when they believed they had configured the Thrift1 server to do so.


---

* [HBASE-15321](https://issues.apache.org/jira/browse/HBASE-15321) | *Major* | **Ability to open a HRegion from hdfs snapshot.**

HRegion.openReadOnlyFileSystemHRegion() provides the ability to open HRegion from a read-only hdfs snapshot.  Because hdfs snapshots are read-only, no cleanup happens when using this API.



