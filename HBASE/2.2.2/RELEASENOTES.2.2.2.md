
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
# Apache HBase  2.2.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-11062](https://issues.apache.org/jira/browse/HBASE-11062) | *Major* | **hbtop**

Introduces hbtop that's a real-time monitoring tool for HBase like Unix's top command. See the ref guide for the details: https://hbase.apache.org/book.html#hbtop


---

* [HBASE-21745](https://issues.apache.org/jira/browse/HBASE-21745) | *Critical* | **Make HBCK2 be able to fix issues other than region assignment**

This issue adds via its subtasks:

 \* An 'HBCK Report' page to the Master UI added by HBASE-22527+HBASE-22709+HBASE-22723+ (since 2.1.6, 2.2.1, 2.3.0). Lists consistency or anomalies found via new hbase:meta consistency checking extensions added to CatalogJanitor (holes, overlaps, bad servers) and by a new 'HBCK chore' that runs at a lesser periodicity that will note filesystem orphans and overlaps as well as the following conditions:
 \*\* Master thought this region opened, but no regionserver reported it. 
 \*\* Master thought this region opened on Server1, but regionserver reported Server2 
 \*\* More than one regionservers reported opened this region
 Both chores can be triggered from the shell to regenerate ‘new’ reports.
 \* Means of scheduling a ServerCrashProcedure (HBASE-21393).
 \* An ‘offline’ hbase:meta rebuild (HBASE-22680).
 \* Offline replace of hbase.version and hbase.id
 \* Documentation on how to use completebulkload tool to ‘adopt’ orphaned data found by new HBCK2 ‘filesystem’ check (see below) and ‘HBCK chore’ (HBASE-22859)
 \* A ‘holes’ and ‘overlaps’ fix that runs in the master that uses new bulk-merge facility to collapse many overlaps in the one go.
 \* hbase-operator-tools HBCK2 client tool got a bunch of additions:
 \*\* A specialized 'fix' for the case where operators ran old hbck 'offlinemeta' repair and destroyed their hbase:meta; it ties together holes in meta with orphaned data in the fs (HBASE-22567)
 \*\* A ‘filesystem’ command that reports on orphan data as well as bad references and hlinks with a ‘fix’ for the latter two options (based on hbck1 facility updated).
 \*\* Adds back the ‘replication’ fix facility from hbck1 (HBASE-22717)

The compound result is that hbck2 is now in excess of hbck1 abilities. The provided functionality is disaggregated as per the hbck2 philosophy of providing 'plumbing' rather than 'porcelain' so there is work to do still adding fix-it playbooks, scripting across outages, and automation.


---

* [HBASE-22796](https://issues.apache.org/jira/browse/HBASE-22796) | *Major* | **[HBCK2] Add fix of overlaps to fixMeta hbck Service**

Adds fix of overlaps to the fixMeta hbck service method. Uses the bulk-merge facility. Merges a max of 10 at a time. Set hbase.master.metafixer.max.merge.count to higher if you want to do more than 10 in the one go.


---

* [HBASE-23040](https://issues.apache.org/jira/browse/HBASE-23040) | *Minor* | **region mover gives NullPointerException instead of saying a host isn't in the cluster**

giving the region mover "unload" command a region server name that isn't recognized by the cluster results in a "I don't know about that host" message instead of a NPE.

set log level to DEBUG if you'd like the region mover to log the set of region server names it got back from the cluster.


---

* [HBASE-22975](https://issues.apache.org/jira/browse/HBASE-22975) | *Minor* | **Add read and write QPS metrics at server level and table level**

This issue adds read and write QPS(query per second) metrics at server and table level. The table level QPS metrics aggregation at the per-table for each RegionServer. 

Using DropwizardMeter data structure to calculate QPS. And the metrics can be obtained from JMX.


---

* [HBASE-23035](https://issues.apache.org/jira/browse/HBASE-23035) | *Major* | **Retain region to the last RegionServer make the failover slower**

Since 2.0.0，when one regionserver crashed and back online again, AssignmentManager will retain the region locations and try assign the regions to this regionserver(same host:port with the crashed one) again. But for 1.x.x, the behavior is round-robin assignment for the regions belong to the crashed regionserver. This jira change the "retain" assignment to round-robin assignment, which is same with 1.x.x version. This change will make the failover faster and improve availability.


---

* [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | *Critical* | **Define a public interface for Canary and move existing implementation to LimitedPrivate**

<!-- markdown -->
Downstream users who wish to programmatically check the health of their HBase cluster may now rely on a public interface derived from the previously private implementation of the canary cli tool. The interface is named `Canary` and can be found in the user facing javadocs.

Downstream users who previously relied on the invoking the canary via the Java classname (either on the command line or programmatically) will need to change how they do so because the non-public implementation has moved.


---

* [HBASE-20626](https://issues.apache.org/jira/browse/HBASE-20626) | *Major* | **Change the value of "Requests Per Second" on WEBUI**

Use 'totalRowActionRequestCount' to calculate QPS on web UI.


---

* [HBASE-23153](https://issues.apache.org/jira/browse/HBASE-23153) | *Major* | **PrimaryRegionCountSkewCostFunction SLB function should implement CostFunction#isNeeded**

<!-- markdown -->
The `PrimaryRegionCountSkewCostFunction` for the `StochasticLoadBalancer` is only needed when the read replicas feature is enabled. With this change, that function now properly indicates that it is not needed when the read replica feature is off.

If this improvement is not available, operators with clusters that are not using the read replica feature should manually disable it by setting `hbase.master.balancer.stochastic.primaryRegionCountCost` to `0.0` in hbase-site.xml for all HBase Masters.



