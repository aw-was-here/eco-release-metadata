
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
# Apache HBase  1.2.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-15386](https://issues.apache.org/jira/browse/HBASE-15386) | *Major* | **PREFETCH\_BLOCKS\_ON\_OPEN in HColumnDescriptor is ignored**

This was a non-issue. The PREFETCH\_... flag actually works. While here though made the following additions.

Changes the prefetch TRACE-level loggings to include the word 'Prefetch' in them so you know what they are about.

Changes the cryptic logging of the CacheConfig#toString to have some preamble saying why and what column family is responsible (helps figure what is going on)

Add test that verifies setting flag on HColumnDescriptor actually works.


---

* [HBASE-15640](https://issues.apache.org/jira/browse/HBASE-15640) | *Major* | **L1 cache doesn't give fair warning that it is showing partial stats only when it hits limit**

The blockcache UI tab would stop refreshing at 100k blocks (configurable, see "hbase.ui.blockcache.by.file.max"), which isn't very many blocks when doing a big cache, giving a misleading picture of the content of L1 and/or L2 cache. Up the default limit to 1M blocks (UI takes a while but just a few seconds counting over 1M blocks).

Also, when beyond the limit give the user a noticeable WARNING in the UI.


---

* [HBASE-15645](https://issues.apache.org/jira/browse/HBASE-15645) | *Critical* | **hbase.rpc.timeout is not used in operations of HTable**

Fixes regression where hbase.rpc.timeout configuration was ignored in branch-1.0+

Adds new methods setOperationTimeout, getOperationTimeout, setRpcTimeout, and getRpcTimeout to Table. In branch-1.3+ they are public interfaces and in 1.0-1.2 they are labeled as @InterfaceAudience.Private.

Adds hbase.client.operation.timeout to hbase-default.xml with default of 1200000


---

* [HBASE-15551](https://issues.apache.org/jira/browse/HBASE-15551) | *Minor* | **Make call queue too big exception use servername**

Fixes issue when CallQueueTooBig exception returned to the client could print useless address info (like 0.0.0.0) if RPC server is listening on something other than the host name, making troubleshooting inconvenient.


---

* [HBASE-15720](https://issues.apache.org/jira/browse/HBASE-15720) | *Major* | **Print row locks at the debug dump page**

Adds a section to the debug dump page listing current row locks held.


---

* [HBASE-15801](https://issues.apache.org/jira/browse/HBASE-15801) | *Major* | **Upgrade checkstyle for all branches**

All active branches now use maven-checkstyle-plugin 2.17 and checkstyle 6.18.



