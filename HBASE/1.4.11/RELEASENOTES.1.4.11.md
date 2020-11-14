
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
# Apache HBase  1.4.11 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-22596](https://issues.apache.org/jira/browse/HBASE-22596) | *Minor* | **[Chore] Separate the execution period between CompactionChecker and PeriodicMemStoreFlusher**

hbase.regionserver.compaction.check.period is used for controlling how often the compaction checker runs. If unset, will use hbase.server.thread.wakefrequency as default value.

hbase.regionserver.flush.check.period is used for controlling how ofter the flush checker runs. If unset, will use hbase.server.thread.wakefrequency as default value.


---

* [HBASE-22610](https://issues.apache.org/jira/browse/HBASE-22610) | *Trivial* | **[BucketCache] Rename "hbase.offheapcache.minblocksize"**

The config point "hbase.offheapcache.minblocksize" was wrong and is now deprecated. The new config point is "hbase.blockcache.minblocksize".


---

* [HBASE-15666](https://issues.apache.org/jira/browse/HBASE-15666) | *Critical* | **shaded dependencies for hbase-testing-util**

New shaded artifact for testing: hbase-shaded-testing-util.


---

* [HBASE-22856](https://issues.apache.org/jira/browse/HBASE-22856) | *Major* | **HBASE-Find-Flaky-Tests fails with pip error**

Update the base docker image to ubuntu 18.04 for the find flaky tests jenkins job.


---

* [HBASE-22728](https://issues.apache.org/jira/browse/HBASE-22728) | *Major* | **Upgrade jackson dependencies in branch-1**

1. Stopped using Jackson1(org.codehaus.jackson\*) in HBase code base. 
2. Upgraded to Jackson2(com.fasterxml.jackson\*) instead. 
3. Stopped exposing vulnerable Jackson1 dependencies (org.codehaus.jackson:jackson-mapper-asl:1.9.13) so that downstreamers would not pull it in from HBase.
4. However, since Hadoop requires this dependency, put vulnerable jackson at compile scope in hbase-assembly module so that HBase tarball contains this mapper jar in lib. Still, downsteam applications can't pull in Jackson1 from HBase.
5. Upgraded maven assembly plugin to 3.1.1.


---

* [HBASE-22833](https://issues.apache.org/jira/browse/HBASE-22833) | *Minor* | **MultiRowRangeFilter should provide a method for creating a filter which is functionally equivalent to multiple prefix filters**

Provide a public method in MultiRowRangeFilter class to speed the requirement of filtering with multiple row prefixes, it will expand the row prefixes as multiple rowkey ranges by MultiRowRangeFilter, it's more efficient.
{code}
public MultiRowRangeFilter(byte[][] rowKeyPrefixes);
{code}


---

* [HBASE-22810](https://issues.apache.org/jira/browse/HBASE-22810) | *Major* | **Initialize an separate ThreadPoolExecutor for taking/restoring snapshot**

Introduced a new config key for the snapshot taking/restoring operations at master side:  hbase.master.executor.snapshot.threads, its default value is 3.  means we can have 3 snapshot operations running at the same time.


---

* [HBASE-22912](https://issues.apache.org/jira/browse/HBASE-22912) | *Major* | **[Backport] HBASE-22867 to branch-1 to avoid ForkJoinPool to spawn thousands of threads**

Replace the ForkJoinPool in CleanerChore by ThreadPoolExecutor which can limit the spawn thread size and avoid the master GC frequently. The replacement is an internal implementation in CleanerChore, so no config key change, the upstream users can just upgrade the hbase master without any other change.


---

* [HBASE-22900](https://issues.apache.org/jira/browse/HBASE-22900) | *Minor* | **No longer include multiple httpcore and httpclient versions in binary package**

only a single version of httpclient 4 and httpcore 4 are included in the binary tarball now. previously, multiple minor versions were included and which got used would depend on classpath ordering.


---

* [HBASE-22890](https://issues.apache.org/jira/browse/HBASE-22890) | *Major* | **Verify the files when RegionServer is starting and BucketCache is in file mode**

Verify cache file integrity before BucketCache retrieve from file if the IOEngine is persistent. Prevent inconsistency between backingMap and cache file if cache file has been modified. 

The process of verifying integrity is to compare checksum. The checksum is calculated using java.security.MessageDigest class according to cache files full path, actual size and last modified time. 

The encryption algorithms is configurable and default is MD5. The configuration option is : hbase.bucketcache.persistent.file.integrity.check.algorithm


---

* [HBASE-22975](https://issues.apache.org/jira/browse/HBASE-22975) | *Minor* | **Add read and write QPS metrics at server level and table level**

This issue adds read and write QPS(query per second) metrics at server and table level. The table level QPS metrics aggregation at the per-table for each RegionServer. 

Using DropwizardMeter data structure to calculate QPS. And the metrics can be obtained from JMX.


---

* [HBASE-23015](https://issues.apache.org/jira/browse/HBASE-23015) | *Blocker* | **Replace Jackson with relocated gson everywhere but hbase-rest**

<!-- markdown -->

HBase has stopped including Jackson in the classpath seen by downstream  users except for as a part of running the HBase REST Service or when brought in transitively from Apache Hadoop.

Downstream users who still need Jackson classes should include the dependency themselves.

Moving from Jackson2 to shaded Gson can also expose some additional fields in 
serialized JSON strings. e.g. BucketAllocator JSON used to ignore "indexStatistics", "freeSize" earlier, however, now with Gson converter, these fields would be present in serialized string.


---

* [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | *Critical* | **Define a public interface for Canary and move existing implementation to LimitedPrivate**

<!-- markdown -->
Downstream users who wish to programmatically check the health of their HBase cluster may now rely on a public interface derived from the previously private implementation of the canary cli tool. The interface is named `Canary` and can be found in the user facing javadocs.

Downstream users who previously relied on the invoking the canary via the Java classname (either on the command line or programmatically) will need to change how they do so because the non-public implementation has moved.


---

* [HBASE-23101](https://issues.apache.org/jira/browse/HBASE-23101) | *Blocker* | **Backport HBASE-22380 to branch-1**

Incompatible changes were made to the "Region" public interface to make sure a list of clusterIds can be passed to the "bulkLoadHFiles" function to break circle replication during bulk load.

NOTE: Downstream co-processor authors be aware of the change and use the interface/make the necessary adjustments accordingly.


---

* [HBASE-23174](https://issues.apache.org/jira/browse/HBASE-23174) | *Blocker* | **Upgrade jackson and jackson-databind to 2.9.10 (branch-1)**

Jackson has been updated for the Apache HBase REST Proxy to address CVE-2019-16335 and CVE-2019-14540.


---

* [HBASE-23153](https://issues.apache.org/jira/browse/HBASE-23153) | *Major* | **PrimaryRegionCountSkewCostFunction SLB function should implement CostFunction#isNeeded**

<!-- markdown -->
The `PrimaryRegionCountSkewCostFunction` for the `StochasticLoadBalancer` is only needed when the read replicas feature is enabled. With this change, that function now properly indicates that it is not needed when the read replica feature is off.

If this improvement is not available, operators with clusters that are not using the read replica feature should manually disable it by setting `hbase.master.balancer.stochastic.primaryRegionCountCost` to `0.0` in hbase-site.xml for all HBase Masters.



