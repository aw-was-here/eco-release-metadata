
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

* [HBASE-15354](https://issues.apache.org/jira/browse/HBASE-15354) | *Major* | **Use same criteria for clearing meta cache for all operations**

This patch fixes some issues when MetaCache (region location cache) gets unnecessarily dropped on the client.

On master branch we now in RegionServerCallable and RegionServerAdminCallable pass the actual exception down to Connection#updateCachedLocation, so we could check there if the exception is "meta-clearing" or not.

on branch-1, branch-1.2 and branch 1.3 we now check if the exception is meta-clearing or not in AsyncProcess (this check was there on master, but not on earlier branches)


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

* [HBASE-15477](https://issues.apache.org/jira/browse/HBASE-15477) | *Major* | **Do not save 'next block header' when we cache hfileblocks**

Fix over-persisting in blockcache; no longer save the block PLUS the header of the next block (3 bytes) when writing the cache.

Also removes support for hfileblock v1; hfile block v1 was used writing hfile v1. hfile v1 was the default in hbase before hbase-0.92. hbase.96 would not start unless all v1 hfiles had been compacted out of the cluster.


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

* [HBASE-15236](https://issues.apache.org/jira/browse/HBASE-15236) | *Major* | **Inconsistent cell reads over multiple bulk-loaded HFiles**

This jira fixes that following bug:
During bulkloading, if there are multiple hfiles corresponding to same region, and if they have same timestamps (which may have been set using importtsv.timestamp) and duplicate keys across them, then get and scan may return values coming from different hfiles.


---

* [HBASE-15801](https://issues.apache.org/jira/browse/HBASE-15801) | *Major* | **Upgrade checkstyle for all branches**

All active branches now use maven-checkstyle-plugin 2.17 and checkstyle 6.18.


---

* [HBASE-15593](https://issues.apache.org/jira/browse/HBASE-15593) | *Major* | **Time limit of scanning should be offered by client**

Add a new configuration: hbase.ipc.min.client.request.timeout
Minimum allowable timeout (in milliseconds) in rpc request's header. This configuration exists to prevent the rpc service regarding this request as timeout immediately.


---

* [HBASE-15931](https://issues.apache.org/jira/browse/HBASE-15931) | *Critical* | **Add log for long-running tasks in AsyncProcess**

After HBASE-15931, we will log more details for long-running tasks in AsyncProcess#waitForMaximumCurrentTasks every 10 seconds, including:
1. Table name will be included in the tasks status log
2. On which regionserver(s) the tasks are runnning will be logged when less than hbase.client.threshold.log.details tasks left, by default 10.
3. Against which regions the tasks are running will be logged when less than 2 tasks left.


---

* [HBASE-15994](https://issues.apache.org/jira/browse/HBASE-15994) | *Major* | **Allow selection of RpcSchedulers**

Adds a FifoRpcSchedulerFactory so you can try the FifoRpcScheduler by setting  "hbase.region.server.rpc.scheduler.factory.class"


---

* [HBASE-15950](https://issues.apache.org/jira/browse/HBASE-15950) | *Major* | **Fix memstore size estimates to be more tighter**

The estimates of heap usage by the memstore objects (KeyValue, object and array header sizes, etc) have been made more accurate for heap sizes up to 32G (using CompressedOops), resulting in them dropping by 10-50% in practice. This also results in less number of flushes and compactions due to "fatter" flushes. YMMV. As a result, the actual heap usage of the memstore before being flushed may increase by up to 100%. If configured memory limits for the region server had been tuned based on observed usage, this change could result in worse GC behavior or even OutOfMemory errors. Set the environment property (not hbase-site.xml) "hbase.memorylayout.use.unsafe" to false to disable.


---

* [HBASE-5291](https://issues.apache.org/jira/browse/HBASE-5291) | *Major* | **Add Kerberos HTTP SPNEGO authentication support to HBase web consoles**

HBase Web UIs can be secured from general public access using SPNEGO to require a valid Kerberos ticket.

Setting 'hbase.security.authentication.ui' to 'kerberos' in hbase-site.xml is a global switch to have all Web UIs allow only authenticated clients via Kerberos. 'hbase.security.authentication.spnego.kerberos.principal' and 'hbase.security.authentication.spnego.kerberos.keytab' are two other required properties in hbase-site.xml, the Kerberos principal and keytab to use for the server to use to log in. The primary in the Kerberos principal must be 'HTTP' as required by the SPNEGO mechanism, e.g. 'HTTP/host.domain.com@DOMAIN.COM'.


---

* [HBASE-16147](https://issues.apache.org/jira/browse/HBASE-16147) | *Major* | **Add ruby wrapper for getting compaction state**

compaction\_state shell command would return compaction state in String form:
NONE, MINOR, MAJOR, MAJOR\_AND\_MINOR


---

* [HBASE-15925](https://issues.apache.org/jira/browse/HBASE-15925) | *Blocker* | **compat-module maven variable not evaluated**

Downstream users of HBase dependencies that do not properly activate Maven profiles should now see a correct transitive dependency on the default hadoop-compatibility-module.


---

* [HBASE-14548](https://issues.apache.org/jira/browse/HBASE-14548) | *Major* | **Expand how table coprocessor jar and dependency path can be specified**

Allow a directory containing the jars or some wildcards to be specified, such as: hdfs://namenode:port/user/hadoop-user/ 
or
hdfs://namenode:port/user/hadoop-user/\*.jar

Please note that if a directory is specified, all jar files(.jar) directly in the directory are added, but it does not search files in the subtree rooted in the directory.
Do not contain any wildcard if you would like to specify a directory.


---

* [HBASE-16087](https://issues.apache.org/jira/browse/HBASE-16087) | *Major* | **Replication shouldn't start on a master if if only hosts system tables**

Masters will no longer start any replication threads if they are hosting only system tables. 

In order to change this add something to the config for tables on master that doesn't start with "hbase:" ( Replicating system tables is something that's currently unsupported and can open up security holes, so do this at your own peril)


---

* [HBASE-16081](https://issues.apache.org/jira/browse/HBASE-16081) | *Blocker* | **Replication remove\_peer gets stuck and blocks WAL rolling**

When a replication endpoint is sent a shutdown request by the replication source in situations like removing a peer, we now try to gracefully shut it down by draining the items already sent for replication to the peer cluster. If the drain does not complete in the specified time (hbase.rpc.timeout \* replication.source.maxterminationmultiplier), the regionserver is aborted to avoid blocking the WAL roll.


---

* [HBASE-16095](https://issues.apache.org/jira/browse/HBASE-16095) | *Major* | **Add priority to TableDescriptor and priority region open thread pool**

Adds a PRIORITY property to the HTableDescriptor. PRIORITY should be in the same range as the RpcScheduler defines it (HConstants.XXX\_QOS). 

Table priorities are only used for region opening for now. There can be other uses later (like RpcScheduling). 

Regions of high priority tables (priority \>= than HIGH\_QOS) are opened from a different thread pool than the regular region open thread pool. However, table priorities are not used as a global order for region assigning or opening.


---

* [HBASE-16144](https://issues.apache.org/jira/browse/HBASE-16144) | *Major* | **Replication queue's lock will live forever if RS acquiring the lock has died prematurely**

If zk based replication queue is used and useMulti is false, we will schedule a chore to clean up the orphan replication queue lock on zk.


---

* [HBASE-16052](https://issues.apache.org/jira/browse/HBASE-16052) | *Major* | **Improve HBaseFsck Scalability**

HBASE-16052 improves the performance and scalability of HBaseFsck, especially for large clusters with a small number of large tables.  

Searching for lingering reference files is now a multi-threaded operation.  Loading HDFS region directory information is now multi-threaded at the region-level instead of the table-level to maximize concurrency.  A performance bug in HBaseFsck that resulted in redundant I/O and RPCs was fixed by introducing a FileStatusFilter that filters FileStatus objects directly.


---

* [HBASE-16244](https://issues.apache.org/jira/browse/HBASE-16244) | *Major* | **LocalHBaseCluster start timeout should be configurable**

When LocalHBaseCluster is started from the command line the Master would give up after 30 seconds due to a hardcoded timeout meant for unit tests. This change allows the timeout to be configured via hbase-site as well as sets it to 5 minutes when LocalHBaseCluster is started from the command line.


---

* [HBASE-16288](https://issues.apache.org/jira/browse/HBASE-16288) | *Critical* | **HFile intermediate block level indexes might recurse forever creating multi TB files**

A new hfile configuration "hfile.index.block.min.entries" which defaults to 16 determines how many entries the hfile index block can have at least. The configuration which determines how large the index block can be at max (hfile.index.block.max.size) is ignored as long as we have fewer than hfile.index.block.min.entries entries. This ensures that multi-level index does not build up with too many levels.


---

* [HBASE-16317](https://issues.apache.org/jira/browse/HBASE-16317) | *Blocker* | **revert all ESAPI changes**

This issue reverts fixes designed to prevent malicious content from rendering in HBase's UIs. Specifically, these changes shipped in 1.1.4+ and 1.2.0+. They were removed due to licensing issues discovered in the dependencies they introduced. Their implementation and those dependencies have been removed from HBase! Removal of these dependencies is against the strict definition of our version compatibility guidelines. However, inclusion of non-Apache approved licenses cannot be tolerated. Implementation of these fixes using an Apache-appropriate means is tracked in HBASE-16328.


---

* [HBASE-16355](https://issues.apache.org/jira/browse/HBASE-16355) | *Major* | **hbase-client dependency on hbase-common test-jar should be test scope**

The HBase client artifact previously incorrectly included the hbase-common test jar as a runtime dependency. With this change, that dependency has been moved to test scope. Downstream users are not expected to be impacted, unless they relied on the transitive dependency for these HBase internal test classes.


---

* [HBASE-16287](https://issues.apache.org/jira/browse/HBASE-16287) | *Major* | **LruBlockCache size should not exceed acceptableSize too many**

In order to avoid blockcache size exceed acceptable size too much, we add one configuration "hbase.lru.blockcache.hard.capacity.limit.factor" to decide whether the block could be put into LruBlockCache or not.  This factor defaults to 1.2
If blockcache size \>= factor\*acceptableSize, we will reject the block into cache.


---

* [HBASE-8386](https://issues.apache.org/jira/browse/HBASE-8386) | *Major* | **deprecate TableMapReduce.addDependencyJars(Configuration, class\<?\> ...)**

The MapReduce helper function \`TableMapReduce.addDependencyJars(Configuration, class\<?\> ...)\` has been deprecated since it is easy to use incorrectly. Most users should rely on addDependencyJars(Job) instead.


---

* [HBASE-16321](https://issues.apache.org/jira/browse/HBASE-16321) | *Blocker* | **Ensure findbugs jsr305 jar isn't present**

HBase now ensures the jsr305 implementation from the findbugs project is not included in its binary artifacts or the compile / runtime dependencies of its user facing modules. Downstream users that rely on this jar will need to update their dependencies.


---

* [HBASE-9899](https://issues.apache.org/jira/browse/HBASE-9899) | *Major* | **for idempotent operation dups, return the result instead of throwing conflict exception**

Non-idempotent operations (increment/append/checkAndPut/...) may throw OperationConflictException even though the increment/append succeeded. For example (client rpc retries number set to 3):

1. first increment rpc request success
2. client timeout and send second rpc request, but nonce is same and save in server. The server found that it has already succeed, so return a OperationConflictException to make sure that increment operation only be applied once in server.

This patch will solve this problem by read the previous result when receive a duplicate rpc request.
1. Store the mvcc to OperationContext. When first rpc request succeed, store the mvcc for this operation nonce.
2. When there are duplicate rpc request, convert to read result by the mvcc.


---

* [HBASE-9465](https://issues.apache.org/jira/browse/HBASE-9465) | *Major* | **Push entries to peer clusters serially**

Now in replication we can make sure the order of pushing logs is same as the order of requests from client. Set REPLICATION\_SCOPE=2 at one cf's configuration to enable this feature.
This feature relies on zk-less assignment, and conflicts with distributed log replay. So users must set hbase.assignment.usezk and hbase.master.distributed.log.replay to false to support this feature.


---

* [HBASE-7621](https://issues.apache.org/jira/browse/HBASE-7621) | *Major* | **REST client (RemoteHTable) doesn't support binary row keys**

RemoteHTable now supports binary row keys with any character or byte by properly encoding request URLs. This is a both a behavioral change from earlier versions and an important fix for protocol correctness.


---

* [HBASE-16450](https://issues.apache.org/jira/browse/HBASE-16450) | *Major* | **Shell tool to dump replication queues**

New tool to dump existing replication peers, configurations and queues when using HBase Replication. The tool provides two flags:

 --distributed  This flag will poll each RS for information about the replication queues being processed on this RS.
By default this is not enabled and the information about the replication queues and configuration will be obtained from ZooKeeper.
 --hdfs   When --distributed is used, this flag will attempt to calculate the total size of the WAL files used by the replication queues. Since its possible that multiple peers can be configured this value can be overestimated.


---

* [HBASE-16409](https://issues.apache.org/jira/browse/HBASE-16409) | *Minor* | **Row key for bad row should be properly delimited in VerifyReplication**

--delimiter= option is added to verifyrep.
The delimiter would wrap bad rows in log output.


---

* [HBASE-16213](https://issues.apache.org/jira/browse/HBASE-16213) | *Major* | **A new HFileBlock structure for fast random get**

HBASE-16213 introduced a new DataBlockEncoding in name of ROW\_INDEX\_V1, which could improve random read (get) performance especially when the average record size (key-value size per row) is small. To use this feature, please set DATA\_BLOCK\_ENCODING to ROW\_INDEX\_V1 for CF of newly created table, or change existing CF with below command:
alter 'table\_name',{NAME =\> 'cf', DATA\_BLOCK\_ENCODING =\> 'ROW\_INDEX\_V1'}.

Please note that if we turn this DBE on, HFile block will be bigger than NONE encoding because it adds some meta infos for binary search:
/\*\*
 \* Store cells following every row's start offset, so we can binary search to a row's cells.
 \*
 \* Format:
 \* flat cells
 \* integer: number of rows
 \* integer: row0's offset
 \* integer: row1's offset
 \* ....
 \* integer: dataSize
 \*
\*/


---

* [HBASE-16340](https://issues.apache.org/jira/browse/HBASE-16340) | *Critical* | **ensure no Xerces jars included**

HBase no longer includes Xerces implementation jars that were previously included via transitive dependencies. Downstream users relying on HBase for these artifacts will need to update their dependencies.


---

* [HBASE-16086](https://issues.apache.org/jira/browse/HBASE-16086) | *Major* | **TableCfWALEntryFilter and ScopeWALEntryFilter should not redundantly iterate over cells.**

push to branch-1.3+


---

* [HBASE-15297](https://issues.apache.org/jira/browse/HBASE-15297) | *Minor* | **error message is wrong when a wrong namspace is specified in grant in hbase shell**

The security admin instance available within the HBase shell now returns "false" from the namespace\_exists? method for non-existent namespaces rather than raising a wrapped NamespaceNotFoundException.

As a side effect, when the "grant" and "revoke" commands in the HBase shell are invoked with a non-existent namespace the resulting error message now properly refers to said namespace rather than to the user.


---

* [HBASE-16388](https://issues.apache.org/jira/browse/HBASE-16388) | *Major* | **Prevent client threads being blocked by only one slow region server**

Add a new configuration, hbase.client.perserver.requests.threshold, to limit the max number of concurrent request to one region server. If the user still create new request after reaching the limit, client will throw ServerTooBusyException and do not send the request to the server. This is a client side feature and can prevent client's threads being blocked by one slow region server resulting in the availability of client is much lower than the availability of region servers.

For completeness, here extract on new config from hbase-default.xml:

Property: hbase.client.perserver.requests.threshold
Default: 2147483647
Description: The max number of concurrent pending requests for one server in all client threads (process level). Exceeding requests will be thrown ServerTooBusyException immediately to prevent user's threads being occupied and blocked by only one slow region server. If you use a fix number of threads to access HBase in a synchronous way, set this to a suitable value which is  related to the number of threads will help you. See https://issues.apache.org/jira/browse/HBASE-16388 for details.


---

* [HBASE-16540](https://issues.apache.org/jira/browse/HBASE-16540) | *Major* | **Scan should do additional validation on start and stop row**

Scan#setStartRow() and Scan#setStopRow() now validate the argument passed for each row key.  If the length of the byte[] passed exceeds Short.MAX\_VALUE, an IllegalArgumentException will be thrown.


---

* [HBASE-16294](https://issues.apache.org/jira/browse/HBASE-16294) | *Minor* | **hbck reporting "No HDFS region dir found" for replicas**

Fixed warning error message displayed for region directory not found for non-default/ non-primary replicas in hbck


---

* [HBASE-16672](https://issues.apache.org/jira/browse/HBASE-16672) | *Major* | **Add option for bulk load to always copy hfile(s) instead of renaming**

This issue adds a config, always.copy.files, to LoadIncrementalHFiles.
When set to true, source hfiles would be copied. Meaning source hfiles would be kept after bulk load is done.
Default value is false.


---

* [HBASE-15984](https://issues.apache.org/jira/browse/HBASE-15984) | *Critical* | **Given failure to parse a given WAL that was closed cleanly, replay the WAL.**

In some particular deployments, the Replication code believes it has
reached EOF for a WAL prior to successfully parsing all bytes known to
exist in a cleanly closed file.

If an EOF is detected due to parsing or other errors while there are still unparsed bytes before the end-of-file trailer, we now reset the WAL to the very beginning and attempt a clean read-through. Because we will retry these failures indefinitely, two additional changes are made to help with diagnostics:

\* On each retry attempt, a log message like the below will be emitted at the WARN level:
    
      Processing end of WAL file '{}'. At position {}, which is too far away
      from reported file length {}. Restarting WAL reading (see HBASE-15983
      for details).

\*  additional metrics measure the use of this recovery mechanism. they are described in the reference guide.


---

* [HBASE-16661](https://issues.apache.org/jira/browse/HBASE-16661) | *Minor* | **Add last major compaction age to per-region metrics**

This adds a new per-region metric named "lastMajorCompactionAge" for tracking time since the last major compaction ran on a given region.  If a major compaction has never run, the age will be equal to the current timestamp.


---

* [HBASE-16664](https://issues.apache.org/jira/browse/HBASE-16664) | *Major* | **Timeout logic in AsyncProcess is broken**

This issue fix three bugs:
1.  rpcTimeout configuration not work for one rpc call in AP
2.  operationTimeout configuration not work for multi-request (batch, put) in AP 
3.  setRpcTimeout and setOperationTimeout in HTable is not worked for AP and BufferedMutator.


---

* [HBASE-16721](https://issues.apache.org/jira/browse/HBASE-16721) | *Critical* | **Concurrency issue in WAL unflushed seqId tracking**

Fixed a bug in sequenceId tracking for the WALs that caused WAL files to accumulate without being deleted due to a rare race condition.


---

* [HBASE-16653](https://issues.apache.org/jira/browse/HBASE-16653) | *Major* | **Backport HBASE-11393 to all branches which support namespace**

During HBASE-11393, we have done two things:
1.  unify tableCFs with peerConfig
2.  Fix ns not support issue for replication. 

This issue is to backport it to branch-1

Notes:
Due to we modify proto object of ReplicationPeerConfig (add tableCFs field), so when we do rolling update, we have to update original ReplicationPeerConfig data on ZK firstly. 
This means during rolling update, if one peer with namespace added, this peer replication on old regionserver could not work. We have to wait for the rolling update completed.


---

* [HBASE-16765](https://issues.apache.org/jira/browse/HBASE-16765) | *Critical* | **New SteppingRegionSplitPolicy, avoid too aggressive spread of regions for small tables.**

Introduces a new split policy: SteppingSplitPolicy
This will use a simple step function to split a region at (by default) 2  xflushSize when no other region of the same table is seen on the region server, or max-file-size when one or more other regions of the same table is seen.

In HBase 2.0 this is going to be the default. In previous versions it can be configured.


---

* [HBASE-17017](https://issues.apache.org/jira/browse/HBASE-17017) | *Major* | **Remove the current per-region latency histogram metrics**

Removes per-region level (get size, get time, scan size and scan time histogram) metrics that was exposed before. Per-region histogram metrics with 1000+ regions causes millions of objects to be allocated on heap. The patch introduces getCount and scanCount as counters rather than histograms. Other per-region level metrics are kept as they are.


---

* [HBASE-16962](https://issues.apache.org/jira/browse/HBASE-16962) | *Major* | **Add readPoint to preCompactScannerOpen() and preFlushScannerOpen() API**

The following RegionObserver methods are deprecated

InternalScanner preFlushScannerOpen(final ObserverContext\<RegionCoprocessorEnvironment\> c,
    final Store store, final KeyValueScanner memstoreScanner, final InternalScanner s)
    throws IOException;

InternalScanner preCompactScannerOpen(final ObserverContext\<RegionCoprocessorEnvironment\> c,
    final Store store, List\<? extends KeyValueScanner\> scanners, final ScanType scanType,
    final long earliestPutTs, final InternalScanner s, CompactionRequest request)

Instead, use the following methods:

InternalScanner preFlushScannerOpen(final ObserverContext\<RegionCoprocessorEnvironment\> c,
    final Store store, final KeyValueScanner memstoreScanner, final InternalScanner s,
    final long readPoint) throws IOException;

InternalScanner preCompactScannerOpen(final ObserverContext\<RegionCoprocessorEnvironment\> c,
    final Store store, List\<? extends KeyValueScanner\> scanners, final ScanType scanType,
    final long earliestPutTs, final InternalScanner s, final CompactionRequest request,
    final long readPoint) throws IOException


---

* [HBASE-17178](https://issues.apache.org/jira/browse/HBASE-17178) | *Major* | **Add region balance throttling**

Add region balance throttling. Master execute every region balance plan per balance interval, which is equals to divide max balancing time by the size of region balance plan. And Introduce a new config hbase.master.balancer.maxRitPercent to protect availability. If config this to 0.01, then the max percent of regions in transition is 1% when balancing. Then the cluster's availability is at least 99% when balancing.


---

* [HBASE-17181](https://issues.apache.org/jira/browse/HBASE-17181) | *Minor* | **Let HBase thrift2 support TThreadedSelectorServer**

Add TThreadedSelectorServer support for HBase Thrift2


---

* [HBASE-17112](https://issues.apache.org/jira/browse/HBASE-17112) | *Major* | **Prevent setting timestamp of delta operations the same as previous value's**

Before this issue, two concurrent Increments/Appends done in same millisecond or RS's clock going back will result in two results have same TS, which is not friendly to versioning and will get wrong result in slave cluster if the replication is disordered.
After this issue, the result of Increment/Append will always have an incremental TS. There is no any inconsistent in replication for these operations. But there is a rare case that if there is a Delete in same millisecond, the later result can not be masked by this Delete. This can be fixed after we have new semantics that previous Delete will never mask later Put even its timestamp is higher.


---

* [HBASE-16336](https://issues.apache.org/jira/browse/HBASE-16336) | *Major* | **Removing peers seems to be leaving spare queues**

Add a ReplicationZKNodeCleaner periodically check and delete the useless replication queue zk node belong to the peer which is not exist.


---

* [HBASE-17296](https://issues.apache.org/jira/browse/HBASE-17296) | *Major* | **Provide per peer throttling for replication**

Provide per peer throttling for replication. Add the bandwidth upper limit to ReplicationPeerConfig and a new shell cmd set\_peer\_bandwidth to update the bandwidth in need.


---

* [HBASE-15924](https://issues.apache.org/jira/browse/HBASE-15924) | *Major* | **Enhance hbase services autorestart capability to hbase-daemon.sh**

Now one can start hbase services with enabled "autostart/autorestart" feature in controlled fashion with the help of "--autostart-window-size" to define the window period and the "--autostart-window-retry-limit" to define the number of times the hbase services have to be restarted upon being killed/terminated abnormally within the provided window perioid.

The following cases are supported with "autostart/autorestart":

a) --autostart-window-size=0 and --autostart-window-retry-limit=0, indicates infinite window size and no retry limit
b) not providing the args, will default to a)
c) --autostart-window-size=0 and --autostart-window-retry-limit=\<positive value\> indicates the autostart process to bail out if the retry limit exceeds irrespective of window period
d) --autostart-window-size=\<x\> and --autostart-window-retry-limit=\<y\> indicates the autostart process to bail out if the retry limit "y" is exceeded for the last window period "x".


---

* [HBASE-17314](https://issues.apache.org/jira/browse/HBASE-17314) | *Major* | **Limit total buffered size for all replication sources**

Add a conf "replication.total.buffer.quota" to limit total size of buffered entries in all replication peers. It will prevent server getting OOM if there are many peers. Default value is 256MB.



