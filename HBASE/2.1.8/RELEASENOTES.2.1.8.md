
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
# Apache HBase  2.1.8 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | *Critical* | **Define a public interface for Canary and move existing implementation to LimitedPrivate**

<!-- markdown -->
Downstream users who wish to programmatically check the health of their HBase cluster may now rely on a public interface derived from the previously private implementation of the canary cli tool. The interface is named `Canary` and can be found in the user facing javadocs.

Downstream users who previously relied on the invoking the canary via the Java classname (either on the command line or programmatically) will need to change how they do so because the non-public implementation has moved.


---

* [HBASE-20626](https://issues.apache.org/jira/browse/HBASE-20626) | *Major* | **Change the value of "Requests Per Second" on WEBUI**

Use 'totalRowActionRequestCount' to calculate QPS on web UI.


---

* [HBASE-23177](https://issues.apache.org/jira/browse/HBASE-23177) | *Major* | **If fail to open reference because FNFE, make it plain it is a Reference**

Changes the message on the FNFE exception thrown when the file a Reference points to is missing; the message now includes detail on Reference as well as pointed-to file so can connect how FNFE relates to region open.


---

* [HBASE-23172](https://issues.apache.org/jira/browse/HBASE-23172) | *Minor* | **HBase Canary region success count metrics reflect column family successes, not region successes**

Added a comment to make clear that read/write success counts are tallying column family success counts, not region success counts. 

Additionally, the region read and write latencies previously only stored the latencies of the last column family of the region reads/writes. This has been fixed by using a map of each region to a list of read and write latency values.


---

* [HBASE-23222](https://issues.apache.org/jira/browse/HBASE-23222) | *Critical* | **Better logging and mitigation for MOB compaction failures**

<!-- markdown -->

The MOB compaction process in the HBase Master now logs more about its activity.

In the event that you run into the problems described in HBASE-22075, there is a new HFileCleanerDelegate that will stop all removal of MOB hfiles from the archive area. It can be configured by adding `org.apache.hadoop.hbase.mob.ManualMobMaintHFileCleaner` to the list configured for `hbase.master.hfilecleaner.plugins`. This new cleaner delegate will cause your archive area to grow unbounded; you will have to manually prune files which may be prohibitively complex. Consider if your use case will allow you to mitigate by disabling mob compactions instead.

Caveats:
* Be sure the list of cleaner delegates still includes the default cleaners you will likely need: ttl, snapshot, and hlink.
* Be mindful that if you enable this cleaner delegate then there will be *no* automated process for removing these mob hfiles. You should see a single region per table in `%hbase_root%/archive` that accumulates files over time. You will have to determine which of these files are safe or not to remove.
* You should list this cleaner delegate after the snapshot and hlink delegates so that you can enable sufficient logging to determine when an archived mob hfile is needed by those subsystems. When set to `TRACE` logging, the CleanerChore logger will include archive retention decision justifications.
* If your use case creates a large number of uniquely named tables, this new delegate will cause memory pressure on the master.


---

* [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | *Blocker* | **Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs**

<!-- markdown -->

the Apache HBase REST Proxy now uses Jackson Databind version 2.9.10.1 to address the following CVEs

  - CVE-2019-16942
  - CVE-2019-16943

Users of prior releases with Jackson Databind 2.9.10 are advised to either upgrade to this release or to upgrade their local Jackson Databind jar directly.


---

* [HBASE-23243](https://issues.apache.org/jira/browse/HBASE-23243) | *Major* | **[pv2] Filter out SUCCESS procedures; on decent-sized cluster, plethora overwhelms problems**

The 'Procedures & Locks' tab in Master UI only displays problematic Procedures now (RUNNABLE, WAITING-TIMEOUT, etc.). It no longer notes procedures whose state is SUCCESS.


---

* [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | *Minor* | **Log message about CleanerChore delegate initialization should be at INFO**

CleanerChore delegate initialization is now logged at INFO level instead of DEBUG


---

* [HBASE-19450](https://issues.apache.org/jira/browse/HBASE-19450) | *Minor* | **Add log about average execution time for ScheduledChore**

<!-- markdown -->
HBase internal chores now log a moving average of how long execution of each chore takes at `INFO` level for the logger `org.apache.hadoop.hbase.ScheduledChore`.

Such messages will happen at most once per five minutes.


---

* [HBASE-23153](https://issues.apache.org/jira/browse/HBASE-23153) | *Major* | **PrimaryRegionCountSkewCostFunction SLB function should implement CostFunction#isNeeded**

<!-- markdown -->
The `PrimaryRegionCountSkewCostFunction` for the `StochasticLoadBalancer` is only needed when the read replicas feature is enabled. With this change, that function now properly indicates that it is not needed when the read replica feature is off.

If this improvement is not available, operators with clusters that are not using the read replica feature should manually disable it by setting `hbase.master.balancer.stochastic.primaryRegionCountCost` to `0.0` in hbase-site.xml for all HBase Masters.



