
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
# Apache HBase  0.94.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-6373](https://issues.apache.org/jira/browse/HBASE-6373) | *Minor* | **Add more context information to audit log messages**

Applied to 0.94 branch too.


---

* [HBASE-6263](https://issues.apache.org/jira/browse/HBASE-6263) | *Minor* | **Use default mode for HBase Thrift gateway if not specified**

The Thrift gateway no longer requires specification on the command line of an implementation type when starting. If missing, the default "threadpool" implementation will be selected.


---

* [HBASE-3271](https://issues.apache.org/jira/browse/HBASE-3271) | *Major* | **Allow .META. table to be exported**

mapreduce.Export is able to export .META. table


---

* [HBASE-6364](https://issues.apache.org/jira/browse/HBASE-6364) | *Major* | **Powering down the server host holding the .META. table causes HBase Client to take excessively long to recover and connect to reassigned .META. table**

The client (ipc.HBaseClient) now keeps a list of the failed connection attempts. It does not retry to connect before 2 seconds after a failure. This can be configured by setting "hbase.ipc.client.failed.servers.expiry": number of milliseconds before retrying the same server. Note that some clients retry multiple times to allow transient errors. If this parameter is set to a large value, these clients will fail without the server being actually retried.


---

* [HBASE-6710](https://issues.apache.org/jira/browse/HBASE-6710) | *Critical* | **0.92/0.94 compatibility issues due to HBASE-5206**

This issue introduces a compatibility mode on the HMaster for 0.92.0 and 0.92.1 clients.  Without the compatibility mode, 0.92.0 and 0.92.1 clients will hang on calls to "enableTable" and "is\_enabled" will always return false, even for enabled tables. To use the compatibility mode, 0.92.0 and 0.92.1 clients require a restart with the following configuration change:
\<name\>zookeeper.znode.tableEnableDisable\</name\>
\<value\>table92\</value\>
In rare failure cases, even with the compatibility mode on, the client may report incorrect results for "is\_enabled" and "is\_disabled." For example, "is\_enabled" may return true even though the table is disabled (the correct value can be checked via the HMaster UI). This issue can be corrected by calling "enable" or "disable" to return the table to the desired state.


---

* [HBASE-6914](https://issues.apache.org/jira/browse/HBASE-6914) | *Major* | **Scans/Gets/Mutations don't give a good error if the table is disabled.**

Scans/Gets/Mutations will now throw a DoNotRetryException, with an explanation, when the tageted table has been disabled.


---

* [HBASE-6916](https://issues.apache.org/jira/browse/HBASE-6916) | *Minor* | **HBA logs at info level errors that won't show in the shell**

The close\_region shell command won't fail silently anymore, code relying on this behavior will now get UnknownRegionException



