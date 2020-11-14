
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
# Apache HBase  1.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-23174](https://issues.apache.org/jira/browse/HBASE-23174) | *Blocker* | **Upgrade jackson and jackson-databind to 2.9.10 (branch-1)**

Jackson has been updated for the Apache HBase REST Proxy to address CVE-2019-16335 and CVE-2019-14540.


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

* [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | *Blocker* | **Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs**

<!-- markdown -->

the Apache HBase REST Proxy now uses Jackson Databind version 2.9.10.1 to address the following CVEs

  - CVE-2019-16942
  - CVE-2019-16943

Users of prior releases with Jackson Databind 2.9.10 are advised to either upgrade to this release or to upgrade their local Jackson Databind jar directly.


---

* [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | *Minor* | **Log message about CleanerChore delegate initialization should be at INFO**

CleanerChore delegate initialization is now logged at INFO level instead of DEBUG


---

* [HBASE-23287](https://issues.apache.org/jira/browse/HBASE-23287) | *Blocker* | **WALs not aged off of HDFS because LogCleaner is not added to choreService**

<!-- markdown -->

Prior to this change HBase 1.4.11 and 1.5.0 based clusters would fail to clean up WALs from the oldWALs area automatically. With this change in place clusters should return to the expected behavior of cleaning up WALs that are no longer needed.


---

* [HBASE-23234](https://issues.apache.org/jira/browse/HBASE-23234) | *Major* | **Provide .editorconfig based on checkstyle configuration**

Adds a .editorconfig file with configurations populated by IntelliJ, based on our checkstyle configuration. There's lots of IntelliJ-specific configs in here that I assume are not replicated to Eclipse or Netbeans users. Any devs using those tools should push whatever updates they see fit, but please start with the checkstyle configs as the origin of truth.


---

* [HBASE-23590](https://issues.apache.org/jira/browse/HBASE-23590) | *Major* | **Update maxStoreFileRefCount to maxCompactedStoreFileRefCount**

RegionsRecoveryChore introduced as part of HBASE-22460 tries to reopen regions based on config: hbase.regions.recovery.store.file.ref.count.
Region reopen needs to take into consideration all compacted away store files that belong to the region and not store files(non-compacted).

Fixed this bug as part of this Jira. 
Updated description for corresponding configs:

1. hbase.master.regions.recovery.check.interval :

Regions Recovery Chore interval in milliseconds. This chore keeps running at this interval to find all regions with configurable max store file ref count and reopens them. Defaults to 20 mins

2. hbase.regions.recovery.store.file.ref.count :

Very large number of ref count on a compacted store file indicates that it is a ref leak on that object(compacted store file). Such files can not be removed after it is invalidated via compaction. Only way to recover in such scenario is to reopen the region which can release all resources, like the refcount, leases, etc. This config represents Store files Ref Count threshold value considered for reopening regions. Any region with compacted store files ref count \> this value would be eligible for reopening by master. Here, we get the max refCount among all refCounts on all compacted away store files that belong to a particular region. Default value -1 indicates this feature is turned off. Only positive integer value should be provided to enable this feature.


---

* [HBASE-23675](https://issues.apache.org/jira/browse/HBASE-23675) | *Minor* | **Move to Apache parent POM version 22**

Updated parent pom to Apache version 22.


---

* [HBASE-23153](https://issues.apache.org/jira/browse/HBASE-23153) | *Major* | **PrimaryRegionCountSkewCostFunction SLB function should implement CostFunction#isNeeded**

<!-- markdown -->
The `PrimaryRegionCountSkewCostFunction` for the `StochasticLoadBalancer` is only needed when the read replicas feature is enabled. With this change, that function now properly indicates that it is not needed when the read replica feature is off.

If this improvement is not available, operators with clusters that are not using the read replica feature should manually disable it by setting `hbase.master.balancer.stochastic.primaryRegionCountCost` to `0.0` in hbase-site.xml for all HBase Masters.



