
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
# Apache HBase  1.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-15376](https://issues.apache.org/jira/browse/HBASE-15376) | *Major* | **ScanNext metric is size-based while every other per-operation metric is time based**

Removed ScanNext histogram metrics as regionserver level and per-region level metrics since the semantics is not compatible with other similar metrics (size histogram vs latency histogram). 

Instead, this patch adds ScanTime and ScanSize histogram metrics at the regionserver and per-region level.


---

* [HBASE-15243](https://issues.apache.org/jira/browse/HBASE-15243) | *Major* | **Utilize the lowest seek value when all Filters in MUST\_PASS\_ONE FilterList return SEEK\_NEXT\_USING\_HINT**

When all filters in a MUST\_PASS\_ONE FilterList return a SEEK\_USING\_NEXT\_HINT code, we return SEEK\_NEXT\_USING\_HINT from the FilterList#filterKeyValue() to utilize the lowest seek value.


---

* [HBASE-15435](https://issues.apache.org/jira/browse/HBASE-15435) | *Major* | **Add WAL (in bytes) written metric**

Adds a new metric named "writtenBytes" as a per-regionserver metric. Metric Description: 
Size (in bytes) of the data written to the WAL.


---

* [HBASE-15377](https://issues.apache.org/jira/browse/HBASE-15377) | *Major* | **Per-RS Get metric is time based, per-region metric is size-based**

Per-region metrics related to Get histograms are changed from being response size based into being latency based similar to the per-regionserver metrics of the same name.  

Added GetSize histogram metrics at the per-regionserver and per-region level for the response sizes.


---

* [HBASE-15323](https://issues.apache.org/jira/browse/HBASE-15323) | *Major* | **Hbase Rest CheckAndDeleteAPi should be able to delete more cells**

Fixed an issue in REST server checkAndDelete operation where the remaining cells other than the to-be-checked column are also applied in the Delete operation. Also fixed an issue in RemoteHTable where the Delete object was not passed correctly to the REST server side.


---

* [HBASE-12940](https://issues.apache.org/jira/browse/HBASE-12940) | *Major* | **Expose listPeerConfigs and getPeerConfig to the HBase shell**

Adds get\_peer\_config and list\_peer\_configs to the hbase shell.


---

* [HBASE-15322](https://issues.apache.org/jira/browse/HBASE-15322) | *Critical* | **Operations using Unsafe path broken for platforms not having sun.misc.Unsafe**

**WARNING: No release note provided for this change.**


---

* [HBASE-15479](https://issues.apache.org/jira/browse/HBASE-15479) | *Major* | **No more garbage or beware of autoboxing**

This fix decreases client's memory allocation during writes by more than 50%.


---

* [HBASE-15412](https://issues.apache.org/jira/browse/HBASE-15412) | *Major* | **Add average region size metric**

Adds a new metric for called "averageRegionSize" that is emitted as a regionserver metric. Metric description: 
Average region size over the region server including memstore and storefile sizes


---

* [HBASE-15212](https://issues.apache.org/jira/browse/HBASE-15212) | *Major* | **RRCServer should enforce max request size**

Adds a configuration parameter "hbase.ipc.max.request.size" which defaults to 256MB to protect the server against very large incoming RPC requests. All requests larger than this size will be immediately rejected before allocating any resources (memory allocation, etc).


---

* [HBASE-14256](https://issues.apache.org/jira/browse/HBASE-14256) | *Major* | **Flush task message may be confusing when region is recovered**

HBASE-14256 Correct confusing flush task message


---

* [HBASE-15396](https://issues.apache.org/jira/browse/HBASE-15396) | *Minor* | **Enhance mapreduce.TableSplit to add encoded region name**

To aid troubleshooting of MapReduce job that rely on the HBase provided input format, splits now include the encoded region name they cover.


---

* [HBASE-15592](https://issues.apache.org/jira/browse/HBASE-15592) | *Major* | **Print Procedure WAL content**

Use hbase org.apache.hadoop.hbase.procedure2.store.wal.ProcedureWALPrettyPrinter
to print the content of a Procedure WAL.
e.g.
hbase org.apache.hadoop.hbase.procedure2.store.wal.ProcedureWALPrettyPrinter -f /hbase/MasterProcWALs/state-00000000000000002571.log


---

* [HBASE-15400](https://issues.apache.org/jira/browse/HBASE-15400) | *Major* | **Use DateTieredCompactor for Date Tiered Compaction**

With this patch combined with HBASE-15389, when we compact, we can output multiple files along the current window boundaries. There are two use cases:
1. Major compaction: We want to output date tiered store files with data older than max age archived in trunks of the window size on the higher tier. Once a window is old enough, we don't combine the windows to promote to the next tier any further. So files in these windows retain the same timespan as they were minor-compacted last time, which is the window size of the highest tier. Major compaction will touch these files and we want to maintain the same layout. This way, TTL and archiving will be simpler and more efficient.
2. Bulk load files and the old file generated by major compaction before upgrading to DTCP.

This will change the way to enable date tiered compaction.
To turn it on: 
hbase.hstore.engine.class: org.apache.hadoop.hbase.regionserver.DateTieredStoreEngine

With tiered compaction all servers in the cluster will promote windows to higher tier at the same time, so using a compaction throttle is recommended: 
hbase.regionserver.throughput.controller:org.apache.hadoop.hbase.regionserver.compactions.PressureAwareCompactionThroughputController 
hbase.hstore.compaction.throughput.higher.bound and hbase.hstore.compaction.throughput.lower.bound need to be set for desired throughput range as uncompressed rates.

Because there will most likely be more store files around, we need to adjust the configuration so that flush won't be blocked and compaction will be properly throttled: 
hbase.hstore.blockingStoreFiles: change to 50 if using all default parameters when turning on date tiered compaction. Use 1.5~2 x projected file count if changing the parameters, Projected file count = windows per tier x tier count + incoming window min + files older than max age 

Because major compaction is turned on now, we also need to adjust the configuration for max file to compact according to the larger file count:
hbase.hstore.compaction.max: set to the same number as hbase.hstore.blockingStoreFiles.

For more details, please refer to the design spec at https://docs.google.com/document/d/1\_AmlNb2N8Us1xICsTeGDLKIqL6T-oHoRLZ323MG\_uy8/edit#


---

* [HBASE-15537](https://issues.apache.org/jira/browse/HBASE-15537) | *Major* | **Make multi WAL work with WALs other than FSHLog**

Add the delegate config for multiwal back. Now you can use 'hbase.wal.regiongrouping.delegate.provider' to specify the wal provider you want to use for multiwal. For example:
{code}
\<property\>
\<name\>hbase.wal.regiongrouping.delegate.provider\</name\>
\<value\>asyncfs\</value\>
\</property\>
{code}
And the default value is filesystem which is the alias of DefaultWALProvider, i.e., the FSHLog.


---

* [HBASE-15633](https://issues.apache.org/jira/browse/HBASE-15633) | *Major* | **Backport HBASE-15507 to branch-1**

Added update\_peer\_config to the HBase shell and ReplicationAdmin, and provided a callback for custom replication endpoints to be notified of changes to their configuration and peer data


---

* [HBASE-15187](https://issues.apache.org/jira/browse/HBASE-15187) | *Major* | **Integrate CSRF prevention filter to REST gateway**

Protection against CSRF attack can be turned on with config parameter, hbase.rest.csrf.enabled - default value is false.

The custom header to be sent can be changed via config parameter, hbase.rest.csrf.custom.header whose default value is "X-XSRF-HEADER".

Config parameter, hbase.rest.csrf.methods.to.ignore , controls which HTTP methods are not associated with customer header check.

Config parameter, hbase.rest-csrf.browser-useragents-regex , is a comma-separated list of regular expressions used to match against an HTTP request's User-Agent header when protection against cross-site request forgery (CSRF) is enabled for REST server by setting hbase.rest.csrf.enabled to true.

The implementation came from hadoop/hadoop-common-project/hadoop-common/src/main/java/org/apache/hadoop/security/http/RestCsrfPreventionFilter.java

We should periodically update the RestCsrfPreventionFilter.java in hbase codebase to include fixes to the hadoop implementation.



