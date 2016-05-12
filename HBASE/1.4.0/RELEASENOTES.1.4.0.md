
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


---

* [HBASE-15386](https://issues.apache.org/jira/browse/HBASE-15386) | *Major* | **PREFETCH\_BLOCKS\_ON\_OPEN in HColumnDescriptor is ignored**

This was a non-issue. The PREFETCH\_... flag actually works. While here though made the following additions.

Changes the prefetch TRACE-level loggings to include the word 'Prefetch' in them so you know what they are about.

Changes the cryptic logging of the CacheConfig#toString to have some preamble saying why and what column family is responsible (helps figure what is going on)

Add test that verifies setting flag on HColumnDescriptor actually works.


---

* [HBASE-15640](https://issues.apache.org/jira/browse/HBASE-15640) | *Major* | **L1 cache doesn't give fair warning that it is showing partial stats only when it hits limit**

The blockcache UI tab would stop refreshing at 100k blocks (configurable, see "hbase.ui.blockcache.by.file.max"), which isn't very many blocks when doing a big cache, giving a misleading picture of the content of L1 and/or L2 cache. Up the default limit to 1M blocks (UI takes a while but just a few seconds counting over 1M blocks).

Also, when beyond the limit give the user a noticeable WARNING in the UI.


---

* [HBASE-15518](https://issues.apache.org/jira/browse/HBASE-15518) | *Major* | **Add Per-Table metrics back**

Adds per-table metrics aggregated from per-region metrics in region server metrics. New metrics are available under JMX section "Hadoop:service=HBase,name=RegionServer,sub=Tables" and they are available via hadoop metrics2 collectors.


---

* [HBASE-15368](https://issues.apache.org/jira/browse/HBASE-15368) | *Major* | **Add pluggable window support**

Use 'hbase.hstore.compaction.date.tiered.window.factory.class' to specify the window implementation you like for date tiered compaction. Now the only and default implementation is org.apache.hadoop.hbase.regionserver.compactions.ExponentialCompactionWindowFactory.

{code} 
\<property\> 
\<name\>hbase.hstore.compaction.date.tiered.window.factory.class\</name\> 
\<value\>org.apache.hadoop.hbase.regionserver.compactions.ExponentialCompactionWindowFactory\</value\> 
\</property\> 
\<property\> 
{code}


---

* [HBASE-15366](https://issues.apache.org/jira/browse/HBASE-15366) | *Major* | **Add doc, trace-level logging, and test around hfileblock**

No functional change. Added javadoc, comments, and extra trace-level logging to make clear what is happening around the reading and caching of hfile blocks.


---

* [HBASE-15671](https://issues.apache.org/jira/browse/HBASE-15671) | *Major* | **Add per-table metrics on memstore, storefile and regionsize**

Adds storeFileSize, memstoreSize and tableSize to the per-table metrics.


---

* [HBASE-15392](https://issues.apache.org/jira/browse/HBASE-15392) | *Major* | **Single Cell Get reads two HFileBlocks**

When an explicit Get with a one or more columns specified, we at a minimum, were overseeking, reading until we tripped over the next row, regardless, and only then returning. If the next row was in-block, we'd just do too much seeking but if the next row was in the next (or in the next block beyond that), we would keep seeking and loading blocks until we found the next row before we'd return.

There remains one case where we will still 'overread'. It is when the row end aligns with the end of the block. In this case we will load the next block just to find that there are no more cells in the current row. See HBASE-15457.


---

* [HBASE-15645](https://issues.apache.org/jira/browse/HBASE-15645) | *Critical* | **hbase.rpc.timeout is not used in operations of HTable**

Fixes regression where hbase.rpc.timeout configuration was ignored in branch-1.0+

Adds new methods setOperationTimeout, getOperationTimeout, setRpcTimeout, and getRpcTimeout to Table. In branch-1.3+ they are public interfaces and in 1.0-1.2 they are labeled as @InterfaceAudience.Private.

Adds hbase.client.operation.timeout to hbase-default.xml with default of 1200000


---

* [HBASE-15713](https://issues.apache.org/jira/browse/HBASE-15713) | *Major* | **Backport "HBASE-15477 Do not save 'next block header' when we cache hfileblocks"**

(Release note has been ported from the master issue -- with an addendum)

Fix over-persisting in blockcache; no longer save the block PLUS the header of the next block (3 bytes) when writing the cache.

Also removes support for hfileblock v1; hfile block v1 was used writing hfile v1. hfile v1 was the default in hbase before hbase-0.92. hbase.96 would not start unless all v1 hfiles had been compacted out of the cluster.

This patch also removed the tests TestUpgradeTo96 and TestMetaMigrationConvertingToPB, tests deprecated since hbase-0.96 since they required support for hfile v1 (which this patch removes).  HBASE-11611 removed these tests from master.


---

* [HBASE-15686](https://issues.apache.org/jira/browse/HBASE-15686) | *Major* | **Add override mechanism for the exempt classes when dynamically loading table coprocessor**

New coprocessor table descriptor attribute, hbase.coprocessor.classloader.included.classes, is added.
User can specify class name prefixes (semicolon separated) which should be loaded by CoprocessorClassLoader through this attribute using the following syntax:
{code}
  hbase\> alter 't1',    'coprocessor'=\>'hdfs:///foo.jar\|com.foo.FooRegionObserver\|1001\|arg1=1,arg2=2'
{code}


---

* [HBASE-15711](https://issues.apache.org/jira/browse/HBASE-15711) | *Major* | **Add client side property to allow logging details for batch errors**

In HBASE-15711 a new client side property hbase.client.log.batcherrors.details is introduced to allow logging full stacktrace of exceptions for batch error. It's disabled by default and set the property to true will enable it.


---

* [HBASE-15720](https://issues.apache.org/jira/browse/HBASE-15720) | *Major* | **Print row locks at the debug dump page**

Adds a section to the debug dump page listing current row locks held.


---

* [HBASE-15740](https://issues.apache.org/jira/browse/HBASE-15740) | *Major* | **Replication source.shippedKBs metric is undercounting because it is in KB**

Deprecated Replication source.shippedKBs metric in favor of source.shippedBytes


---

* [HBASE-15801](https://issues.apache.org/jira/browse/HBASE-15801) | *Major* | **Upgrade checkstyle for all branches**

All active branches now use maven-checkstyle-plugin 2.17 and checkstyle 6.18.



