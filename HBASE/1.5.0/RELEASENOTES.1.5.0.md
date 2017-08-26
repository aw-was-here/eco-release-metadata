
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
# Apache HBase  1.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-18267](https://issues.apache.org/jira/browse/HBASE-18267) | *Major* | **The result from the postAppend is ignored**

**WARNING: No release note provided for this change.**


---

* [HBASE-16993](https://issues.apache.org/jira/browse/HBASE-16993) | *Major* | **BucketCache throw java.io.IOException: Invalid HFile block magic when configuring hbase.bucketcache.bucket.sizes**

Any value for hbase.bucketcache.bucket.sizes  configuration to be multiple of 256.  If that is not the case, instantiation of L2 Bucket cache itself will fail throwing IllegalArgumentException.


---

* [HBASE-18374](https://issues.apache.org/jira/browse/HBASE-18374) | *Major* | **RegionServer Metrics improvements**

This change adds the latency metrics checkAndPut, checkAndDelete, putBatch and deleteBatch . Also the previous regionserver "mutate" latency metrics are renamed to "put" metrics. Batch metrics capture the latency of the entire batch containing put/delete whereas put/delete metrics capture latency per operation. Note this change will break existing monitoring based on regionserver "mutate" latency metric.


---

* [HBASE-18517](https://issues.apache.org/jira/browse/HBASE-18517) | *Major* | **limit max log message width in log4j**

Sets a log length max of 1000 characters.


---

* [HBASE-18469](https://issues.apache.org/jira/browse/HBASE-18469) | *Critical* | **Correct  RegionServer metric of  totalRequestCount**

In HBASE-18469 we introduced a new RegionServer metrics in name of "totalRowActionRequestCount" which counts in all row actions and equals to the sum of "readRequestCount" and "writeRequestCount". Meantime, we have changed "totalRequestCount" to count only once for multi request, while previously we will count in action number of the request. As a result, existing monitoring system on totalRequestCount will still work but see a smaller value, and we strongly recommend to change to use the new metrics to monitor server load.


---

* [HBASE-18533](https://issues.apache.org/jira/browse/HBASE-18533) | *Major* | **Expose BucketCache values to be configured**

This patch exposes configuration for Bucketcache. These configs are very similar to those for the LRU cache, but are described below:

"hbase.bucketcache.single.factor"; /\*\* Single access bucket size \*/
"hbase.bucketcache.multi.factor"; /\*\* Multiple access bucket size \*/
"hbase.bucketcache.memory.factor"; /\*\* In-memory bucket size \*/
"hbase.bucketcache.extrafreefactor"; /\*\* Free this floating point factor of extra blocks when evicting. For example free the number of blocks requested \* (1 + extraFreeFactor) \*/
"hbase.bucketcache.acceptfactor"; /\*\* Acceptable size of cache (no evictions if size \< acceptable) \*/
"hbase.bucketcache.minfactor"; /\*\* Minimum threshold of cache (when evicting, evict until size \< min) \*/



