
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
# Apache HBase  0.94.17 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-10249](https://issues.apache.org/jira/browse/HBASE-10249) | *Major* | **TestReplicationSyncUpTool fails because failover takes too long**

This change also fixes a potential data loss issue when using ZK multi actions because region servers could try to failover themselves (the replication sync up tool acts as a RS too)


---

* [HBASE-10470](https://issues.apache.org/jira/browse/HBASE-10470) | *Critical* | **Import generates huge log file while importing large amounts of data**

Committed to 0.94 and 0.96 as well.


---

* [HBASE-10501](https://issues.apache.org/jira/browse/HBASE-10501) | *Critical* | **Improve IncreasingToUpperBoundRegionSplitPolicy to avoid too many regions**

Changes the default split policy to avoid too many regions with default settings.
The old policy calculates the split size at each RS as follows: MIN(maxFileSize, flushSize\*NoRegions^2) (NoRegions is the number of regions for the table in question seen on this RS)

The new policy calculates the size this way: MIN(maxFileSize, flushSize\*2\*NoRegions^3)
Note that the initial split size is now 2 \* the flushSize. With default settings it increased from 128mb to 256mb.

The new policy still allows spreading out the regions over the cluster quickly, but then grows the desired size fairly quickly in order to avoid too many regions per RS.



