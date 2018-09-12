
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
# Apache HBase  2.0.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | *Minor* | **The hbase shell clone\_snaphost command returns bad error message**

<!-- markdown -->

When attempting to clone a snapshot but using a namespace that does not exist, the HBase shell will now correctly report the exception as caused by the passed namespace. Previously, the shell would report that the problem was an unknown namespace but it would claim the user provided table name was not found as a namespace. Both before and after this change the shell properly used the passed namespace to attempt to handle the request.


---

* [HBASE-20327](https://issues.apache.org/jira/browse/HBASE-20327) | *Minor* | **When qualifier is not specified, append and incr operation do not work (shell)**

This change will enable users to perform append and increment operation with null qualifier via hbase-shell.


---

* [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | *Minor* | **Client is not able to execute REST queries in a secure cluster**

Added 'hbase.rest.http.allow.options.method' configuration property to allow user to decide whether Rest Server HTTP should allow OPTIONS method or not. By default it is enabled in HBase 2.1.0+ versions and in other versions it is disabled.
Similarly 'hbase.thrift.http.allow.options.method' is added HBase 1.5, 2.1.0 and 3.0.0 versions. It is disabled by default.


---

* [HBASE-20544](https://issues.apache.org/jira/browse/HBASE-20544) | *Blocker* | **downstream HBaseTestingUtility fails with invalid port**

<!-- markdown -->

HBase now relies on an internal mechanism to determine when it is running a local hbase cluster meant for external interaction vs an encapsulated test. When created via the `HBaseTestingUtility`, ports for Master and RegionServer services and UIs will be set to random ports to allow for multiple parallel uses on a single machine. Normally when running a Standalone HBase Deployment (as described in the HBase Reference Guide) the ports will be picked according to the same defaults used in a full cluster set up. If you wish to instead use the random port assignment set `hbase.localcluster.assign.random.ports` to true.


---

* [HBASE-20661](https://issues.apache.org/jira/browse/HBASE-20661) | *Major* | **Move version from 2.0.0 to 2.0.1-SNAPSHOT in branch-2.0**

Move version from 2.0.0 to 2.0.1-SNAPSHOT in all poms.


---

* [HBASE-20592](https://issues.apache.org/jira/browse/HBASE-20592) | *Minor* | **Create a tool to verify tables do not have prefix tree encoding**

PreUpgradeValidator tool with DataBlockEncoding validator was added to verify cluster is upgradable to HBase 2.


---

* [HBASE-20634](https://issues.apache.org/jira/browse/HBASE-20634) | *Critical* | **Reopen region while server crash can cause the procedure to be stuck**

A second attempt at fixing HBASE-20173. Fixes unfinished keeping of server state inside AM (ONLINE=\>SPLITTING=\>OFFLINE=\>null). Concurrent unassigns look at server state to figure if they should wait on SCP to wake them up or not.


---

* [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | *Critical* | **REST Java client is not able to negotiate with the server in the secure mode**

Adds a negotiation logic between a secure java REST client and server. After this jira the Java REST client will start responding to the Negotiate challenge sent by the server. Adds RESTDemoClient which can be used to verify whether the secure Java REST client works against secure REST server or not.



