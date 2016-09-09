
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
# Apache HBase  0.96.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-10116](https://issues.apache.org/jira/browse/HBASE-10116) | *Minor* | **SlabCache metrics improvements**

This change introduces DirectMemory reporting to the RegionServer status page. Oracle JDK6 (1.6.0\_31 in my test) doesn't expose "java.nio:type=BufferPool,name=direct", so DirectMemoryUtils#getDirectMemoryUsage (and thus the change to rs-status#memoryStats) reports 0 on that environment, even when DirectMemory is being consumed.


---

* [HBASE-10157](https://issues.apache.org/jira/browse/HBASE-10157) | *Major* | **Provide CP hook post log replay**

A CP hook (postLogReplay) is added which will be called once distributed log replay on a region is getting over. Please remember that when distributed log replay is not enabled or there is nothing to be replayed for a region, this hook will not get called for that region.


---

* [HBASE-10225](https://issues.apache.org/jira/browse/HBASE-10225) | *Major* | **Bug in calls to RegionObsever.postScannerFilterRow**

This fix breaks src compatibility. If users try recompiling their CP impl with new HBase jar, they MAY have to change. (If they have overridden this method)
This does not break binary compatibility


---

* [HBASE-10366](https://issues.apache.org/jira/browse/HBASE-10366) | *Critical* | **0.94 filterRow() may be skipped in 0.96(or onwards) code**

Thanks for the reviews! I've integrated the v1 patch into trunk, 0.98 & 0.96 branches.


---

* [HBASE-10249](https://issues.apache.org/jira/browse/HBASE-10249) | *Major* | **TestReplicationSyncUpTool fails because failover takes too long**

This change also fixes a potential data loss issue when using ZK multi actions because region servers could try to failover themselves (the replication sync up tool acts as a RS too)


---

* [HBASE-10422](https://issues.apache.org/jira/browse/HBASE-10422) | *Major* | **ZeroCopyLiteralByteString.zeroCopyGetBytes has an unusable prototype and conflicts with AsyncHBase**

**WARNING: No release note provided for this change.**


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


---

* [HBASE-10548](https://issues.apache.org/jira/browse/HBASE-10548) | *Minor* | **Correct commons-math dependency version**

Downgrades HBase's dependency on commons-math to 2.1, which is consistent with all stable releases of Hadoop.


---

* [HBASE-10436](https://issues.apache.org/jira/browse/HBASE-10436) | *Critical* | **restore regionserver lists removed from hbase 0.96+ jmx**

Many of the metrics exposed in 0.94 were removed with the refactorization of metrics in 0.96.  This patch restores the availability of the live and dead regionserver lists.  In 0.94 this used to be found as a large nested structure which included regionserver lists and metrics from each region. 

 {
    "name" : "hadoop:service=Master,name=Master",
    "modelerType" : "org.apache.hadoop.hbase.master.MXBeanImpl",
    "ZookeeperQuorum" : "localhost:2181",
  ....
   "RegionsInTransition" : [ ],
    "RegionServers" : [ {
      "key" : "localhost,48346,1390857257246",
      "value" : {
        "load" : 2,
....
      
In 0.96.0, 0.96.1.x and 0.98.0 did not contain this list -- it only contained counts of the number of live and dead regionservers.  After this patch, the list are present in a ';' separated field like so:

{
    "name" : "Hadoop:service=HBase,name=Master,sub=Server",
    "modelerType" : "Master,sub=Server",
    "tag.Context" : "master",
    "tag.liveRegionServers" : "localhost,56196,1391992019130",
    "tag.deadRegionServers" : "localhost,40010,1391035309673;localhost,41408,1391990380724;localhost,38682,1390950017735",
    ...
}


---

* [HBASE-8803](https://issues.apache.org/jira/browse/HBASE-8803) | *Major* | **region\_mover.rb should move multiple regions at a time**

Multithread the region mover so can run more than one region move at a time.  Specify how many threads on the command line.  Feature will make rolling restart complete the sooner (if with a little more disruption as more regions are in flight at a time).


---

* [HBASE-10707](https://issues.apache.org/jira/browse/HBASE-10707) | *Major* | **Backport parent issue to 0.96**

See parent issue for release note on how to use this new feature.


---

* [HBASE-9778](https://issues.apache.org/jira/browse/HBASE-9778) | *Major* | **Add hint to ExplicitColumnTracker to avoid seeking**

Introduces a new scan attribute to allow a scan operation with explicit columns (Scan.addColumn) to opportunistically look ahead a few KeyValues (columns/versions) before scheduling a seek operation to seek between columns.

A seek is efficient when it can seek past 5-10 KeyValue (columns) or 512-1024 bytes. With small rows and few versions look ahead is typically more efficient.

API:
{code}
    Scan s = new Scan(...);
    s.addColumn(...);
    // instructs the RegionServer to attempt two iterations of next before scheduling a seek
    s.setAttribute(Scan.HINT\_LOOKAHEAD, Bytes.toBytes(2));
    table.getScanner(s);
{code}


---

* [HBASE-10741](https://issues.apache.org/jira/browse/HBASE-10741) | *Major* | **Deprecate HTablePool and HTableFactory**

HTablePool and HTableFactory are relics and are going away. See HConnection#getTable instead.



