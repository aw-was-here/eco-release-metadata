
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
# Apache HBase  0.98.11 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-8329](https://issues.apache.org/jira/browse/HBASE-8329) | *Major* | **Limit compaction speed**

Adds compaction throughput limit mechanism(the word "throttle" is already used when choosing compaction thread pool, so use a different word here to avoid ambiguity). Default is org.apache.hadoop.hbase.regionserver.compactions.PressureAwareCompactionThroughputController, will limit throughput as follow:
1. In off peak hours, use a fixed limitation "hbase.hstore.compaction.throughput.offpeak" (default is Long.MAX\_VALUE which means no limitation).
2. In normal hours, the limitation is tuned between "hbase.hstore.compaction.throughput.lower.bound"(default 10MB/sec) and "hbase.hstore.compaction.throughput.higher.bound"(default 20MB/sec), using the formula "lower + (higer - lower) \* param" where param is in range [0.0, 1.0] and calculate based on store files count on this regionserver.
3. If some stores have too many store files(storefilesCount \> blockingFileCount), then there is no limitation no matter peak or off peak.
You can set "hbase.regionserver.throughput.controller" to org.apache.hadoop.hbase.regionserver.throttle.NoLimitThroughputController to disable throughput controlling.
And we have implemented ConfigurationObserver which means you can change all configurations above and do not need to restart cluster.


---

* [HBASE-12108](https://issues.apache.org/jira/browse/HBASE-12108) | *Minor* | **HBaseConfiguration: set classloader before loading xml files**

This patch fixes hbase configuration not found issues when HBase jars are loaded in a child class loader whose parent has already loaded hadoop classes. Setting appropriate classloader in Configuration should fix this issue.


---

* [HBASE-7332](https://issues.apache.org/jira/browse/HBASE-7332) | *Minor* | **[webui] HMaster webui should display the number of regions a table has.**

Adds counts for various regions states to the table listing on main page. See attached screenshot.


---

* [HBASE-12961](https://issues.apache.org/jira/browse/HBASE-12961) | *Minor* | **Negative values in read and write region server metrics**

Change read and write request count in ServerLoad from int to long


---

* [HBASE-12976](https://issues.apache.org/jira/browse/HBASE-12976) | *Major* | **Set default value for hbase.client.scanner.max.result.size**

With this setting defaulted now, scanner caching should be set to large value unless the caller knows how many rows it needs/expects back.


---

* [HBASE-12897](https://issues.apache.org/jira/browse/HBASE-12897) | *Major* | **Minimum memstore size is a percentage**

This change lowers the minimum acceptable configured memstore heap percentage from 5% (0.05f) (10% (0.1f) in 0.98) to 0% (0.0f), and in branch 0.98 lowers the maximum acceptable percentage from 90% (0.9f) to 80% (0.8f).


---

* [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | *Major* | **TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class.**

Add support for codec and cipher in HFilePerformanceEvaluation


---

* [HBASE-12070](https://issues.apache.org/jira/browse/HBASE-12070) | *Major* | **Add an option to hbck to fix ZK inconsistencies**

Adds a new option to HBCK tool -fixOrphanedTableZnodes, which fixes orphaned table entries in zookeeper which does not have corresponding meta entries. This state can be from a failed create table attempt.


---

* [HBASE-13008](https://issues.apache.org/jira/browse/HBASE-13008) | *Minor* | **Better default for hbase.regionserver.regionSplitLimit parameter.**

The configuration parameter "hbase.regionserver.regionSplitLimit", the number of regions a regionserver can open before splitting on the server is stopped to limit further region count growth, was lowered from Integer.MAX\_VALUE (2147483647) to a much more reasonable 1000, and documented in hbase-defaults.xml.


---

* [HBASE-13044](https://issues.apache.org/jira/browse/HBASE-13044) | *Minor* | **Configuration option for disabling coprocessor loading**

This change adds two new configuration options:
- "hbase.coprocessor.enabled" controls globally if any coprocessors will be loaded. Set to "false" to disable. Defaults to "true" for compatibility with previous releases.
- "hbase.coprocessor.user.enabled" controls if any user (aka table) coprocessors will be loaded. Set to "false" to disable. Defaults to "true" for compatibility with previous releases.


---

* [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | *Trivial* | **Add "HBase Configuration" link missing on the table details pages**

Add a '/conf' link to UI


---

* [HBASE-12869](https://issues.apache.org/jira/browse/HBASE-12869) | *Major* | **Add a REST API implementation of the ClusterManager interface**

Adds an implementation of ClusterManager to control REST API-managed HBase clusters.



