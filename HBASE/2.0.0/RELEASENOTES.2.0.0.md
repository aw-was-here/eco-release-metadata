
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
# Apache HBase  2.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-9049](https://issues.apache.org/jira/browse/HBASE-9049) | *Major* | **Generalize ServerCallable creation to support custom callables**

Support custom RpcRetryingCaller via a configurable factory.


---

* [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | *Major* | **Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix**

- The additional JAR files specified with HBASE\_CLASSPATH are appended to the system JARs.
- The additional JAR files specified with HBASE\_CLASSPATH\_PREFIX are prefixed to the system JARs.


---

* [HBASE-11059](https://issues.apache.org/jira/browse/HBASE-11059) | *Major* | **ZK-less region assignment**

This patch makes it possible to do region assignment without ZK. By default, it is off (i.e. ZK is used for region assignment as before).

Two setting "hbase.assignment.usezk", "hbase.assignment.usezk.migrating" are introduced to control migration from using ZK for assignment to not using
ZK for assignment.

For rolling upgrade from using ZK to not using ZK, it can be done in two steps:

1. Set both hbase.assignment.usezk and hbase.assignment.usezk.migrating to true, do a rolling upgrade so that both masters and regionservers have
the new code. Either master or regionserver can be upgraded at first. The order is not important for this step. If you want to keep using ZK for assignment, you'd better set hbase.assignment.usezk to true, and hbase.assignment.usezk.migrating to false so that region states are not persisted in meta table.

2. Set hbase.assignment.usezk to false, do a rolling restart so that region assignments don't use ZK any more. For this step, masters should be restarted after regionservers have all restarted at first so that they won't update meta table directly and master doesn't know about it.


---

* [HBASE-11372](https://issues.apache.org/jira/browse/HBASE-11372) | *Major* | **Remove SlabCache**

SlabCache is no longer support. For off-heap blockcache needs, please see BucketCache.


---

* [HBASE-11344](https://issues.apache.org/jira/browse/HBASE-11344) | *Major* | **Hide row keys and such from the web UIs**

Configure "hbase.display.keys" to false (default: true) in the master/regionservers if the row-keys should be hidden in the webUIs (like in the webUI for table details).


---

* [HBASE-10885](https://issues.apache.org/jira/browse/HBASE-10885) | *Blocker* | **Support visibility expressions on Deletes**

Deletes can be specified with Cell Visibility as done for puts.
Cells covered by the delete is found by doing pattern matching. 
A deleteFamily issued for row1, f1 with Cell Visibility (A & B) would delete only those cells of row1 under family f1 which has cell visibility A&B or B&A. A delete without any cell visibility would only delete those cells that does not have any cell visibility.
In case of delete specific column with latest version only the latest cell with the specified cell visibility will be covered by the delete marker. In case there is no such cell with the specified cell visibility then no cell gets deleted.


---

* [HBASE-11315](https://issues.apache.org/jira/browse/HBASE-11315) | *Major* | **Keeping MVCC for configurable longer time**

After this patch, MVCC value of KVs will be kept for a configurable period "hbase.hstore.compaction.keep.mvcc.period"(default value is 5 days). The minimum setting of "hbase.hstore.compaction.keep.mvcc.period" is also set to 5 days and any user setting less than the min setting will be ignored.


---

* [HBASE-11240](https://issues.apache.org/jira/browse/HBASE-11240) | *Major* | **Print hdfs pipeline when hlog's sync is slow**

Adds emission of a log message that lists datanodes in HDFS pipeline when sync is slow.  Set when to log with "hbase.regionserver.hlog.slowsync.ms". Defaults logging if sync takes \> 100ms.


---

* [HBASE-11118](https://issues.apache.org/jira/browse/HBASE-11118) | *Blocker* | **non environment variable solution for "IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString"**

The workaround documented in HBASE-10304 for running a mapreduce job with a "fat jar" is no longer required. Such applications can be launched without adding hbase-protocol.jar to the HADOOP\_CLASSPATH.


---

* [HBASE-11520](https://issues.apache.org/jira/browse/HBASE-11520) | *Major* | **Simplify offheap cache config by removing the confusing "hbase.bucketcache.percentage.in.combinedcache"**

Remove "hbase.bucketcache.percentage.in.combinedcache".  Simplifies config of block cache.  If you are using this config., after this patch goes in, it will be ignored.  The L1 LruBlockCache will be whatever hfile.block.cache.size is set to and the L2 BucketCache will be whatever hbase.bucketcache.size is set to.


---

* [HBASE-2251](https://issues.apache.org/jira/browse/HBASE-2251) | *Major* | **PE defaults to 1k rows - uncommon use case, and easy to hit benchmarks**

Added a --valueZipf to PE.


---

* [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | *Major* | **VM OPTS for shell only**

Set HBASE\_SHELL\_OPTS in the environment or in hbase-env.sh to supply extra VM arguments when launching the HBase command shell.


---

* [HBASE-11534](https://issues.apache.org/jira/browse/HBASE-11534) | *Minor* | **Remove broken JAVA\_HOME autodetection in hbase-config.sh**

This change removes old and increasingly useless JAVA\_HOME autodetection that looks for Java 6 runtimes in various locations. Ensure that JAVA\_HOME is correctly set in the environment before launching HBase daemons.


---

* [HBASE-11548](https://issues.apache.org/jira/browse/HBASE-11548) | *Trivial* | **[PE] Add 'cycling' test N times and unit tests for size/zipf/valueSize calculations**

Adds --cycles=N argument.


---

* [HBASE-11556](https://issues.apache.org/jira/browse/HBASE-11556) | *Major* | **Move HTablePool to hbase-thrift module.**

HTablePool was deprecated in 0.98.1 but was still present and usable by apps built against versions before HBase 2.0.  It has been moved and is not intended to be used by user applications, and is now an internal part of the thrift2 proxy server only.


---

* [HBASE-11492](https://issues.apache.org/jira/browse/HBASE-11492) | *Critical* | **Hadoop configuration overrides some ipc parameters including tcpNoDelay**

If the Hadoop configuration is read after the HBase configuration, Hadoop's settings can override HBase's settings if the names of the settings are the same. To avoid the risk of override, HBase has renamed the following settings (by prepending 'hbase.') so that you can set them independent of your setting for Hadoop. If you do not use the HBase-specific variants, the Hadoop settings will be used.

Old Name   --\>   New Name
======================================================
ipc.server.listen.queue.size   --\>   hbase.ipc.server.listen.queue.size
ipc.server.max.callqueue.size   --\>   hbase.ipc.server.max.callqueue.size
ipc.server.callqueue.handler.factor --\> hbase.ipc.server.callqueue.handler.factor
ipc.server.callqueue.read.share --\> hbase.ipc.server.callqueue.read.share
ipc.server.callqueue.type --\> hbase.ipc.server.callqueue.type
ipc.server.queue.max.call.delay --\> hbase.ipc.server.queue.max.call.delay
ipc.server.max.callqueue.length --\> hbase.ipc.server.max.callqueue.length
ipc.server.read.threadpool.size   --\>  hbase.ipc.server.read.threadpool.size
ipc.server.tcpkeepalive   --\>   hbase.ipc.server.tcpkeepalive
ipc.server.tcpnodelay   --\>   hbase.ipc.server.tcpnodelay
ipc.client.call.purge.timeout   --\>   hbase.ipc.client.call.purge.timeout
ipc.client.connection.maxidletime   --\>   hbase.ipc.client.connection.maxidletime
ipc.client.idlethreshold   --\>   hbase.ipc.client.idlethreshold
ipc.client.kill.max   --\>   hbase.ipc.client.kill.max
ipc.server.scan.vtime.weight --\> hbase.ipc.server.scan.vtime.weight


---

* [HBASE-11600](https://issues.apache.org/jira/browse/HBASE-11600) | *Trivial* | **DataInputputStream and DoubleOutputStream are no longer being used**

Removed unused classes


---

* [HBASE-3135](https://issues.apache.org/jira/browse/HBASE-3135) | *Major* | **Make our MR jobs implement Tool and use ToolRunner so can do -D trickery, etc.**

All MR jobs implement Tool Interface, http://hadoop.apache.org/docs/current/api/org/apache/hadoop/util/Tool.html, so now you can pass properties on command line with the -D flag, etc.


---

* [HBASE-11606](https://issues.apache.org/jira/browse/HBASE-11606) | *Minor* | **Enable ZK-less region assignment by default**

By default, we don't use ZK for region assignment now. To fall back to the old way, you can set hbase.assignment.usezk to true.


---

* [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | *Major* | **Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+**

TableMapReduceUtil now restores the option to set scanner caching by setting it on the Scan object that is passe in. The priority order for choosing the scanner caching is as follows:

1. Caching set on the scan object.
2. Caching specified via the config "hbase.client.scanner.caching", which can either be set manually on the conf or via the helper method TableMapReduceUtil.setScannerCaching().
3. The default value HConstants.DEFAULT\_HBASE\_CLIENT\_SCANNER\_CACHING, which is set to 100 currently.


---

* [HBASE-11640](https://issues.apache.org/jira/browse/HBASE-11640) | *Major* | **Add syntax highlighting support to HBase Ref Guide programlistings**

This got committed, so I guess it is safe to resolve it?


---

* [HBASE-11323](https://issues.apache.org/jira/browse/HBASE-11323) | *Major* | **BucketCache all the time!**

Use the LruBlockCache default if your data fits the blockcache.  If block cache churn or you want a block cache that is immune to the vagaries of BC, deploy the offheap bucketcache.  See http://people.apache.org/~stack/bc/


---

* [HBASE-11658](https://issues.apache.org/jira/browse/HBASE-11658) | *Major* | **Piped commands to hbase shell should return non-zero if shell command failed.**

Adds a noninteractive mode (-n or --noninteractive) to the hbase shell that exits with a non-zero error code on failed or invalid shell command executions, and exits with a zero error code upon successful execution.


---

* [HBASE-11527](https://issues.apache.org/jira/browse/HBASE-11527) | *Major* | **Cluster free memory limit check should consider L2 block cache size also when L2 cache is onheap.**

The sum of the heap size % used by Memstore (Configured using 'hbase.regionserver.global.memstore.size' and defaults to 40%) and the that of block cache (Configured using 'hfile.block.cache.size' and defaults to 40%) should leave enough heap size for other normal operations of RS. This is 20%. Also to be noted that when the L2 block cache (ie. Bucket cache) is configured to be on heap, the size of that also comes into this size math. So in that case the sum of memstore heap size, L1 block cache size and L2 cache size (Configured using 'hbase.bucketcache.size')can be at max 80%.
When automatic tuning of heap memory is enabled (HBASE-5349) at point of time this 80% cap should hold.


---

* [HBASE-11696](https://issues.apache.org/jira/browse/HBASE-11696) | *Major* | **Make CombinedBlockCache resizable.**

CombinedBlockCache is made resizable. See HBASE-5349 for auto resizing feature. On resize of this block cache, the L1 cache (ie. LRU cache) will get resized


---

* [HBASE-11657](https://issues.apache.org/jira/browse/HBASE-11657) | *Major* | **Put HTable region methods in an interface**

Add a RegionLocator Interface. Encapsulates 'region' operations.  Implemented by HTable and you can get one from an HConnection.


---

* [HBASE-11610](https://issues.apache.org/jira/browse/HBASE-11610) | *Major* | **Enhance remote meta updates**

Adds "hbase.regionstatestore.meta.connection" configuration and new MultiHConnection class.  Is set to 1 by default.  Set it higher if you want to run with more than one connection to the meta table.  Useful if you have a very large meta table -- e.g. 1M regions -- otherwise, stick to the default.


---

* [HBASE-11821](https://issues.apache.org/jira/browse/HBASE-11821) | *Major* | **[ImportTSV] Abstract labels tags creation into pluggable Interface**

Added a facade org.apache.hadoop.hbase.mapreduce.CellCreator to create Cells for HFileOutputFormat. When working with HFileOutputFormat (with or with out visibility labels) in bulk load one can  use this facade to make Cells with visibility tags.
Also we allow plugin an implementation of org.apache.hadoop.hbase.mapreduce.VisibilityExpressionResolver by configuring the the FQCN with key "hbase.mapreduce.visibility.expression.resolver.class". The default implementation will tag Cells with visibility label ordinal.


---

* [HBASE-11878](https://issues.apache.org/jira/browse/HBASE-11878) | *Major* | **TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController not yet initialized**

A new exception, VisibilityControllerNotReadyException, is introduced for the case where VisibilityController is being initialized. Client can respond to this exception by retrying prior operation.
VisibilityControllerNotReadyException isn't a DoNotRetryIOException.


---

* [HBASE-11440](https://issues.apache.org/jira/browse/HBASE-11440) | *Major* | **Make KeyValueCodecWithTags as the default codec for replication in trunk**

By default in master branch the replication would use a new type of codec that would always replicate Cells with tags.
{code}
{code}
\<property\>
        \<name\>hbase.replication.rpc.codec\</name\>      \<value\>org.apache.hadoop.hbase.codec.KeyValueCodecWithTags\</value\>
\</property\>
{code}


---

* [HBASE-11919](https://issues.apache.org/jira/browse/HBASE-11919) | *Major* | **Remove the deprecated pre/postGet CP hook**

Removed the below 2 hooks from RegionObserver CP. These were deprecated since 0.96 and having replacement
1. preGet(final ObserverContext\<RegionCoprocessorEnvironment\> c, final Get get, final List\<KeyValue\> result)
2. postGet(final ObserverContext\<RegionCoprocessorEnvironment\> c, final Get get, final List\<KeyValue\> result)
These are replaced with pre/postGetOp hooks


---

* [HBASE-11331](https://issues.apache.org/jira/browse/HBASE-11331) | *Major* | **[blockcache] lazy block decompression**

When hbase.block.data.cachecompressed=true, DATA (and ENCODED\_DATA) blocks are cached in the BlockCache in their on-disk format. This is different from the default behavior, which decompresses and decrypts a block before caching.

For a region server hosting more data than fits into cache, enabling this feature with SNAPPY compression results in 50% increase in throughput and 30% improvement in mean latency while increasing GC by 80% and increasing overall CPU load by 2%.


---

* [HBASE-11845](https://issues.apache.org/jira/browse/HBASE-11845) | *Minor* | **HFile tool should implement Tool, disable blockcache by default**

HFileTool now accepts configuration overrides in the usual way. Blockcache is disabled by default.


---

* [HBASE-11897](https://issues.apache.org/jira/browse/HBASE-11897) | *Minor* | **Add append and remove peer table-cfs cmds for replication**

Adds two new shell commands for operators to add and remove peers at the columnfamily scope.


---

* [HBASE-11847](https://issues.apache.org/jira/browse/HBASE-11847) | *Minor* | **HFile tool should be able to print block headers**

The HFileTool (\`hbase hfile\`) can print block headers. The flag is -h,--printblockheaders.


---

* [HBASE-11805](https://issues.apache.org/jira/browse/HBASE-11805) | *Major* | **KeyValue to Cell Convert in WALEdit APIs**

The KeyValue based APIs in WALEdit is been removed and replaced with Cell based APIs
void add(KeyValue)    -\>       void add(Cell)
ArrayList\<KeyValue\> getKeyValues()    -\>    ArrayList\<Cell\> getCells()


---

* [HBASE-11911](https://issues.apache.org/jira/browse/HBASE-11911) | *Major* | **Break up tests into more fine grained categories**

Adds new test categories besides the class smalltests, mediumtests, and largetests.  Adds:

ClientTests
CoprocessorTests
FilterTests
FlakeyTests
IOTests
MapReduceTests
MasterTests
MiscTests
RegionServerTests
ReplicationTests
RestTests
SecurityTests
VerySlowMapReduceTests
VerySlowRegionServerTests

See description for examples on how to use them.


---

* [HBASE-7767](https://issues.apache.org/jira/browse/HBASE-7767) | *Major* | **Get rid of ZKTable, and table enable/disable state in ZK**

Keeps table enabled/disabled state in HDFS rather than up in ZooKeeper.  Auto-migrates any existing zk state.


---

* [HBASE-11873](https://issues.apache.org/jira/browse/HBASE-11873) | *Minor* | **Hbase Version CLI enhancement**

Calculates on startup checksum of running code.  Emits in logs on startup and shows in UI.


---

* [HBASE-11917](https://issues.apache.org/jira/browse/HBASE-11917) | *Major* | **Deprecate / Remove HTableUtil**

HTableUtil removed in master branch (2.0) and deprecated in 1.0.


---

* [HBASE-12046](https://issues.apache.org/jira/browse/HBASE-12046) | *Major* | **HTD/HCD setters should be builder-style**

**WARNING: No release note provided for this change.**


---

* [HBASE-12048](https://issues.apache.org/jira/browse/HBASE-12048) | *Major* | **Remove deprecated APIs from Filter**

The following APIs are removed from Filter
KeyValue transform(KeyValue)
KeyValue getNextKeyHint(KeyValue)
and replaced with 
Cell transformCell(Cell)
Cell getNextCellHint(Cell)
respectively.
If a custom Filter implementation have overridden any of these methods, we will no longer call them. User has to change the custom Filter to override cell based methods as shown above


---

* [HBASE-12054](https://issues.apache.org/jira/browse/HBASE-12054) | *Major* | **bad state after NamespaceUpgrade with reserved table names**

Prior to HBase 0.98.7, if you have 0.94 tables named (data, archive, corrupt, lib, WALs, splitWAl, oldWALs) upgrading would "silently" fail, corrupting the state of those tables.


---

* [HBASE-12084](https://issues.apache.org/jira/browse/HBASE-12084) | *Major* | **Remove deprecated APIs from Result**

The below KeyValue based APIs are removed from Result
KeyValue[] raw() 
List\<KeyValue\> list()
List\<KeyValue\> getColumn(byte [] family, byte [] qualifier)
KeyValue getColumnLatest(byte [] family, byte [] qualifier)
KeyValue getColumnLatest(byte [] family, int foffset, int flength, byte [] qualifier, int qoffset, int qlength)

They are replaced with
Cell[] rawCells()
List\<Cell\> listCells()
List\<Cell\> getColumnCells(byte [] family, byte [] qualifier)
Cell getColumnLatestCell(byte [] family, byte [] qualifier)
Cell getColumnLatestCell(byte [] family, int foffset, int flength, byte [] qualifier, int qoffset, int qlength)
respectively

Also the constructors which were taking KeyValues also removed
Result(KeyValue [] cells) 
Result(List\<KeyValue\> kvs)


---

* [HBASE-12052](https://issues.apache.org/jira/browse/HBASE-12052) | *Major* | **BulkLoad Failed due to no write permission on input files**

SecureBulkLoadEndPoint can be used in un-secure env to bulk load data without hitting "Permission denied" for hbase user.


---

* [HBASE-12111](https://issues.apache.org/jira/browse/HBASE-12111) | *Major* | **Remove deprecated APIs from Mutation(s)**

**WARNING: No release note provided for this change.**


---

* [HBASE-6290](https://issues.apache.org/jira/browse/HBASE-6290) | *Minor* | **Add a function a mark a server as dead and start the recovery the process**

Adds a script to mark a server as dead.

Usage: considerAsDead.sh --hostname serverName


---

* [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | *Major* | **TestScannerModel fails if using jackson 1.9.13**

The XML element used for the visibility labels in the REST API has been renamed from "label" lo "labels" in order to support old and the new versions of jackson.

Developers that use visibility labels via REST XML need to modify their applications in order to use the new XML element name.


---

* [HBASE-11804](https://issues.apache.org/jira/browse/HBASE-11804) | *Major* | **Raise default heap size if unspecified**

When run without a specified heap size the HBase scripts will now let the jvm choose the defaults. Usually this will mean that the max heap size will be the larger of 1gig or 1/4 of physical memory.


---

* [HBASE-12145](https://issues.apache.org/jira/browse/HBASE-12145) | *Major* | **Fix javadoc and findbugs so new folks aren't freaked when they see them**

Fix javadoc warnings.

Fixup findbugs warnings mostly by adding annotations saying 'working as expected'.

In RpcRetryingCallerWithReadReplicas made following change which findbugs spotted:

 -        if (completed == null) tasks.wait();
+        while (completed == null) tasks.wait();

In RecoverableZooKeeper, made all zk accesses synchronized -- we were doing it half-ways previously.

In RatioBasedCompactionPolicy we were making an instance of Random on
each invocation of getNextMajorCompactionTime


---

* [HBASE-12133](https://issues.apache.org/jira/browse/HBASE-12133) | *Minor* | **Add FastLongHistogram for metric computation**

Adds Histogram and AtomicLong Utils


---

* [HBASE-10153](https://issues.apache.org/jira/browse/HBASE-10153) | *Major* | **improve VerifyReplication to compute BADROWS more accurately**

VerifyReplicaiton reports the following counters besides the existing ones:

ONLY\_IN\_SOURCE\_TABLE\_ROWS: number of rows found only in source
ONLY\_IN\_PEER\_TABLE\_ROWS: number of rows found only in peer
CONTENT\_DIFFERENT\_ROWS: number of rows whose contents are different between source and peer


---

* [HBASE-11907](https://issues.apache.org/jira/browse/HBASE-11907) | *Minor* | **Use the joni byte[] regex engine in place of j.u.regex in RegexStringComparator**

The RegexStringComparator comparator now include an optional EngineType constructor parameter. Use EngineType.JONI to select the joni regex engine, which can be twice as fast as the Java regex engine and will be more efficient, producing less object churn while scanning, because it operates natively on byte arrays. RegexStringComparator still uses the Java regex engine by default.


---

* [HBASE-8808](https://issues.apache.org/jira/browse/HBASE-8808) | *Trivial* | **Use Jacoco to generate Unit Test coverage reports**

Adds jacoco plugin.  Call it by defining argLine with necessary arguments.  By default outputs to target dir.


---

* [HBASE-12016](https://issues.apache.org/jira/browse/HBASE-12016) | *Minor* | **Reduce number of versions in Meta table. Make it configurable**

Clients fetch META table descriptor using RPC. That gives an opportunity to change META table parameters on running cluster. Prior this change all clients used statically compiled META table descriptor and to apply new parameters new code need to be deployed.
META table versions can be configured by 'hbase.meta.versions' and now has 3 versions by default (was 10).
Block size for META table can be configured by 'hbase.meta.blocksize' (default 8k)


---

* [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | *Minor* | **CopyTable with bulkload**

CopyTable now can generate HFiles and bulkload to the destination table.


---

* [HBASE-11990](https://issues.apache.org/jira/browse/HBASE-11990) | *Major* | **Make setting the start and stop row for a specific prefix easier**

Added new utility method, setRowPrefixFilter, to Scan to easily scan for a specific row prefix


---

* [HBASE-12220](https://issues.apache.org/jira/browse/HBASE-12220) | *Major* | **Add hedgedReads and hedgedReadWins metrics**

Adds metrics hedgedReads and hedgedReadWins counts.


---

* [HBASE-12189](https://issues.apache.org/jira/browse/HBASE-12189) | *Major* | **Fix new issues found by coverity static analysis**

Fixes up the worst offenders reported by coverity.  Many hundreds more of issues to address but seem minor relatively on review.


---

* [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | *Major* | **Move REST**

HBase Rest has moved to it's own module. If you previously were using the rest sever code in your project you will now need to depend upon hbase-rest module in addition to the hbase-server module.


---

* [HBASE-12241](https://issues.apache.org/jira/browse/HBASE-12241) | *Critical* | **The crash of regionServer when taking deadserver's replication queue breaks replication**

This fix includes our enabling useMulti flag as default. multi is a zk method only available in later versions of zookeeper.  This change means HBase 1.0 requires a zookeeper that is at least version 3.4+.  See HBASE-6775 for background.


---

* [HBASE-12250](https://issues.apache.org/jira/browse/HBASE-12250) | *Minor* | **Adding an endpoint for updating the regionserver config**

Adds Admin#updateConfiguration(ServerName) and   Admin#updateConfiguration() for loading config. dynamically.


---

* [HBASE-12286](https://issues.apache.org/jira/browse/HBASE-12286) | *Major* | **[shell] Add server/cluster online load of configuration changes**

Adds shell commands:

update\_config 'servername'
update\_all\_config

These call new Admin methods added in HBASE-12147 to change server config.  Only a small subset of configs are changeable without restart currently mostly to do with compaction configuration.  See the refguide on dynamic configuration for a list.


---

* [HBASE-12317](https://issues.apache.org/jira/browse/HBASE-12317) | *Minor* | **Run IntegrationTestRegionReplicaPerf w.o mapred**

IntegrationTestRegionReplicaPerf no longer accepts the --nomapred flag. Instead, --nomapred is always used.


---

* [HBASE-12314](https://issues.apache.org/jira/browse/HBASE-12314) | *Major* | **Add chaos monkey policy to execute two actions concurrently**

Adds a new chaos monkey noKill that won't kill services. Instead it runs two or more ddl commands at the same time.


---

* [HBASE-2609](https://issues.apache.org/jira/browse/HBASE-2609) | *Major* | **Harmonize the Get and Delete operations**

Align Delete class with Get class. Change all delete\* method names to add\* instead.  For example, change deleteColumn to addColumn (as in add-this-column to the Delete specification). Deprecate the old.


---

* [HBASE-11912](https://issues.apache.org/jira/browse/HBASE-11912) | *Major* | **Catch some bad practices at compile time with error-prone**

Errors from error-prone will fail the build in the compile phase. Warnings look like Javac warnings and are counted as such by test-patch etc


---

* [HBASE-11562](https://issues.apache.org/jira/browse/HBASE-11562) | *Major* | **CopyTable should provide an option to shuffle the mapper tasks**

Adds new 'shuffle' option to CopyTable that shuffles the maps order; use if you need some random on what tasks of a table copy run when.


---

* [HBASE-12075](https://issues.apache.org/jira/browse/HBASE-12075) | *Major* | **Preemptive Fast Fail**

The Interceptor Framework can be used to modify the behavior of retrying client calls on the client side without altering the core of the client code. This framework gives reasonable flexibility with little intrusion.

An example use case of the interceptor is to have a custom sleep strategy within retries. We can consider a simple accounting system where we have a time spent quota on the client side for the servers. And we would want to error some of the calls if we have consumed the server's quota already. 

Interceptor.intercept() {
 // would keep track the start time.
 server = getServer()
  // Throw if we already spent a lot of time on a server.
  timeSpentOnServer = getTimeSpentSinceLastReset(server)
  if ( timeSpentOnServer \> THRESHOLD) throw new Exception("We spend too long on this server")
  setServerStartTime(server)
}

Interceptor.handleFailure() {
  server = getServer()
  updateTimeSpentOnServer(server) 
}

Interceptor.updateFailureInfo() {
  server = getServer()
  updateTimeSpentOnServer(server) 
}


---

* [HBASE-12297](https://issues.apache.org/jira/browse/HBASE-12297) | *Major* | **Support DBB usage in Bloom and HFileIndex area**

**WARNING: No release note provided for this change.**


---

* [HBASE-12354](https://issues.apache.org/jira/browse/HBASE-12354) | *Major* | **Update dependencies in time for 1.0 release**

Updated dependencies. Of note, went from hadoop 2.2 to 2.5.1.


---

* [HBASE-12381](https://issues.apache.org/jira/browse/HBASE-12381) | *Minor* | **Add maven enforcer rules for build assumptions**

Enforces maven \>= 3.0.3 (based on the oldest version we have building on jenkins) and java \>= the source compilation target variable, which is 1.7 on master and branch-1 (based on java compat doc) and 1.6 before this.


---

* [HBASE-12335](https://issues.apache.org/jira/browse/HBASE-12335) | *Major* | **IntegrationTestRegionReplicaPerf is flaky**

This change alters PerformanceEvaluation to expose read request histograms back to consumers. IntegrationTestRegionReplicaPerf takes advantage of this by examining the histograms to determine the overall effectiveness of the feature under test. In this case, specific summary statistics are aggregated across all threads and all test iterations to determine success. These summaries are used to make the test more robust in the face of run-to-run variation.


---

* [HBASE-12142](https://issues.apache.org/jira/browse/HBASE-12142) | *Minor* | **Truncate command does not preserve ACLs table**

Prior to this change, the truncate shell command could not preserve ACLs on the table being truncated. In the 0.98 branch, this change also backports HBASE-8332, which adds a master handler for table truncation and new HBaseAdmin APIs for same.


---

* [HBASE-12389](https://issues.apache.org/jira/browse/HBASE-12389) | *Minor* | **Reduce the number of versions configured for the ACL table**

This change reduces the number of versions kept in the ACL table from 10 to 1. This is a fully compatible change. Existing ACL tables will not be affected, only newly initialized ones. Furthermore, old versions of ACL table entries were never considered by the AccessController in decision making, and any and all entries in the ACL table are not user accessible.


---

* [HBASE-8707](https://issues.apache.org/jira/browse/HBASE-8707) | *Minor* | **Add LongComparator for filter**

Adds a LongComparator for use by Filters.


---

* [HBASE-12329](https://issues.apache.org/jira/browse/HBASE-12329) | *Minor* | **Table create with duplicate column family names quietly succeeds**

Tables created with duplicate column family names use to succeed silently.  This removes fix removes ambiguity and will change the behavior of code that depended upon this behavior.  Instead of just using addFamil, a change to the CF definition now requires a modifyFamily call.


---

* [HBASE-12432](https://issues.apache.org/jira/browse/HBASE-12432) | *Minor* | **RpcRetryingCaller should log after fixed number of retries like AsyncProcess**

hbase.client.start.log.errors.counter now also applies to Scanners.


---

* [HBASE-12455](https://issues.apache.org/jira/browse/HBASE-12455) | *Major* | **Add 'description' to bean and attribute output when you do /jmx?description=true**

When you click on 'Metrics Dump', it takes you to the servlet at /jmx.  This servlet dumps all metrics by name and their value. If you add a query string of '?description=true', the dump will include descriptions on all metric mbeans and attributes that are non-null and that do not have a description that matches the attribute name exactly.


---

* [HBASE-10483](https://issues.apache.org/jira/browse/HBASE-10483) | *Major* | **Provide API for retrieving info port when hbase.master.info.port is set to 0**

Adds new method to Admin so clients can ask the master's info port. Also fixes info port display in UI to use what master is actually using rather than display what is Configuration

{code}
+  /\*\*
+   \* Get the info port of the current master if one is available.
+   \* @return master info port
+   \* @throws IOException
+   \*/
+  public int getMasterInfoPort() throws IOException;
{code}


---

* [HBASE-12411](https://issues.apache.org/jira/browse/HBASE-12411) | *Major* | **Optionally enable p-reads and private readers for compactions**

This introduces two new configuration options:
# hbase.storescanner.use.pread enables postional reads for all scanners (except compactions). Default off (i.e. try to use seek+read as before)
# hbase.regionserver.compaction.private.readers has compaction run with their own readers. Default off (i.e. share readers with all other scanners as before)


---

* [HBASE-12277](https://issues.apache.org/jira/browse/HBASE-12277) | *Major* | **Refactor bulkLoad methods in AccessController to its own interface**

Adds new BulkLoadObserver Interface


---

* [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | *Major* | **Reduce the effective scope of GLOBAL CREATE and ADMIN permission**

This change removes implicit write access to the META and ACL tables for any user with GLOBAL CREATE or ADMIN privilege. Users with GLOBAL CREATE will not be able to elevate their privileges unexpectedly through direct access to the ACL table. A GLOBAL ADMIN will still correctly be allowed to grant themselves any desired privilege.


---

* [HBASE-8572](https://issues.apache.org/jira/browse/HBASE-8572) | *Major* | **Enhance delete\_snapshot.rb to call snapshot deletion API with regex**

Adds a new shell command that allows you delete snapshots that match a regex:

hbase\> delete\_all\_snapshot 's.\*'


---

* [HBASE-10378](https://issues.apache.org/jira/browse/HBASE-10378) | *Major* | **Divide HLog interface into User and Implementor specific interfaces**

HBase internals for the write ahead log have been refactored. Advanced users of HBase should be aware of the following changes.

Public Audience
  - The Admin API for asking a region server to roll WAL files has changed from a synchronous command that returns a set of regions the WAL implementation would like flushed into an asynchronous command that returns nothing. Older clients relying on the former behavior will still be able to interact with newer servers, but the response body will always contain an empty list of regions to flush.
  - The shell command "hlog\_roll" has been deprecated. Operators should use the "wal\_roll" command instead. This command is subject to the changes described above for the Admin API to roll WAL files.
  - The command for analyzing write ahead logs has been renamed from 'hlog' to 'wal'. The old usage is deprecated and will be removed in a future version.
  - Some utility methods in the HBaseTesetingUtility related to testing write-ahead-logs were changed in incompatible ways. No functionality has been removed, but method names and arguments have changed. See the HBaseTestingUtility javadoc for details.
  - The WALPlayer utility has deprecated the configuration keys used for advanced customization. Users should switch to the updated configuration keys. See the usage information on the WALPlayer tool for details.
  - The HLogInputFormat utility class for processing logs with MapReduce has been deprecated and will be removed in a future version. Users should switch to the WALInputFormat.
  - The labeling of server metrics on the region server status pages changed. Previously, the number of backing files for the write ahead log was labeled 'Num. HLog Files'. If you wish to see this statistic now, please look for the label 'Num. WAL Files.'  If you rely on JMX for these metrics, their location has not changed.

LimitedPrivate(COPROC) Audience, LimitedPrivate(PHOENIX)
  - The RegionObserver API has been updated. The changes are both binary and source backwards compatible for coprocessors that use the BaseRegionObserver class. For those that implement RegionObserver directly the changes are binary backwards compatible. Depending on the internals of future HBase versions, coprocessors using the deprecated API may not see all WAL related events. Users are strongly encouraged to update their use of the API; see the RegionObserver javadoc for details.
  - Classes related to reading WAL entries (ReaderBase, ProtobufLogReader, SequenceFileLogReader) have changed in a backwards incompatible way. Users who referenced HLog.Reader directly or HLog.Entry will have to update. These changes do not impact compatibility with extant wal files.
  - The WALObserver API has been updated. The changes are both binary and source backwards compatible for coprocessors that use the BaseWALObserver class. For those that implement WALObserver directly the changes are binary backwards compatible. Depending on the internals of future HBase versions, coprocessors using the deprecated API may not see all WAL related events. Users are strongly encouraged to update their use of the API; see the WALObserver javadoc for details.
 - The WALCoprocessorEnvironment  has changed in a backwards incompatible way. WALObserver coprocessors that relied on retrieving an object representing the write ahead log instance will have to be updated.

LimitedPrivate(REPLICATION) Audience
 - The WALEntryFilter API has changed in a backwards incompatible way. Implementers will have to be updated.
 - The ReplicationEndpoint.ReplicateContext API has changed in a backwards incompatible way. Implementers who use this interface will have to be updated. These changes do not impact wire compatibility for replicating between clusters.
 - The HLogKey API is deprecated in favor of the WALKey API. Additionally, the HLogKey API has changed in a backwards incompatible way by changing from implementing WriteableComparable\<HLogKey\> to implementing Writeable and Comparable\<WALKey\>.


---

* [HBASE-12346](https://issues.apache.org/jira/browse/HBASE-12346) | *Major* | **Scan's default auths behavior under Visibility labels**

When no Authorizations passed in Scan , will take user's Auth labels for the Scan and return results accordingly.  Prior to this Jira, we were returning only those cells with out any visibility in such a case.


---

* [HBASE-12569](https://issues.apache.org/jira/browse/HBASE-12569) | *Minor* | **Control MaxDirectMemorySize in the same manner as heap size**

Adds new HBASE\_OFFHEAPSIZE environment variable to ./bin/hbase. Set the max offheap memory java will request with this one variable.  It combines with HBASE\_HEAPSIZE to determine the max amount of ram that the JVM can request.


---

* [HBASE-12017](https://issues.apache.org/jira/browse/HBASE-12017) | *Major* | **Use Connection.createTable() instead of HTable constructors.**

This was fixed by patches for other issues.


---

* [HBASE-10536](https://issues.apache.org/jira/browse/HBASE-10536) | *Major* | **ImportTsv should fail fast if any of the column family passed to the job is not present in the table**

Added new Feature to check for column family name of the destination table before bulk load runs.

By default it checks whether column family matches the destination table. To disable the check provide the option: -Dno.strict=true


---

* [HBASE-12559](https://issues.apache.org/jira/browse/HBASE-12559) | *Major* | **Provide LoadBalancer with online configuration capability**

updateConfiguration(ServerName server) method of Admin now updates config for HMaster as well.
Specifically, config update would be taken by load balancer.


---

* [HBASE-11639](https://issues.apache.org/jira/browse/HBASE-11639) | *Major* | **[Visibility controller] Replicate the visibility of Cells as strings**

Allows the visibility tags to be replicated as Strings to the peer cluster. Useful in cases where the peer cluster and the source cluster does not have a common global LABELs table.
In order to enable this feature configure the below property in hbase-site.xml
\<property\>
\<name\>
hbase.coprocessor.regionserver.classes
\</name\>
\<value\>
org.apache.hadoop.hbase.security.visibility.VisibilityController$VisibilityReplication
\</value\>
\<property\>


---

* [HBASE-12597](https://issues.apache.org/jira/browse/HBASE-12597) | *Major* | **Add RpcClient interface and enable changing of RpcClient implementation**

Adds an RpcClient Interface and an RpcClientFactory to get RpcClient implementation.


---

* [HBASE-12665](https://issues.apache.org/jira/browse/HBASE-12665) | *Major* | **When aborting, dump metrics**

When regionserver aborts, we dump subset of metrics into the log (We used to do this too pre-0.96 but was lost when we refactored metrics)


---

* [HBASE-12373](https://issues.apache.org/jira/browse/HBASE-12373) | *Minor* | **Provide a command to list visibility labels**

Adds new list\_labels command to shell.


---

* [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | *Major* | **Visibility Labels: issue with storing super users in labels table**

The system visibility label authorization for super users will no longer be persisted in hbase:labels table. Super users will be determined at server startup time. They will have all the permissions for Visibility labels.
If you have a prior deployment that had super users' system label persisted in hbase:labels, you can clean up by invoking the shell command 'clear\_auths'.
For example: clear\_auths 'old\_superuser', 'system'
This is particularly necessary when you change super users, i.e. a previous super user is no longer a super user.


---

* [HBASE-10201](https://issues.apache.org/jira/browse/HBASE-10201) | *Major* | **Port 'Make flush decisions per column family' to trunk**

Adds new flushing policy mechanism. Default, org.apache.hadoop.hbase.regionserver.FlushLargeStoresPolicy, will try to avoid flushing out the small column families in a region, those whose memstores are \< hbase.hregion.percolumnfamilyflush.size.lower.bound. To restore the old behavior of flushes writing out all column families, set hbase.regionserver.flush.policy to org.apache.hadoop.hbase.regionserver.FlushAllStoresPolicy either in hbase-default.xml or on a per-table basis by setting the policy to use with HTableDescriptor.getFlushPolicyClassName().


---

* [HBASE-12121](https://issues.apache.org/jira/browse/HBASE-12121) | *Minor* | **maven release plugin does not allow for customized goals**

Allows user to add goals to release procedure
mvn release:perform -Dgoal=\<goal-name\>
If no goal is specified default behavior is used

Example use case:
Release to private repository and upload artifacts but also want the tarball to be uploaded, not just the jars. 
the following could be added to the release command
-Dgoal="-X package install site assembly:single deploy -DskipTests"
This will execute the release procedure and also upload the tarball along with all jars.


---

* [HBASE-12718](https://issues.apache.org/jira/browse/HBASE-12718) | *Major* | **Convert TestAcidGuarantees from a unit test to an integration test**

TestAcidGuarantees used to be runnable from the command line.  It has been renamed to IntegrationTestAcidGuarantees and allows for ChaosMonkey parameters.


---

* [HBASE-5699](https://issues.apache.org/jira/browse/HBASE-5699) | *Critical* | **Run with \> 1 WAL in HRegionServer**

HBase's write-ahead-log (WAL) can now be configured to use multiple HDFS pipelines in parallel to provide better write throughput for clusters by using additional disks. By default, HBase will still use only a single HDFS-based WAL. 

To run with multiple WALs, alter the hbase-site.xml property "hbase.wal.provider" to have the value "multiwal". To return to having HBase determine what kind of WAL implementation to use either remove the property all together or set it to "defaultProvider".

Altering the WAL provider used by a particular RegionServer requires restarting that instance.  RegionServers using the original WAL implementation and those using the "multiwal" implementation can each handle recovery of either set of WALs, so a zero-downtime configuration update is possible through a rolling restart.


---

* [HBASE-11412](https://issues.apache.org/jira/browse/HBASE-11412) | *Minor* | **Minimize a number of hbase-client transitive dependencies**

Removes some transitive dependencies from the hbase-client module.


---

* [HBASE-12695](https://issues.apache.org/jira/browse/HBASE-12695) | *Critical* | **JDK 1.8 compilation broken**

Use the -Pjavac maven profile in order to compile HBase using the compiler provided by the JDK instead of the default error-prone compiler plugin. This is useful for now if you are building HBase with JDK 1.8 or a JDK that doesn't support error-prone.


---

* [HBASE-12775](https://issues.apache.org/jira/browse/HBASE-12775) | *Major* | **CompressionTest ate my HFile (sigh!)**

CompressionTest will now abort when the target path exists.


---

* [HBASE-12028](https://issues.apache.org/jira/browse/HBASE-12028) | *Major* | **Abort the RegionServer, when it's handler threads die**

Adds a configuration property "hbase.regionserver.handler.abort.on.error.percent" for aborting the region server when some of it's handler threads die. The default value is 0.5 causing an abort in the RS when half of it's handler threads die. A handler thread only dies in case of a serious software bug, or a non-recoverable Error (StackOverflow, OOM, etc) is thrown. 
These are possible values for the configuration:
   \* -1  =\> Disable aborting
   \* 0   =\> Abort if even a single handler has died
   \* 0.x =\> Abort only when this percent of handlers have died
   \* 1   =\> Abort only all of the handers have died


---

* [HBASE-12268](https://issues.apache.org/jira/browse/HBASE-12268) | *Major* | **Add support for Scan.setRowPrefixFilter to shell**

Added new option, ROWPREFIXFILTER, to the scan command in the HBase shell to easily scan for a specific row prefix.


---

* [HBASE-12798](https://issues.apache.org/jira/browse/HBASE-12798) | *Major* | **Map Reduce jobs should not create Tables in setConf()**

TableInputFormatBase#initialize() has been added:

  /\*\*
   \* This method will be called when any of the following are referenced, but not yet initialized:
   \* admin, regionLocator, table. Subclasses will have the opportunity to call
   \* {@link #initializeTable(Connection, TableName)}
   \*/
  protected void initialize() {


---

* [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | *Major* | **Filter to support scanning multiple row key ranges**

MultiRowRangeFilter is a filter to support scanning multiple row key ranges. If the number of the ranges is small, using multiple scans can also do the same thing and can work well. But when the number of ranges are quite big (e.g. millions), use the MultiRowRangeFilter will be nice. In this filter, the ranges will be sorted and merged, so users do not have to take care of ranges are not continuous. And if users are using something like rest, thrift or pig to access the data the filter might be the practical solution.


---

* [HBASE-12848](https://issues.apache.org/jira/browse/HBASE-12848) | *Major* | **Utilize Flash storage for WAL**

For users on a version of Hadoop that supports tiered storage policies (i.e. Apache Hadoop 2.6.0+), HBase now allows users to opt-in to having the write ahead log placed on the SSD tier. Users on earlier versions of Hadoop will be unable to take advantage of this feature.

Use of tiered storage is controlled by a new RegionServer config, hbase.wal.storage.policy. It defaults to the value 'NONE', which will rely on HDFS defaults for a policy decision.

User can specify ONE\_SSD or ALL\_SSD as the value:
ONE\_SSD: place only one replica of WAL files in SSD and the remaining in default storage
ALL\_SSD: all replica for WAL files are placed on SSD

See [the HDFS docs on storage policy\|http://hadoop.apache.org/docs/r2.6.0/hadoop-project-dist/hadoop-hdfs/ArchivalStorage.html]


---

* [HBASE-12774](https://issues.apache.org/jira/browse/HBASE-12774) | *Minor* | **Fix the inconsistent permission checks for bulkloading.**

Bulk load permissions are changed from requiring both C and W to only require C.


---

* [HBASE-12731](https://issues.apache.org/jira/browse/HBASE-12731) | *Major* | **Heap occupancy based client pushback**

This feature incorporates reported regionserver heap occupancy in the (optional) client pushback calculations. If client pushback is enabled, the exponential backoff policy will take heap occupancy into account, should it exceed "hbase.heap.occupancy.low\_water\_mark" percentage of the heap (default 0.95). Once above the low water mark, heap occupancy is an additional factor scaling from 0.1 up to 1.0 at "hbase.heap.occupancy.high\_water\_mark" (default 0.98). At or above the high water mark the client will use the maximum configured backoff.


---

* [HBASE-12899](https://issues.apache.org/jira/browse/HBASE-12899) | *Major* | **HBase should prefix htrace configuration keys with "hbase.htrace" rather than just "hbase."**

All htrace related configuration options are renamed to have "hbase.htrace" prefix instead of just "htrace".


---

* [HBASE-12902](https://issues.apache.org/jira/browse/HBASE-12902) | *Major* | **Post-asciidoc conversion fix-ups**

Pushed to master. Shout if there are any issues.


---

* [HBASE-12728](https://issues.apache.org/jira/browse/HBASE-12728) | *Blocker* | **buffered writes substantially less useful after removal of HTablePool**

In our pre-1.0 API, HTable is considered a light-weight object that consumed by a single thread at a time. The HTablePool class provided a means of sharing multiple HTable instances across a number of threads. As an optimization, HTable managed a "write buffer", accumulating edits and sending a "batch" all at once. By default the batch was sent as the last step in invocations of put(Put) and put(List\<Put\>). The user could disable the automatic flushing of the write buffer, retaining edits locally and only sending the whole "batch" once the write buffer has filled or when the flushCommits() method in invoked explicitly. Explicit or implicit batch writing was controlled by the setAutoFlushTo(boolean) method. A value of true (the default) had the write buffer flushed at the completion of a call to put(Put) or put(List\<Put\>). A value of false allowed for explicit buffer management. HTable also exposed the buffer to consumers via getWriteBuffer().

The combination of HTable with setAutoFlushTo(false) and the HTablePool provided a convenient mechanism by which multiple "Put-producing" threads could share a common write buffer. Both HTablePool and HTable are deprecated, and they are officially replaced in The new 1.0 API by Table and BufferedMutator. Table, which replaces HTable, no longer exposes explicit write-buffer management. Instead, explicit buffer management is exposed via BufferedMutator. BufferedMutator is made safe for concurrent use. Where code would previously retrieve and return HTables from an HTablePool, now that code creates and shares a single BufferedMutator instance across all threads.


---

* [HBASE-8410](https://issues.apache.org/jira/browse/HBASE-8410) | *Major* | **Basic quota support for namespaces**

Namespace auditor provides basic quota support for namespaces in terms of number of tables and number of regions. In order to use namespace quotas, quota support must be enabled by setting
"hbase.quota.enabled" property to true in hbase-site.xml file.

The users can add quota information to namespace, while creating new namespaces or by altering existing ones. 

Examples:
1. create\_namespace 'ns1', {'hbase.namespace.quota.maxregions'=\>'10'}
2. create\_namespace 'ns2', {'hbase.namespace.quota.maxtables'=\>'2','hbase.namespace.quota.maxregions'=\>'5'}
3. alter\_namespace 'ns3', {METHOD =\> 'set', 'hbase.namespace.quota.maxtables'=\>'5','hbase.namespace.quota.maxregions'=\>'25'}

The quotas can be modified/added to namespace at any point of time. To remove quotas, the following command can be used: 

alter\_namespace 'ns3', {METHOD =\> 'unset', NAME =\> 'hbase.namespace.quota.maxtables'}
alter\_namespace 'ns3', {METHOD =\> 'unset', NAME =\> 'hbase.namespace.quota.maxregions'}


---

* [HBASE-12684](https://issues.apache.org/jira/browse/HBASE-12684) | *Major* | **Add new AsyncRpcClient**

Retrofit a new, netty-based rpc transport on the client. This client is slightly slower if little contention given the extra tier or so that netty adds and that we block on a Future waiting on the call to finish.  This client opens the way for HBase having a native Async API.

This client is on by default in master branch (2.0 hbase). It is off in branch-1.0 (hbase-1.1.x).  To enable it, set "hbase.rpc.client.impl" to "org.apache.hadoop.hbase.ipc.AsyncRpcClient"


---

* [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | *Major* | **Visibility Labels:  support visibility labels for user groups.**

VisibilityClient API and shell commands can be used to grant and clear visibility authorizations of a group.
e.g. 
set\_auths '@group1', ['SECRET','PRIVATE']
get\_auths '@group1'
clear\_auths '@group1', ['SECRET','PRIVATE']

When checking visibility authorizations of a user, the server will include the visibility authorizations of the groups of which the user is a member, together with the user's own.

On the other hand, get\_auths 'user1' will only get user1's own visibility authorizations.
clear\_auths 'user1' will only clear user1's own visibility authorizations.
The visibility authorizations of a group can be changed by invoking the API or command on the '@group1' itself.

Note:

The following two methods have been deprecated in VisibilityLabelService from 0.98.10 and will be removed in 2.0+ releases.
getAuths(byte[], boolean)
havingSystemAuth(byte[])

Use the following methods instead:
getUserAuths(byte[], boolean)
getGroupAuths(String[], boolean)
havingSystemAuth(User)


---

* [HBASE-12808](https://issues.apache.org/jira/browse/HBASE-12808) | *Major* | **Use Java API Compliance Checker for binary/source compatibility**

Adds a dev-support/check\_compatibility.sh script for comparing versions. Run the script to see usage.


---

* [HBASE-12831](https://issues.apache.org/jira/browse/HBASE-12831) | *Major* | **Changing the set of vis labels a user has access to doesn't generate an audit log event**

Auditing of visibility label administration.

Administrative actions on visibility labels, such as creation of a label or changing the set of labels a user or group may access, are now sent to the audit log. The audit messages should be similar to those already tracked by the access controller.


---

* [HBASE-6778](https://issues.apache.org/jira/browse/HBASE-6778) | *Major* | **Deprecate Chore; its a thread per task when we should have one thread to do all tasks**

Corresponding usages for new ScheduledChore vs. Deprecated Chore:
Chore.interrupt() -\> ScheduledChore.cancel(mayInterruptWhileRunning = true)
Threads.setDaemonThreadRunning(Chore) -\> ChoreService.scheduleChore(ScheduledChore)
Chore.isAlive -\> ScheduledChore.isScheduled()
Chore.getSleeper().skipSleepCycle() -\> ScheduledChore.triggerNow()


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

* [HBASE-12978](https://issues.apache.org/jira/browse/HBASE-12978) | *Blocker* | **Region goes permanently offline (WAS: hbase:meta has a row missing hregioninfo and it causes my long-running job to fail)**

Fixes a bug where an optimization that keeps our hfile indexes files small chanced upon an entry that has special meaning in the meta table making it so  we failed to find a region entry in an hbase:meta HFile (though the entry was present). Once we'd happened upon this condition, the region would be unfindable thereafter making it so the region was considered offline. The bug is in branch-1+ hbase only.


---

* [HBASE-13008](https://issues.apache.org/jira/browse/HBASE-13008) | *Minor* | **Better default for hbase.regionserver.regionSplitLimit parameter.**

The configuration parameter "hbase.regionserver.regionSplitLimit", the number of regions a regionserver can open before splitting on the server is stopped to limit further region count growth, was lowered from Integer.MAX\_VALUE (2147483647) to a much more reasonable 1000, and documented in hbase-defaults.xml.


---

* [HBASE-13030](https://issues.apache.org/jira/browse/HBASE-13030) | *Major* | **[1.0.0 polish] Make ScanMetrics public again and align Put 'add' with Get, Delete, etc., addColumn**

Miscellaneous cleanup. Make ScanMetrics audience public -- was mistakenly made private -- and make their access more amenable. Make Put like Delete and Get adding addColumn method (deprecating add). Make the ByteBuffer returned by Cell read only. Add to CellUtil a method to get a ByteRange on a value.


---

* [HBASE-13028](https://issues.apache.org/jira/browse/HBASE-13028) | *Blocker* | **Cleanup mapreduce API changes**

The bindings for reading data from HBase using both the Hadoop MapReduce mapred and mapreduce libraries now are initialized the same way. Subclasses wishing to build on TableInputFormatBase that use the new initialize method will have access to job configuration information.


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


---

* [HBASE-13142](https://issues.apache.org/jira/browse/HBASE-13142) | *Major* | **[PERF] Reuse the IPCUtil#buildCellBlock buffer**

Adds buffer reuse sending Cell results. It is on by default and should not need configuration. Improves GC profile and ups throughput. The benefit gets better the larger the row size returned.

The buffer reservoir is bounded at a maximum count after which we will start logging at WARN level that the reservoir is running at capacity (returned buffers will be discarded and not added back to the reservoir pool). Default maximum is twice the handler count: i.e. 2 \* hbase.regionserver.handler.count. This should be more than enough. Set the maximum with the new configuration: hbase.ipc.server.reservoir.max

The reservoir will not cache buffers in excess of hbase.ipc.server.reservoir.max.buffer.size  The default is 10MB. This means that if a row is very large, then we will allocate a buffer of the average size that is currently in the pool and we will then resize it till we can accommodate the return. These resizes are expensive. The resultant buffer will be used and then discarded.

To check how the reservoir is doing, enable trace level logging for a few seconds on a regionserver. You can do this from the regionserver UI. See 'Log Level'. Set org.apache.hadoop.hbase.io.BoundedByteBufferPool to TRACE. The BoundedByteBufferPool will spew report to the log. Disable the TRACE level and then check the log. You'll see allocation rate, size of pool, size of buffers in pool, etc.


---

* [HBASE-12706](https://issues.apache.org/jira/browse/HBASE-12706) | *Critical* | **Support multiple port numbers in ZK quorum string**

hbase.zookeeper.quorum configuration now allows servers together with client ports consistent with the way Zookeeper java client accepts the quorum string. In this case, using hbase.zookeeper.clientPort is not needed. eg.  hbase.zookeeper.quorum=myserver1:2181,myserver2:20000,myserver3:31111


---

* [HBASE-12586](https://issues.apache.org/jira/browse/HBASE-12586) | *Major* | **Task 6 & 7 from HBASE-9117,  delete all public HTable constructors and delete ConnectionManager#{delete,get}Connection**

HTable class has been marked as private API before, and now it's no longer directly instantiable from client code (all public constructors have been removed). All clients should use Connection#getTable() and Connection#getRegionLocator() when appropriate to obtain Table and RegionLocator implementations to work with.


---

* [HBASE-13198](https://issues.apache.org/jira/browse/HBASE-13198) | *Major* | **Remove HConnectionManager**

**WARNING: No release note provided for this change.**


---

* [HBASE-12867](https://issues.apache.org/jira/browse/HBASE-12867) | *Major* | **Shell does not support custom replication endpoint specification**

Adds support to add\_peer in hbase shell to add a custom replication endpoint from HBASE-12254.


---

* [HBASE-13273](https://issues.apache.org/jira/browse/HBASE-13273) | *Major* | **Make Result.EMPTY\_RESULT read-only; currently it can be modified**

The Result.EMPTY\_RESULT object is now immutable. In previous releases, the object could be modified by a caller to no longer be empty. Code that relies on this behavior will now receive an UnsupportedOperationException.


---

* [HBASE-13331](https://issues.apache.org/jira/browse/HBASE-13331) | *Blocker* | **Exceptions from DFS client can cause CatalogJanitor to delete referenced files**

Fixes an issue where files from a split region that were still referenced were erroneously deleted leading to data loss.


---

* [HBASE-13248](https://issues.apache.org/jira/browse/HBASE-13248) | *Major* | **Make HConnectionImplementation top-level class.**

**WARNING: No release note provided for this change.**


---

* [HBASE-13298](https://issues.apache.org/jira/browse/HBASE-13298) | *Critical* | **Clarify if Table.{set\|get}WriteBufferSize() is deprecated or not**

Deprecate said methods. They were mistakenly included in Table Interface.


---

* [HBASE-13316](https://issues.apache.org/jira/browse/HBASE-13316) | *Minor* | **Reduce the downtime on planned moves of regions**

When issuing an Admin.move command the RegionServer that receive the region will try and open the StoreFiles of that region to prime the block cache with index blocks.


---

* [HBASE-13170](https://issues.apache.org/jira/browse/HBASE-13170) | *Major* | **Allow block cache to be external**

HBase can use memcached as an external block cache. To use this change your config to set hbase.blockcache.use.external to true and hbase.cache.memcached.servers to contain the list of memcached servers to use.


---

* [HBASE-10728](https://issues.apache.org/jira/browse/HBASE-10728) | *Major* | **get\_counter value is never used.**

for 0.98 and 1.0 changes are compatible (due to mitigation by HBASE-13433):

\* The "get\_counter" command no longer requires a dummy 4th argument. Downstream users are encouraged to migrate code to not pass this argument because it will result in an error for HBase 1.1+.
\* The "incr" command now outputs the current value of the counter to stdout.
ex:
{code}
jruby-1.6.8 :005 \> incr 'counter\_example', 'r1', 'cf1:foo', 10
COUNTER VALUE = 1772
0 row(s) in 0.1180 seconds
{code}

for 1.1+ changes are incompatible:

\* The "get\_counter" command no longer accepts a dummy 4th argument. Downstream users will need to update their code to not pass this argument.
ex:
{code}
jruby-1.6.8 :006 \> get\_counter 'counter\_example', 'r1', 'cf1:foo'
COUNTER VALUE = 1772

{code}
\* The "incr" command now outputs the current value of the counter to stdout.
ex:
{code}
jruby-1.6.8 :005 \> incr 'counter\_example', 'r1', 'cf1:foo', 10
COUNTER VALUE = 1772
0 row(s) in 0.1180 seconds
{code}


---

* [HBASE-13361](https://issues.apache.org/jira/browse/HBASE-13361) | *Minor* | **Remove or undeprecate {get\|set}ScannerCaching in HTable**

Removed getScannerCaching and setScannerCaching from Table


---

* [HBASE-13187](https://issues.apache.org/jira/browse/HBASE-13187) | *Critical* | **Add ITBLL that exercises per CF flush**

Pass the -D flag generator.multiple.columnfamilies on the command-line if you want the generator to write three column families rather than the default one. When set, we will write the usual 'meta' column family and use it checking linked-list is wholesome but we will also write a 'tiny' column family and a 'big' column family to provoke uneven flushing; good for testing the flush-by-columnfamily feature.


---

* [HBASE-12954](https://issues.apache.org/jira/browse/HBASE-12954) | *Minor* | **Ability impaired using HBase on multihomed hosts**

The following config is added by this JIRA:

hbase.regionserver.hostname

This config is for experts: don't set its value unless you really know what you are doing.
When set to a non-empty value, this represents the (external facing) hostname for the underlying server.
See https://issues.apache.org/jira/browse/HBASE-12954 for details.

Caution: please make sure rolling upgrade succeeds before turning on this feature.


---

* [HBASE-13252](https://issues.apache.org/jira/browse/HBASE-13252) | *Major* | **Get rid of managed connections and connection caching**

For a long time, HBase supported 2 types of connections - managed, which were cached and closed automatically when not needed, and unmanaged, where user is responsible for closing the connections by calling #close() on them.

The concept of managed connections in HBase (deprecated before) has now been extinguished completely, and now all callers are responsible for managing the lifecycle of connections they acquire.


---

* [HBASE-13373](https://issues.apache.org/jira/browse/HBASE-13373) | *Major* | **Squash HFileReaderV3 together with HFileReaderV2 and AbstractHFileReader; ditto for Scanners and BlockReader, etc.**

Marking as incompatible change. Requires hfiles be major version \>= 2 and \>= minor version 3.  Version 3 files are enabled by default in 1.0.  0.98 writes version 2 minor version 3.  You cannot go to 1.0 from anything before 0.98.


---

* [HBASE-13289](https://issues.apache.org/jira/browse/HBASE-13289) | *Major* | **typo in splitSuccessCount  metric**

In hbase 1.0.0, 0.98.10, 0.98.10.1, 0.98.11, and 0.98.12 'splitSuccessCount' was misspelled as 'splitSuccessCounnt'


---

* [HBASE-11864](https://issues.apache.org/jira/browse/HBASE-11864) | *Minor* | **Enhance HLogPrettyPrinter to print information from WAL Header**

Enhance WALPrettyPrinter to print information (writer classnames and cell codec classname) from WAL Header


---

* [HBASE-11544](https://issues.apache.org/jira/browse/HBASE-11544) | *Critical* | **[Ergonomics] hbase.client.scanner.caching is dogged and will try to return batch even if it means OOME**

Results returned from RPC calls may now be returned as partials

When is a Result marked as a partial? 
When the server must stop the scan because the max size limit has been reached. Means that the LAST Result returned within the ScanResult's Result array may be marked as a partial if the scan's max size limit caused it to stop in the middle of a row.

Incompatible Change: The return type of InternalScanners#next and RegionScanners#nextRaw has been changed to NextState from boolean
The previous boolean return value can be accessed via NextState#hasMoreValues()
Provides more context as to what happened inside the scanner

Scan caching default has been changed to Integer.Max\_Value 
This value works together with the new maxResultSize value from HBASE-12976 (defaults to 2MB) 
Results returned from server on basis of size rather than number of rows
Provides better use of network since row size varies amongst tables

Protobuf models have changed for Result, ScanRequest, and ScanResponse to support new partial Results

Partial Results should be invisible to application layer unless Scan#setAllowPartials is set

Scan#setAllowPartials has been added to allow the application to request to see the partial Results returned by the server rather than have the ClientScanner form the complete Result prior to returning it to the application

To disable the use of partial Results on the server, set ScanRequest.Builder#setClientHandlesPartials() to be false in the ScanRequest issued to server

Partial Results should allow the server to return large rows in parts rather than accumulate all the cells for that particular row and run out of memory


---

* [HBASE-13362](https://issues.apache.org/jira/browse/HBASE-13362) | *Major* | **Set max result size from client only (like scanner caching).**

This introduces a new config option: hbase.server.scanner.max.result.size
This setting enforces a maximum result size (in bytes), when reached the server will return the results is has so far.
This is a safety setting and should be kept large. The default is inifinite in 0.98 and 1.0.x and 100mb in 1.1 and later.

Use hbase.client.scanner.max.result.size instead to enforce practical chunk sizes of a few mb (defaults to 2mb)


---

* [HBASE-13270](https://issues.apache.org/jira/browse/HBASE-13270) | *Major* | **Setter for Result#getStats is #addResults; confusing!**

Deprecates Result#addResults in favor of Result#setStatistics


---

* [HBASE-13118](https://issues.apache.org/jira/browse/HBASE-13118) | *Major* | **[PE] Add being able to write many columns**

Adds a --columns option to PE so you can write more than one column (changes default qualifier from 'data' to '0').


---

* [HBASE-13275](https://issues.apache.org/jira/browse/HBASE-13275) | *Major* | **Setting hbase.security.authorization to false does not disable authorization**

Prior to this change the configuration setting 'hbase.security.authorization' had no effect if security coprocessor were installed. The act of installing the security coprocessors was assumed to indicate active authorizaton was desired and required. Now it is possible to install the security coprocessors yet have them operate in a passive state with active authorization disabled by setting 'hbase.security.authorization' to false. This can be useful but is probably not what you want. For more information, consult the Security section of the HBase online manual. 

'hbase.security.authorization' defaults to true for backwards comptatible behavior.


---

* [HBASE-13419](https://issues.apache.org/jira/browse/HBASE-13419) | *Major* | **Thrift gateway should propagate text from exception causes.**

Compose thrift exception text from the text of the entire cause chain of the underlying exception.


---

* [HBASE-13453](https://issues.apache.org/jira/browse/HBASE-13453) | *Critical* | **Master should not bind to region server ports**

In 1.0.x, master by default binds to the region server ports (both rpc and info). This change brings back the usage of old master rpc and info ports in 1.1+ and master (2.0) branches. The motivation for this change is to ease the life of the user so that he does not need to do anything to bring up a RS on the same host and also to make the migration from 0.98 to 1.1  hassle free.  However, the users going from 1.0 to 1.1 would see the change in the master ports.


---

* [HBASE-13307](https://issues.apache.org/jira/browse/HBASE-13307) | *Major* | **Making methods under ScannerV2#next inlineable, faster**

Made methods smaller under Scanner#next so inlinable and compilable (was getting 'too big to compile' from hotspot). Use of unsafe to parse shorts rather than use BB#getShort... faster, etc.


---

* [HBASE-13090](https://issues.apache.org/jira/browse/HBASE-13090) | *Major* | **Progress heartbeats for long running scanners**

Previously, there was no way to enforce a time limit on scan RPC requests. The server would receive a scan RPC request and take as much time as it needed to accumulate enough results to reach a limit or exhaust the region. The problem with this approach was that, in the case of a very selective scan, the processing of the scan could take too long and cause timeouts client side.

With this fix, the server will now enforce a time limit on the execution of scan RPC requests. When a scan RPC request arrives to the server, a time limit is calculated to be half of whichever timeout value is more restictive between the configurations ("hbase.client.scanner.timeout.period" and "hbase.rpc.timeout"). When the time limit is reached, the server will return whatever results it has accumulated up to that point. The results may be empty.

To ensure that timeout checks do not occur too often (which would hurt the performance of scans), the configuration "hbase.cells.scanned.per.heartbeat.check" has been introduced. This configuration controls how often System.currentTimeMillis() is called to update the progress towards the time limit. Currently, the default value of this configuration value is 10000. Specifying a smaller value will provide a tighter bound on the time limit, but may hurt scan performance due to the higher frequency of calls to System.currentTimeMillis().

Protobuf models for ScanRequest and ScanResponse have been updated so that heartbeat support can be communicated. Support for heartbeat messages is specified in the request sent to the server via ScanRequest.Builder#setClientHandlesHeartbeats. Only when the server sees that ScanRequest#getClientHandlesHeartbeats() is true will it send heartbeat messages back to the client. A response is marked as a heartbeat message via the boolean flag ScanResponse#getHeartbeatMessage


---

* [HBASE-13481](https://issues.apache.org/jira/browse/HBASE-13481) | *Major* | **Master should respect master (old) DNS/bind related configurations**

Master now honors configuration options as was before 1.0.0 releases:
hbase.master.ipc.address
hbase.master.dns.interface
hbase.master.dns.nameserver
hbase.master.info.bindAddress
This jira also adds hbase.master.hostname parameter as an extension to HBASE-12954.


---

* [HBASE-13149](https://issues.apache.org/jira/browse/HBASE-13149) | *Blocker* | **HBase MR is broken on Hadoop 2.5+ Yarn**

In HBase 1.1.0 and above we have upgraded the version of Jackson dependencies (jackson-core-asl, jackson-mapper-asl, jackson-jaxrs and jackson-xc) from 1.8.8 to 1.9.13. This is to follow the upgrade to Jackson 1.9.13 in Hadoop 2.5 and above which causes Jackson class incompatibility for HBase as reported in HBASE-13149.  Refer to HADOOP-10104 and YARN-2092 for additional information. Jackson1.9.13 is not completely backward compatible with the prior version 1.8.8 used in HBase. See the Compatibility reports attached in HBASE-13149 and http://svn.codehaus.org/jackson/trunk/release-notes/VERSION for more information.

This upgrade does not have direct impact on HBase users and HBase applications in most cases. In the rare case where your HBase application uses Jackson directly AND your application has compatibility issue with Jackson 1.9.13, you can do the following to mitigate the problem.

1. If you are on Hadoop 2.5 or above, and your HBase application involves running Yarn jobs, we recommend you update your application to use Jackson 1.9.13. You may be able to explore classpath isolation options (e.g. HADOOP-10893) or have your own classpath isolation strategy that works for you, but the general recommendation is that you upgrade to Jackson 1.9.13.
2. You may choose to continue using Jackson 1.8.8 and not to use Jackson 1.9.13 in your classpath.  You can also choose to replace the Jackson 1.9.13 jars in $HBASE\_HOME/lib with 1.8.8 jars.  It can work for you in the following cases:
a) You are on a Hadoop version earlier than Hadoop 2.5,  or
b) You are on Hadoop 2.5 or above, but your HBase application does not involve running Yarn jobs.
3. You may experiment with further isolation using the shaded jars introduced with 1.1.0 via HBASE-13517.

Note that it may not be tested or guaranteed that using Jackson 1.8.8 in $HBASE\_HOME/lib will work in future HBase releases.
It is recommended that your HBase application matches the Jackson version provided in HBase.

In HBase 0.98.x and HBase 1.0.x, we have NOT upgraded the version of Jackson dependencies. If you are on Hadoop 2.5 or above, and your HBase application involves running Yarn jobs, you may encounter Jackson class incomparability issue, as reported in HBASE-13149.

You can do the following to mitigate the problem:
1. Use 'hadoop jar' command to run your HBase jobs.
2. Explore classpath isolation options (e.g. HADOOP-10893) or have your own classpath isolation strategy that works for you.
3. You can also choose to replace the Jackson 1.8.8 jars in $HBASE\_HOME/lib with 1.9.13 jars from your Hadoop lib directory. We have tested HBase 0.98 with Jackson 1.9.13.


---

* [HBASE-13517](https://issues.apache.org/jira/browse/HBASE-13517) | *Major* | **Publish a client artifact with shaded dependencies**

HBase now provides added convenience artifacts that shade most dependencies. These jars hbase-shaded-client and hbase-shaded-server are meant to be used when dependency conflicts can not be solved any other way. The normal jars hbase-client and hbase-server should still be preferred when possible.

Do not use hbase-shaded-server or hbase-shaded-client inside of a co-processor as bad things will happen.


---

* [HBASE-13537](https://issues.apache.org/jira/browse/HBASE-13537) | *Major* | **Procedure V2 - Change the admin interface for async operations to return Future (incompatible with branch-1.x)**

As we made changes to return types in asynchronous methods of Admin API, this change is going to break binary compatibility. The source compatibility is kept intact though. The applications running against this change needs to be recompiled to keep things working.


---

* [HBASE-13564](https://issues.apache.org/jira/browse/HBASE-13564) | *Major* | **Master MBeans are not published**

To use the coprocessor-based JMX implementation provided by HBase for Master.
Add below property in hbase-site.xml file: 

\<property\>
  \<name\>hbase.coprocessor.master.classes\</name\>
  \<value\>org.apache.hadoop.hbase.JMXListener\</value\>
\</property\>

NOTE: DO NOT set \`com.sun.management.jmxremote.port\` for Java VM at the same time.

By default, the JMX listens on TCP port 10101 for Master, we can further configure the port using below properties:

\<property\>
  \<name\>master.rmi.registry.port\</name\>
  \<value\>61110\</value\>
\</property\>
\<property\>
  \<name\>master.rmi.connector.port\</name\>
  \<value\>61120\</value\>
\</property\>
----

The registry port can be shared with connector port in most cases, so you only need to configure master.rmi.registry.port.
However if you want to use SSL communication, the 2 ports must be configured to different values.


---

* [HBASE-10800](https://issues.apache.org/jira/browse/HBASE-10800) | *Major* | **Use CellComparator instead of KVComparator**

From 2.0 branch onwards KVComparator and its subclasses MetaComparator, RawBytesComparator are all deprecated. 
All the comparators are moved to CellComparator.  MetaCellComparator, a subclass of CellComparator, will be used to compare hbase:meta cells.  
Previously exposed static instances KeyValue.COMPARATOR, KeyValue.META\_COMPARATOR and KeyValue.RAW\_COMPARATOR are deprecated instead use CellComparator.COMPARATOR and CellComparator.META\_COMPARATOR.
Also note that there will be no RawBytesComparator.  Where ever we need to compare raw bytes use Bytes.BYTES\_RAWCOMPARATOR.
CellComparator will always operate on cells and its components, abstracting the fact that a cell can be backed by a single byte[] as opposed to how KVComparators were working.


---

* [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | *Major* | **Use HDFS for HFileOutputFormat2 partitioner's path**

Introduces a new config hbase.fs.tmp.dir which is a directory in HDFS (or default file system) to use as a staging directory for HFileOutputFormat2. This is also used as the default for hbase.bulkload.staging.dir


---

* [HBASE-13533](https://issues.apache.org/jira/browse/HBASE-13533) | *Trivial* | **section on configuring ~/.m2/settings.xml has no anchor**

Correct setting.xml anchor in book


---

* [HBASE-13071](https://issues.apache.org/jira/browse/HBASE-13071) | *Major* | **Hbase Streaming Scan Feature**

MOTIVATION

A pipelined scan API is introduced for speeding up applications that combine massive data traversal with compute-intensive processing. Traditional HBase scans save network trips through prefetching the data to the client side cache. However, they prefetch synchronously: the fetch request to regionserver is invoked only when the entire cache is consumed. This leads to a stop-and-wait access pattern, in which the client stalls until the next chunk of data is fetched. Applications that do significant processing can benefit from background data prefetching, which eliminates this bottleneck. The pipelined scan implementation overlaps the cache population at the client side with application processing. Namely, it issues a new scan RPC when the iteration retrieves 50% of the cache. If the application processing (that is, the time between invocations of next()) is substantial, the new chunk of data will be available before the previous one is exhausted, and the client will not experience any delay. Ideally, the prefetch and the processing times should be balanced. 

API AND CONFIGURATION

Asynchronous scanning can be configured either globally for all tables and scans, or on per-scan basis via a new Scan class API. 

Configuration in hbase-site.xml: hbase.client.scanner.async.prefetch, default false:

 \<property\>
   \<name\>hbase.client.scanner.async.prefetch\</name\>
   \<value\>true\</value\>
 \</property\>

API - Scan#setAsyncPrefetch(boolean)

      Scan scan = new Scan();
      scan.setCaching(1000);
      scan.setMaxResultSize(BIG\_SIZE);
      scan.setAsyncPrefetch(true);
        ...
      ResultScanner scanner = table.getScanner(scan);

IMPLEMENTATION NOTES

Pipelined scan is implemented by a new ClientAsyncPrefetchScanner class, which is fully API-compatible with the synchronous ClientSimpleScanner. ClientAsyncPrefetchScanner is not instantiated in case of small (Scan#setSmall) and reversed (Scan#setReversed) scanners. The application is responsible for setting the prefetch size in a way that the prefetch time and the processing times are balanced. Note that due to double buffering, the client side cache can use twice as much memory as the synchronous scanner.

Generally, this feature will put more load on the server (higher fetch rate -- which is the whole point).  Also, YMMV.


---

* [HBASE-13636](https://issues.apache.org/jira/browse/HBASE-13636) | *Major* | **Remove deprecation for HBASE-4072 (Reading of zoo.cfg)**

Purge support for parsing zookeepers zoo.cfg deprecated since hbase-0.96.0


---

* [HBASE-13698](https://issues.apache.org/jira/browse/HBASE-13698) | *Major* | **Add RegionLocator methods to Thrift2 proxy.**

Added getRegionLocation and getAllRegionLocations to the thrift2 interface.


---

* [HBASE-5980](https://issues.apache.org/jira/browse/HBASE-5980) | *Minor* | **Scanner responses from RS should include metrics on rows/KVs filtered**

Adds scan metrics to the result. In the shell, set the ALL\_METRICS attribute to true on your scan to see dump of metrics after results (see the scan help for examples).

If you would prefer to see only a subset of the metrics, the METRICS array can be defined to include the names of only the metrics you care about.


---

* [HBASE-13375](https://issues.apache.org/jira/browse/HBASE-13375) | *Major* | **Provide HBase superuser higher priority over other users in the RPC handling**

This JIRA modifies the signature of PriorityFunction#getPriority() method to also take request user as a parameter; all RPC requests sent by super users (as determined by cluster configuration) are executed with Admin QoS.


---

* [HBASE-13754](https://issues.apache.org/jira/browse/HBASE-13754) | *Major* | **Allow non KeyValue Cell types also to oswrite**

This jira has removed the already deprecated method 
KeyValue#oswrite(final KeyValue kv, final OutputStream out)


---

* [HBASE-13816](https://issues.apache.org/jira/browse/HBASE-13816) | *Major* | **Build shaded modules only in release profile**

hbase-shaded-client and hbase-shaded-server modules will not build the actual jars unless -Prelease is supplied in mvn.


---

* [HBASE-13686](https://issues.apache.org/jira/browse/HBASE-13686) | *Major* | **Fail to limit rate in RateLimiter**

As per this jira contribution. We now support two kinds of RateLimiter.
1) org.apache.hadoop.hbase.quotas.AverageIntervalRateLimiter : This limiter will refill resources at every TimeUnit/resources interval.
Example: For a limiter configured with 10resources/second, then 1resource will be refilled after every 100ms.

2) org.apache.hadoop.hbase.quotas.FixedIntervalRateLimiter: This limiter will refill resources only after a given fixed interval of time.

Client can configure anyone of this rate limiter for the cluster by setting the value for the property "hbase.quota.rate.limiter" in the hbase-site.xml. org.apache.hadoop.hbase.quotas.AverageIntervalRateLimiter is the default value.
Note: Client needs to restart the cluster for the configuration to take into effect.


---

* [HBASE-13843](https://issues.apache.org/jira/browse/HBASE-13843) | *Trivial* | **Fix internal constant text in ReplicationManager.java**

In previous versions of HBase, the ReplicationAdmin utility erroneously used the string key "columnFamlyName" when listing replicated column families. It now uses the corrected spelling of "columnFamilyName" (note the added "i").

Downstream code that parsed the replication entries returned from listReplicated will need to be updated to use the new key. Previously compiled code that relied on the static CFNAME member of ReplicationAdmin will need to be recompiled in order to see the updated value.


---

* [HBASE-13900](https://issues.apache.org/jira/browse/HBASE-13900) | *Minor* | **duplicate methods between ProtobufMagic and ProtobufUtil**

Use ProtobufMagic methods in ProtobufUtil


---

* [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | *Major* | **[ergonomics] add region size balancing as a feature of master**

This patch adds optional ability for HMaster to normalize regions in size (disabled by default, change hbase.normalizer.enabled property to true to turn it on). If enabled, HMaster periodically (every 30 minutes by default) monitors tables for which normalization is enabled in table configuration and performs splits/merges as seems appropriate. Users may implement their own normalization strategies by implementing RegionNormalizer interface and configuring it in hbase-site.xml.


---

* [HBASE-13898](https://issues.apache.org/jira/browse/HBASE-13898) | *Minor* | **correct additional javadoc failures under java 8**

Correct Javadoc generation errors


---

* [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | *Major* | **Deletes done during the region merge transaction may get eclipsed**

Use the master's timestamp when sending hbase:meta edits on region merge to ensure proper ordering of new region addition and old region deletes.


---

* [HBASE-13869](https://issues.apache.org/jira/browse/HBASE-13869) | *Trivial* | **Fix typo in HBase book**

Fix typo in HBase book


---

* [HBASE-13214](https://issues.apache.org/jira/browse/HBASE-13214) | *Major* | **Remove deprecated and unused methods from HTable class**

**WARNING: No release note provided for this change.**


---

* [HBASE-13930](https://issues.apache.org/jira/browse/HBASE-13930) | *Major* | **Exclude Findbugs packages from shaded jars**

Exclude Findbugs packages from shaded jars


---

* [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | *Critical* | **Region splitting uses a single thread in most common cases**

The performance of region splitting has been improved by using a thread pool to split the store files concurrently. Prior to this change, the store files were always split sequentially in a single thread, so a region with multiple store files ended up taking several seconds. The thread pool is sized dynamically with the aim of getting maximum concurrency, without exceeding the number of cores available for HBase Java process. A lower limit for the thread pool can be explicitly set using the property hbase.regionserver.region.split.threads.max.


---

* [HBASE-13747](https://issues.apache.org/jira/browse/HBASE-13747) | *Critical* | **Promote Java 8 to "yes" in support matrix**

Java 8 is considered supported and tested as of HBase 1.2+


---

* [HBASE-13983](https://issues.apache.org/jira/browse/HBASE-13983) | *Minor* | **Doc how the oddball HTable methods getStartKey, getEndKey, etc. will be removed in 2.0.0**

Adds extra doc on getStartKeys, getEndKeys, and getStartEndKeys in HTable explaining that they will be removed in 2.0.0 (these methods did not get the proper full major version deprecation cycle).

In this issue, we actually also remove these methods in master/2.0.0 branch.


---

* [HBASE-13895](https://issues.apache.org/jira/browse/HBASE-13895) | *Critical* | **DATALOSS: Region assigned before WAL replay when abort**

If the master went to assign a region concurrent with a RegionServer abort, the returned RegionServerAbortedException was being handled as though the region had been cleanly offlined so assign was allowed proceed. If the region was opened in its new location before WAL replay completion, the replayed edits were ignored, worst case, or were later played over the top of edits that had come in since open and so susceptible to overwrite. In either case, DATALOSS.


---

* [HBASE-13639](https://issues.apache.org/jira/browse/HBASE-13639) | *Major* | **SyncTable - rsync for HBase tables**

Tool to sync two tables that tries to send the differences only like rsync.

Adds two new MapReduce jobs, SyncTable and HashTable. See usage for these jobs on how to use. See design doc for generally overview: https://docs.google.com/document/d/1-2c9kJEWNrXf5V4q\_wBcoIXfdchN7Pxvxv1IO6PW0-U/edit

From comments below, "It can be challenging to run against a table getting live writes, if those writes are updates/overwrites. In general, you can run it against a time range to ignore new writes, but if those writes update existing cells, then the time range scan may or may not see older versions of those cells depending on whether major compaction has happened, which may be different in remote clusters."


---

* [HBASE-13646](https://issues.apache.org/jira/browse/HBASE-13646) | *Major* | **HRegion#execService should not try to build incomplete messages**

When RegionServerCoprocessors throw an exception we will no longer attempt to build an incomplete RPC response message. Instead, the response message will be null.


---

* [HBASE-13849](https://issues.apache.org/jira/browse/HBASE-13849) | *Major* | **Remove restore and clone snapshot from the WebUI**

The HBase master status web page no longer allows operators to clone snapshots nor restore snapshots.


---

* [HBASE-14029](https://issues.apache.org/jira/browse/HBASE-14029) | *Major* | **getting started for standalone still references hadoop-version-specific binary artifacts**

HBASE-14029 Correct documentation for Hadoop version specific artifacts


---

* [HBASE-14047](https://issues.apache.org/jira/browse/HBASE-14047) | *Major* | **Cleanup deprecated APIs from Cell class**

The following API from Cell (which were deprecated since past few major versions) are removed now.
getRow
getFamily
getQualifier
getValue
getMvccVersion
The above apis can be replaced with their respective CellUtil#cloneXXX (allocates a copy) or Cell#getXXXArray (essentially just returns a pointer) based on the use case.


---

* [HBASE-7782](https://issues.apache.org/jira/browse/HBASE-7782) | *Minor* | **HBaseTestingUtility.truncateTable() not acting like CLI**

HBaseTestingUtility now uses the truncate API added in HBASE-8332 so that calls to HBTU.truncateTable will behave like the shell command: effectively dropping the table and recreating a new one with the same split points.

Previously, HBTU.truncateTable instead issued deletes for all the data already in the table. If you wish to maintain the same behavior, you should use the newly added HBTU.deleteTableData method.


---

* [HBASE-14027](https://issues.apache.org/jira/browse/HBASE-14027) | *Major* | **Clean up netty dependencies**

HBase's convenience binary artifact no longer contains the netty 3.2.4 jar . This jar was not directly used by HBase, but may have been relied on by downstream applications.


---

* [HBASE-14045](https://issues.apache.org/jira/browse/HBASE-14045) | *Major* | **Bumping thrift version to 0.9.2.**

This changes upgrades thrift dependency of HBase to 0.9.2. Though this doesn't break any HBase compatibility promises, it might impact any downstream projects that share thrift dependency with HBase.


---

* [HBASE-13954](https://issues.apache.org/jira/browse/HBASE-13954) | *Major* | **Remove HTableInterface#getRowOrBefore related server side code**

Removed Table#getRowOrBefore, Region#getClosestRowBefore, Store#getRowKeyAtOrBefore, RemoteHTable#getRowOrBefore apis and Thrift support for getRowOrBefore.
Also removed two coprocessor hooks preGetClosestRowBefore and postGetClosestRowBefore.
User using this api can instead use reverse scan something like below, 
{code} 
 Scan scan = new Scan(row); 
  scan.setSmall(true); 
  scan.setCaching(1); 
  scan.setReversed(true); 
  scan.addFamily(family); 
{code} 
pass this scan object to the scanner and retrieve the first Result from scanner output.


---

* [HBASE-11339](https://issues.apache.org/jira/browse/HBASE-11339) | *Major* | **HBase MOB**

The Moderate Object Storage (MOB) feature (HBASE-11339[1]) is modified I/O and compaction path that allows individual moderately sized values (100KB-10MB) to be stored in a way that write amplification is reduced when compared to the normal I/O path. MOB is defined in the column family and it is almost isolated with other components, the features and performance cannot be effected in normal columns.

For more details on how to use the feature please consult the HBase Reference Guide


---

* [HBASE-12295](https://issues.apache.org/jira/browse/HBASE-12295) | *Major* | **Prevent block eviction under us if reads are in progress from the BBs**

We try to delay the eviction of the block till the cellblocks are formed at the Rpc layer. A simple reference counting mechanism is introduced when ever a block is accessed from the Bucket cache.  Once a scanner completes using a block the reference count is decremented.  The eviction of the block happens only when the reference count of that block is 0.
We also introduce a concept of ShareableMemory based on the type of blocks we create from the Block cache. The blocks from the ByteBufferIOEngine directly refer to the buckets in offheap and such blocks are marked SHARED memory type. The blocks from LRU, HDFS and file mode of Bucket cache are all marked EXCLUSIVE because these blocks have their own exclusive memory.
For the CP case, any cell coming out of SHARED memory block is copied before returning the results, because CPs can use the results as its state so that eviction cannot corrupt the results.


---

* [HBASE-13992](https://issues.apache.org/jira/browse/HBASE-13992) | *Major* | **Integrate SparkOnHBase into HBase**

This release includes initial support for running Spark against HBase with a richer feature set than was previously possible with MapReduce bindings:

\* Support for Spark and Spark Streaming against Spark 1.3
\* RDD/DStream formation from scan operations
\* convenience methods for interacting with HBase from an HBase backed RDD / DStream instance
\* examples in both the Spark Java API and Spark Scala API
\* support for running against a secure HBase cluster


---

* [HBASE-13865](https://issues.apache.org/jira/browse/HBASE-13865) | *Trivial* | **Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 (part 2)**

Increase default hbase.hregion.memstore.block.multiplier from 2 to 4 in the code to match the default value in the config files.


---

* [HBASE-14081](https://issues.apache.org/jira/browse/HBASE-14081) | *Minor* | **(outdated) references to SVN/trunk in documentation**

HBASE-14081 Remove (outdated) references to SVN/trunk from documentation


---

* [HBASE-14201](https://issues.apache.org/jira/browse/HBASE-14201) | *Major* | **hbck should not take a lock unless fixing errors**

HBCK no longer takes a lock until there are changes to the cluster being made.

The old behavior can be achieved by passing the -exclusive flag.


---

* [HBASE-13985](https://issues.apache.org/jira/browse/HBASE-13985) | *Minor* | **Add configuration to skip validating HFile format when bulk loading**

A new config, hbase.loadincremental.validate.hfile , is introduced - default to true
When set to false, checking hfile format is skipped during bulkloading.


---

* [HBASE-14054](https://issues.apache.org/jira/browse/HBASE-14054) | *Major* | **Acknowledged writes may get lost if regionserver clock is set backwards**

In {{checkAndPut}} write path use max(max timestamp for the row, System.currentTimeMillis()) in the, instead of blindly taking System.currentTimeMillis() to ensure that checkAndPut() cannot do writes which is already eclipsed. This is similar to what has been done in HBASE-12449 for increment and append.


---

* [HBASE-13706](https://issues.apache.org/jira/browse/HBASE-13706) | *Minor* | **CoprocessorClassLoader should not exempt Hive classes**

Starting from HBase 2.0, CoprocessorClassLoader will not exempt hadoop classes or zookeeper classes.  This means that if the custom coprocessor jar contains hadoop or zookeeper packages and classes, they will be loaded by the CoprocessorClassLoader.  Only hbase packages and classes  are exempted from the CoprocessorClassLoader. They (and their dependencies) are loaded by the parent server class loader.


---

* [HBASE-13966](https://issues.apache.org/jira/browse/HBASE-13966) | *Minor* | **Limit column width in table.jsp**

Wraps region, start key, end key columns if too long.


---

* [HBASE-10844](https://issues.apache.org/jira/browse/HBASE-10844) | *Major* | **Coprocessor failure during batchmutation leaves the memstore datastructs in an inconsistent state**

Promotes an -ea assert to logged FATAL and RS abort when memstore is found to be in an inconsistent state.


---

* [HBASE-14148](https://issues.apache.org/jira/browse/HBASE-14148) | *Major* | **Web UI Framable Page**

Security fix: Adds protection from clickjacking using X-Frame-Options header.
This will prevent use of HBase UI in frames. To disable this feature, set the configuration 'hbase.http.filter.xframeoptions.mode' to 'ALLOW' (default is 'DENY').


---

* [HBASE-13127](https://issues.apache.org/jira/browse/HBASE-13127) | *Major* | **Add timeouts on all tests so less zombie sightings**

Use junit facility to impose timeout on test. Use test category to chose which timeout to apply: small tests timeout after 30 seconds, medium tests after 180 seconds, and large tests after ten minutes.

Updated junit version from 4.11 to 4.12. 4.12 has support for feature used here.

Add this at the head of your junit4 class to add a category-based timeout:

{code}
@Rule public final TestRule timeout =   CategoryBasedTimeout.builder().withTimeout(this.getClass()).
      withLookingForStuckThread(true).build();
{code}

For example:


---

* [HBASE-14224](https://issues.apache.org/jira/browse/HBASE-14224) | *Critical* | **Fix coprocessor handling of duplicate classes**

Prevent Coprocessors being doubly-loaded; a particular coprocessor can only be loaded once.


---

* [HBASE-13339](https://issues.apache.org/jira/browse/HBASE-13339) | *Blocker* | **Update default Hadoop version to latest for master**

Master/2.0.0 now builds on the latest stable hadoop by default.


---

* [HBASE-14313](https://issues.apache.org/jira/browse/HBASE-14313) | *Critical* | **After a Connection sees ConnectionClosingException it never recovers**

HConnection could get stuck when talking to a host that went down and then returned. This has been fixed by closing the connection in all paths.


---

* [HBASE-14309](https://issues.apache.org/jira/browse/HBASE-14309) | *Major* | **Allow load balancer to operate when there is region in transition by adding force flag**

This issue adds boolean parameter, force, to 'balancer' command so that admin can force region balancing even when there is region (other than hbase:meta) in transition - assuming RIT being transient.
If hbase:meta is in transition, balancer command returns false.

WARNING: For experts only. Forcing a balance may do more damage than repair when assignment is confused
Note: enclose the force parameter in double quotes


---

* [HBASE-14261](https://issues.apache.org/jira/browse/HBASE-14261) | *Major* | **Enhance Chaos Monkey framework by adding zookeeper and datanode fault injections.**

This change augments existing chaos monkey framework with actions for restarting underlying zookeeper quorum and hdfs nodes of distributed hbase cluster. One assumption made while creating zk actions are that zookeper ensemble is an independent external service and won't be managed by hbase cluster.  For these actions to work as expected, the following parameters need to be configured appropriately.

{code}
\<property\>
  \<name\>hbase.it.clustermanager.hadoop.home\</name\>
  \<value\>$HADOOP\_HOME\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.zookeeper.home\</name\>
  \<value\>$ZOOKEEPER\_HOME\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.hbase.user\</name\>
  \<value\>hbase\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.hadoop.hdfs.user\</name\>
  \<value\>hdfs\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.zookeeper.user\</name\>
  \<value\>zookeeper\</value\>
\</property\>
{code}

The service user related configurations are newly introduced since in prod/test environments each service is managed by different user. Once the above parameters are configured properly, you can start using them as needed. An example usage for invoking these new actions is:

{{./hbase org.apache.hadoop.hbase.IntegrationTestAcidGuarantees -m serverAndDependenciesKilling}}


---

* [HBASE-14317](https://issues.apache.org/jira/browse/HBASE-14317) | *Blocker* | **Stuck FSHLog: bad disk (HDFS-8960) and can't roll WAL**

Tighten up WAL-use semantic.

1. If an append or a sync throws an exception, all subsequent attempts at using the log will also throw this same exception. The WAL is now a lame-duck until you roll it.
2. If a successful append, and then we fail to sync the append, this is a fatal exception. The container must abort to replay the WAL logs even though we have told the client that the appends failed.

The above rules have been applied laxly up to this; it used to be possible to get a good sync to go in over the top of a failed append. This has been fixed in this patch.

Also fixed a hang in the WAL subsystem if a request to pause the write pipeline took on a failed sync. before the roll requests sync got scheduled.


TODO: Revisit our WAL system. HBASE-12751 helps rationalize our write pipeline. In particular, it manages sequenceid inside mvcc which should make it so we can purge mechanism that writes empty, unflushed appends just to get the next sequenceid... problematic when WAL goes lame-duck. Lets get it in.
TODO: A successful append followed by a failed sync probably only needs us replace the WAL (if we have signalled the client that the appends failed). Bummer is that replicating, these last appends might make it to the sink cluster or get replayed during recovery. HBase should keep its own WAL length? Or sequenceid of last successful sync should be passed when doing recovery and replication?


---

* [HBASE-14314](https://issues.apache.org/jira/browse/HBASE-14314) | *Major* | **Metrics for block cache should take region replicas into account**

The following metrics for primary region replica are added:

blockCacheHitCountPrimary
blockCacheMissCountPrimary
blockCacheEvictionCountPrimary


---

* [HBASE-6617](https://issues.apache.org/jira/browse/HBASE-6617) | *Major* | **ReplicationSourceManager should be able to track multiple WAL paths**

ReplicationSourceManager now could track multiple wal paths. Notice that although most changes are internal and all metrics names remain the same, signature of below methods in MetricsSource are changed:

1. refreshAgeOfLastShippedOp now requires a String parameter which indicates the wal group id of the reporter
2. setAgeOfLastShippedOp also adds a String parameter for wal group id


---

* [HBASE-14306](https://issues.apache.org/jira/browse/HBASE-14306) | *Major* | **Refine RegionGroupingProvider: fix issues and make it more scalable**

In HBASE-14306 we've changed default strategy of RegionGroupingProvider from "identify" to "bounded", so it's required to explicitly set "hbase.wal.regiongrouping.strategy" to "identify" if user still wants to use one WAL per region

Please also notice that in the new framework there will be one WAL per group, and the region-group mapping is decided by RegionGroupingStrategy. Accordingly, we've removed BoundedRegionGroupingProvider and added BoundedRegionGroupingStrategy as a replacement. If you already have a customized class for hbase.wal.regiongrouping.strategy, please check the new logic and make updates if necessary.


---

* [HBASE-14400](https://issues.apache.org/jira/browse/HBASE-14400) | *Critical* | **Fix HBase RPC protection documentation**

To use rpc protection in HBase, set the value of 'hbase.rpc.protection' to:
'authentication' : simple authentication using kerberos
'integrity' : authentication and integrity
'privacy' : authentication and confidentiality

Earlier, HBase reference guide erroneously mentioned in some places to set the value to 'auth-conf'. This patch fixes the guide and adds temporary support for erroneously recommended values.


---

* [HBASE-14433](https://issues.apache.org/jira/browse/HBASE-14433) | *Major* | **Set down the client executor core thread count from 256 in tests**

Tests run with client executors that have core thread count of 4 and a keepalive of 3 seconds. They used to default to 256 core threads and 60 seconds  for keepalive.


---

* [HBASE-14334](https://issues.apache.org/jira/browse/HBASE-14334) | *Major* | **Move Memcached block cache in to it's own optional module.**

Move external block cache to it's own module. This  will reduce dependencies for people who use hbase-server.
Currently Memcached is the reference implementation for external block cache. External block caches allow HBase to take advantage of other more complex caches that can live longer than the HBase regionserver process and are not necessarily tied to a single computer
    life time. However external block caches add in extra operational overhead.


---

* [HBASE-14280](https://issues.apache.org/jira/browse/HBASE-14280) | *Minor* | **Bulk Upload from HA cluster to remote HA hbase cluster fails**

Patch will effectively work with Hadoop version 2.6 or greater with a launch of "internal.nameservices".
There will be no change in versions older than 2.6.


---

* [HBASE-14495](https://issues.apache.org/jira/browse/HBASE-14495) | *Major* | **TestHRegion#testFlushCacheWhileScanning goes zombie**

The WAL append was changed by HBASE-12751. Every append now sets a latch on an edit. The latch needs to be cleared or else the WAL will hang. The original failures in TestHRegion turned up 'holes' where we were failing to throw the latch if we skipped out early because we were interrupted. Other 'holes' were found where we had mocked up a WAL so the latch would just stay in place.  Futher holes were found appending WAL markers... here we were skipping the mvcc completely for a few edits.  A clean up of WALUtils made all markers take the same code paths.


---

* [HBASE-14230](https://issues.apache.org/jira/browse/HBASE-14230) | *Minor* | **replace reflection in FSHlog with HdfsDataOutputStream#getCurrentBlockReplication()**

Remove calling getNumCurrentReplicas on HdfsDataOutputStream via reflection. getNumCurrentReplicas showed up in hadoop 1+ and hadoop 0.2x. In hadoop-2 it was deprecated.


---

* [HBASE-14475](https://issues.apache.org/jira/browse/HBASE-14475) | *Major* | **Region split requests are always audited with "hbase" user rather than request user**

Region observer notifications w.r.t. split request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14367](https://issues.apache.org/jira/browse/HBASE-14367) | *Major* | **Add normalization support to shell**

This patch adds shell support for region normalizer (see HBASE-13103).

3 commands have been added to hbase shell 'tools' command group (modeled on how the balancer works):

 - 'normalizer\_enabled' checks whether region normalizer is turned on
 - 'normalizer\_switch' allows user to turn normalizer on and off
 - 'normalize' runs region normalizer if it's turned on.

Also 'alter' command has been extended to allow user to enable/disable region normalization per table (disabled by default). Use it as 

alter 'testtable', {NORMALIZATION\_MODE =\> 'true'}

Here is the help for the normalize command:

{code}
hbase(main):008:0\> help 'normalize'
Trigger region normalizer for all tables which have NORMALIZATION\_MODE flag set. Returns true
 if normalizer ran successfully, false otherwise. Note that this command has no effect
 if region normalizer is disabled (make sure it's turned on using 'normalizer\_switch' command).

 Examples:

   hbase\> normalize
{code}


---

* [HBASE-14544](https://issues.apache.org/jira/browse/HBASE-14544) | *Major* | **Allow HConnectionImpl to not refresh the dns on errors**

By setting hbase.resolve.hostnames.on.failure to false you can reduce the number of dns name resolutions that a client will do. However if machines leave and come back with different ip's the changes will not be noticed by the clients. So only set hbase.resolve.hostnames.on.failure to false if your cluster dns is not changing while clients are connected.


---

* [HBASE-14502](https://issues.apache.org/jira/browse/HBASE-14502) | *Major* | **Purge use of jmock and remove as dependency**

HBASE-14502 Purge use of jmock and remove as dependency


---

* [HBASE-14529](https://issues.apache.org/jira/browse/HBASE-14529) | *Major* | **Respond to SIGHUP to reload config**

HBase daemons can now be signaled to reload their config by sending SIGHUP to the java process. Not all config parameters can be reloaded.

In order for this new feature to work the hbase-daemon.sh script was changed to use disown rather than nohup. Functionally this shouldn't change anything but the processes will have a different parent when being run from a connected login shell.


---

* [HBASE-12911](https://issues.apache.org/jira/browse/HBASE-12911) | *Major* | **Client-side metrics**

Introduces collection and reporting of various client-perceived metrics. Metrics are exposed via JMX under "org.apache.hadoop.hbase.client.MetricsConnection". Metrics are scoped according to connection instance, so multiple connection objects (ie, to different clusters) will report their metrics separately. Metrics are disabled by default, must be enabled by configuring "hbase.client.metrics.enable=true".


---

* [HBASE-14517](https://issues.apache.org/jira/browse/HBASE-14517) | *Minor* | **Show regionserver's version in master status page**

Adds server version to the listing of regionservers on the master home page.

if a cluster where the versions deviate, at the bottom of the 'Version' column on the master home page listing of 'Region Servers', you will see a note in red that says something like: 'Total:10		9 nodes with inconsistent version'


---

* [HBASE-13819](https://issues.apache.org/jira/browse/HBASE-13819) | *Major* | **Make RPC layer CellBlock buffer a DirectByteBuffer**

For master branch(2.0 version), the BoundedByteBufferPool always create Direct (off heap) ByteBuffers and return that.
For branch-1(1.3 version), byte default the buffers returned will be off heap. This can be changed to return on heap ByteBuffers by configuring 'hbase.ipc.server.reservoir.direct.buffer' to false.


---

* [HBASE-14521](https://issues.apache.org/jira/browse/HBASE-14521) | *Major* | **Unify the semantic of hbase.client.retries.number**

After this change, hbase.client.reties.number universally means the number of retry which is one less than total tries number,  for both non-batch operations like get/scan/increment etc. which uses RpcRetryingCallerImpl#callWithRetries to submit the call or batch operations like put through AsyncProcess#submit.

Note that previously this property means total tries number for puts, so please adjust the setting of its value if necessary. Please also be cautious when setting it to zero since retry is necessary for client cache update when region move happens.


---

* [HBASE-14658](https://issues.apache.org/jira/browse/HBASE-14658) | *Major* | **Allow loading a MonkeyFactory by class name**

You can specify one of the predefined set of Monkeys when you run Integration Tests by passing the -m\|--monkey arguments on the command line; e.g -m CALM or -m SLOW\_DETERMINISTIC

This patch  makes it so you can pass the name of a class as the monkey to run: e.g. -m org.example.KingKong


---

* [HBASE-14257](https://issues.apache.org/jira/browse/HBASE-14257) | *Major* | **Periodic flusher only handles hbase:meta, not other system tables**

Memstore periodic flusher used to flush META table every 5 minutes but not any other system tables. This jira extends it to flush all system tables within this time period.


---

* [HBASE-14700](https://issues.apache.org/jira/browse/HBASE-14700) | *Major* | **Support a "permissive" mode for secure clusters to allow "simple" auth clients**

Secure HBase now supports a permissive mode to allow mixed secure and insecure clients.  This allows clients to be incrementally migrated over to a secure configuration.  To enable clients to continue to connect using SIMPLE authentication when the cluster is configured for security, set "hbase.ipc.server.fallback-to-simple-auth-allowed" equal to "true" in hbase-site.xml.  NOTE: This setting should ONLY be used as a temporary measure while converting clients over to secure authentication.  It MUST BE DISABLED for secure operation.


---

* [HBASE-12822](https://issues.apache.org/jira/browse/HBASE-12822) | *Minor* | **Option for Unloading regions through region\_mover.rb without Acknowledging**

Incorporated in HBASE-13014.


---

* [HBASE-14387](https://issues.apache.org/jira/browse/HBASE-14387) | *Major* | **Compaction improvements: Maximum off-peak compaction size**

New configuration option: hbase.hstore.compaction.max.size.offpeak - maximum selection size eligible for minor compaction during off peak hours.
hbase.hstore.compaction.max.size - this is default maximum if no off-peak hours are defined or if no maximum off-peak maximum size is defined.


---

* [HBASE-14793](https://issues.apache.org/jira/browse/HBASE-14793) | *Major* | **Allow limiting size of block into L1 block cache.**

Very large blocks can fragment the heap and cause bad issues for the garbage collector, especially the G1GC. Now there is a maximum size that a block can be and still stick in the LruBlockCache. That size defaults to 16mb but can be controlled by changing "hbase.lru.max.block.size"


---

* [HBASE-12751](https://issues.apache.org/jira/browse/HBASE-12751) | *Major* | **Allow RowLock to be reader writer**

Locks on row are now reader/writer rather than exclusive.

Moves sequenceid out of HRegion and into MVCC class; MVCC is now in charge. A WAL append is still stamped in same way (we pass MVCC context in a few places where we previously we did not).

MVCC methods cleaned up. Make a bit more sense now. Less of them.

Simplifies our update of MemStore/WAL. Now we update memstore AFTER we add to WAL (but before we sync). This fixes possible dataloss when two edits came in with same coordinates; we could order the edits in memstore differently to how they arrived in the WAL.

Marked as an incompatible change because it breaks Distributed Log Replay, a feature we'd determined already was unreliable and to be removed (See http://search-hadoop.com/m/YGbbhTJpoal8GD1).


---

* [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | *Critical* | **Commons-collections object deserialization remote command execution vulnerability**

This issue resolves a potential security vulnerability. For all versions we update our commons-collections dependency to the release that fixes the reported vulnerability in that library. In 0.98 we additionally disable by default a feature of code carried from 0.94 for backwards compatibility that is not needed.


---

* [HBASE-14821](https://issues.apache.org/jira/browse/HBASE-14821) | *Major* | **CopyTable should allow overriding more config properties for peer cluster**

Configuration properties for org.apache.hadoop.hbase.mapreduce.TableOutputFormat can now be overridden by prefixing the property keys with "hbase.mapred.output.".  When the configuration is applied to TableOutputFormat, these entries will be rewritten with the prefix removed -- ie. "hbase.mapred.output.hbase.security.authentication" becomes "hbase.security.authentication".  This can be useful when directing output to a peer cluster with different security configuration, for example.


---

* [HBASE-14825](https://issues.apache.org/jira/browse/HBASE-14825) | *Minor* | **HBase Ref Guide corrections of typos/misspellings**

Corrections to content of "book.html", which is pulled from various \*.adoc files and \*.xml files.
-- corrects typos/misspellings
-- corrects incorrectly formatted links


---

* [HBASE-14926](https://issues.apache.org/jira/browse/HBASE-14926) | *Major* | **Hung ThriftServer; no timeout on read from client; if client crashes, worker thread gets stuck reading**

Adds a timeout to server read from clients. Adds new configs hbase.thrift.server.socket.read.timeout for setting read timeout on server socket in milliseconds. Default is 60000;


---

* [HBASE-14605](https://issues.apache.org/jira/browse/HBASE-14605) | *Blocker* | **Split fails due to 'No valid credentials' error when SecureBulkLoadEndpoint#start tries to access hdfs**

When split is requested by non-super user, split related notifications for Coprocessor are executed using the login of the request user.
Previously the notifications were carried out as super user.


---

* [HBASE-14631](https://issues.apache.org/jira/browse/HBASE-14631) | *Blocker* | **Region merge request should be audited with request user through proper scope of doAs() calls to region observer notifications**

Region observer notifications w.r.t. merge request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14655](https://issues.apache.org/jira/browse/HBASE-14655) | *Blocker* | **Narrow the scope of doAs() calls to region observer notifications for compaction**

Region observer notifications w.r.t. compaction request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-7171](https://issues.apache.org/jira/browse/HBASE-7171) | *Major* | **Initial web UI for region/memstore/storefiles details**

HBASE-7171 adds 2 new pages to the region server Web UI to ease debugging and provide greater insight into the physical data layout.

Region names in UI table listing all regions (on the RS status page) are now hyperlinks leading to region detail page which shows some aggregate memstore information (currently just memory used) along with the list of all Store Files (HFiles) in the region. Names of Store Files are also hyperlinks leading to Store File detail page, which currently runs 'hbase hfile' command behind the scene and displays statistics about store file.


---

* [HBASE-13153](https://issues.apache.org/jira/browse/HBASE-13153) | *Major* | **Bulk Loaded HFile Replication**

This enhances the HBase replication to support replication of bulk loaded data. This is configurable, by default it is set to false which means it will not replicate the bulk loaded data to its peer(s). To enable it set "hbase.replication.bulkload.enabled" to true.

Following are the additional configurations added for this enhancement,
 a. hbase.replication.cluster.id - This is manadatory to configure in cluster where replication for bulk loaded data is enabled. A source cluster is uniquely identified by sink cluster using this id. This should be configured in the source cluster configuration file for all the RS.
 b. hbase.replication.conf.dir - This represents the directory where all the active cluster's file system client configurations are defined in subfolders corresponding to their respective replication cluster id in peer cluster. This should be configured in the peer cluster configuration file for all the RS. Default is HBASE\_CONF\_DIR.
 c. hbase.replication.source.fs.conf.provider - This represents the class which provides the source cluster file system client configuration to peer cluster. This should be configured in the peer cluster configuration file for all the RS. Default is org.apache.hadoop.hbase.replication.regionserver.DefaultSourceFSConfigurationProvider

 For example: If source cluster FS client configurations are copied in peer cluster under directory /home/user/dc1/ then  hbase.replication.cluster.id should be configured as dc1 and hbase.replication.conf.dir as /home/user

Note: 
 a. Any modification to source cluster FS client configuration files in peer cluster side replication configuration directory then it needs to restart all its peer(s) cluster RS with default hbase.replication.source.fs.conf.provider.
 b. Only 'xml' type files will be loaded by the default hbase.replication.source.fs.conf.provider.

As part of this we have made following changes to LoadIncrementalHFiles class which is marked as Public and Stable class,
 a. Raised the visibility scope of LoadQueueItem class from package private to public.
 b. Added a new method loadHFileQueue, which loads the queue of LoadQueueItem into the table as per the region keys provided.


---

* [HBASE-14769](https://issues.apache.org/jira/browse/HBASE-14769) | *Major* | **Remove unused functions and duplicate javadocs from HBaseAdmin**

- Removes functions from HBaseAdmin which require table name parameter as either byte[] or String. Use their counterparts which take TableName instead.
- Removes redundant javadocs from HBaseAdmin as they will be automatically inherited from Admin interface.
- HBaseAdmin is marked Audience.private so it should have been straight forward okay to remove the functions. But HBaseTestingUtility, which is marked Audience.public had a public function returning its instance, which moved this decision into gray area. Discussing in the community, it was decided that it would be okay to do so in this particular case.


---

* [HBASE-14906](https://issues.apache.org/jira/browse/HBASE-14906) | *Major* | **Improvements on FlushLargeStoresPolicy**

In HBASE-14906 we use "hbase.hregion.memstore.flush.size/column\_family\_number" as the default threshold for memstore flush instead of the fixed value through "hbase.hregion.percolumnfamilyflush.size.lower.bound" property, which makes  the default threshold more flexible to various use case. We also introduce a new property in name of "hbase.hregion.percolumnfamilyflush.size.lower.bound.min" with 16M as the default value to avoid small flush in cases like hundreds of column families.

After this change setting "hbase.hregion.percolumnfamilyflush.size.lower.bound" in hbase-site.xml won't take effect anymore, but expert users could still set this property in table descriptor to override the default value just as before


---

* [HBASE-14946](https://issues.apache.org/jira/browse/HBASE-14946) | *Critical* | **Don't allow multi's to over run the max result size.**

The HBase region server will now send a chunk of get responses to a client if the total response size is too large. This will only be done for clients 1.2.0 and beyond. Older clients by default will have the old behavior.

This patch is for the case where the basic flow is like this:

I want to get a single column from lots of rows. So I create a list of gets. Then I send them to table.get(List\<Get\>). If the regions for that table are spread out then those requests get chunked out to all the region servers. No one regionserver gets too many. However if one region server contains lots of regions for that table then a multi action can contain lots of gets. No single get is too onerous. However the regionserver won't return until every get is complete. So if there are thousands of gets that are sent in one multi then the regionserver can retain lots of data in one thread.


---

* [HBASE-14745](https://issues.apache.org/jira/browse/HBASE-14745) | *Blocker* | **Shade the last few dependencies in hbase-shaded-client**

Previously some dependencies in hbase-shaded-client were still leaking into the un-shaded namespace. This should now be fixed.

Additionally the rat checking on generated intermediate files from shading should be skipped.


---

* [HBASE-14960](https://issues.apache.org/jira/browse/HBASE-14960) | *Major* | **Fallback to using default RPCControllerFactory if class cannot be loaded**

If the configured RPC controller factory (via hbase.rpc.controllerfactory.class) cannot be found in the classpath or loaded, we fall back to using the default RPC controller factory in HBase.


---

* [HBASE-14534](https://issues.apache.org/jira/browse/HBASE-14534) | *Minor* | **Bump yammer/coda/dropwizard metrics dependency version**

Updated yammer metrics to version 3.1.2 (now it's been renamed to dropwizard). API has changed quite a bit, consult https://dropwizard.github.io/metrics/3.1.0/manual/core/ for additional information. 

Note that among other things, in yammer 2.2.0 histograms were by default created in non-biased mode (uniform sampling), while in 3.1.0 histograms created via MetricsRegistry.histogram(...) are by default exponentially decayed. This shouldn't affect end users, though.


---

* [HBASE-14984](https://issues.apache.org/jira/browse/HBASE-14984) | *Major* | **Allow memcached block cache to set optimze to false**

Setting hbase.cache.memcached.spy.optimze to true will allow the spy memcached client to try and optimize for the number of requests outstanding. This can increase throughput but can also increase variance for request times.

Setting it to true will help when round trip times are longer.
Setting it to false ( the default ) will help ensure a more even distribution of response times.


---

* [HBASE-14951](https://issues.apache.org/jira/browse/HBASE-14951) | *Minor* | **Make hbase.regionserver.maxlogs obsolete**

Rolling WAL events across a cluster can be highly correlated, hence flushing memstores, hence triggering minor compactions, that can be promoted to major ones. These events are highly correlated in time if there is a balanced write-load on the regions in a table. Default value for maximum WAL files (\* hbase.regionserver.maxlogs\*), which controls WAL rolling events - 32 is too small for many modern deployments. 
Now we calculate this value dynamically (if not defined by user), using the following formula:

maxLogs = Math.max( 32, HBASE\_HEAP\_SIZE \* memstoreRatio \* 2/ LogRollSize), where

memstoreRatio is \*hbase.regionserver.global.memstore.size\*
LogRollSize is maximum WAL file size (default 0.95 \* HDFS block size)

We need to make sure that we avoid fully or minimize events when RS has to flush memstores prematurely only because it reached artificial limit of hbase.regionserver.maxlogs, this is why we put this 2 x multiplier in equation, this gives us maximum WAL capacity of 2 x RS memstore-size. 

Runaway WAL files.

The default log rolling period (1h) allows to accumulate up to 2 X Memstore Size data in a WAL. For heap size - 32G and all other default setting, this gives ~ 26GB of data. Under heavy write load, the number of WAL files can increase dramatically. RegionServer LogRoller will be archiving old WALs periodically. User has three options, either override default hbase.regionserver.maxlogs or override default hbase.regionserver.logroll.period (decrease), or both to control runaway WALs.

For system with bursty write load,  the hbase.regionserver.logroll.period can be decreased to lower value. In this case the maximum number of wal files will be defined by the total size of memstore (unflushed data), not by the hbase.regionserver.maxlogs. But for majority of applications there will be no issues with defaults. Data will be flushed periodically from memstore, the LogRoller will archive old wal files and the system will never reach the new defaults for hbase.regionserver.maxlogs, unless the system is under extreme load for prolonged period of time, but in this case, decreasing hbase.regionserver.logroll.period allows us to control runaway wal files.

The following table gives the new default maximum log files values for several different Region Server heap sizes:

heap	memstore perc	maxLogs
1G	        40%	                        32
2G	        40%	                        32
10G	        40%	                        80
20G	        40%	                        160
32G	        40%	                        256


---

* [HBASE-14978](https://issues.apache.org/jira/browse/HBASE-14978) | *Blocker* | **Don't allow Multi to retain too many blocks**

Limiting the amount of memory resident for any one request allows the server to handle concurrent requests smoothly. To this end we added the ability to limit the size of responses to a multi request. That worked well however it correctly represent the amount of memory resident. So this issue adds on a an approximation of the number of blocks held for a request.

All clients before 1.2.0 will not get this multi request chunking based upon blocks kept. All clients 1.2.0 and after will.


---

* [HBASE-14205](https://issues.apache.org/jira/browse/HBASE-14205) | *Critical* | **RegionCoprocessorHost System.nanoTime() performance bottleneck**

**WARNING: No release note provided for this change.**


---

* [HBASE-14822](https://issues.apache.org/jira/browse/HBASE-14822) | *Major* | **Renewing leases of scanners doesn't work**

And 1.1, 1.0, and 0.98.


---

* [HBASE-14849](https://issues.apache.org/jira/browse/HBASE-14849) | *Major* | **Add option to set block cache to false on SparkSQL executions**

For user configurable parameters for HBase datasources. Please refer to org.apache.hadoop.hbase.spark.datasources.HBaseSparkConf for details. 

User can either set them in SparkConf, which will take effect globally, or configure it per table, which will overwrite the value set in SparkConf. If not set, the default value will take effect.

Currently three parameters are supported.
1. spark.hbase.blockcache.enable for blockcache enable/disable. Default is enable,  but note that this potentially may slow down the system.
2. spark.hbase.cacheSize for cache size when performing HBase table scan. Default value is 1000
3. spark.hbase.batchNum for the batch number when performing HBase table scan. Default value is 1000.


---

* [HBASE-14976](https://issues.apache.org/jira/browse/HBASE-14976) | *Minor* | **Add RPC call queues to the web ui**

Adds column displaying current aggregated call queues size in region server queues tab UI.


---

* [HBASE-14796](https://issues.apache.org/jira/browse/HBASE-14796) | *Minor* | **Enhance the Gets in the connector**

spark.hbase.bulkGetSize  in HBaseSparkConf is for grouping bulkGet, and default value is 1000.


---

* [HBASE-15018](https://issues.apache.org/jira/browse/HBASE-15018) | *Major* | **Inconsistent way of handling TimeoutException in the rpc client implementations**

When using the new AsyncRpcClient introduced in HBase 1.1.0 (HBASE-12684), time outs now result in an IOException wrapped around a CallTimeoutException instead of a bare CallTimeoutException. This change makes the AsyncRpcClient behave the same as the default HBase 1.y RPC client implementation.


---

* [HBASE-14888](https://issues.apache.org/jira/browse/HBASE-14888) | *Major* | **ClusterSchema: Add Namespace Operations**

This patch changes the semantic around namespace create/delete/modify when coprocessor asks that the invocation be by-passed. Previous the by-pass was done silently -- the method would just return with no indication as to whether by-pass route had been taken or not.  This patch adds throwing of a BypassCoprocessorException which is thrown if we have been asked to bypass a call.

The bypass facility has been in place since hbase 1.0.0 when namespace creation/deletion, etc.., was originally added in HBASE-8408 (HBASE-15071 is about addressing bypass handling in a general way)


---

* [HBASE-14468](https://issues.apache.org/jira/browse/HBASE-14468) | *Major* | **Compaction improvements: FIFO compaction policy**

FIFO compaction policy selects only files which have all cells expired. The column family MUST have non-default TTL. 
Essentially, FIFO compactor does only one job: collects expired store files. 

Because we do not do any real compaction, we do not use CPU and IO (disk and network), we do not evict hot data from a block cache. The result: improved throughput and latency both write and read.
See: https://github.com/facebook/rocksdb/wiki/FIFO-compaction-style


---

* [HBASE-15027](https://issues.apache.org/jira/browse/HBASE-15027) | *Major* | **Refactor the way the CompactedHFileDischarger threads are created**

The property 'hbase.hfile.compactions.discharger.interval' has been renamed to 'hbase.hfile.compaction.discharger.interval' that describes the interval after which the compaction discharger chore service should run.
The property 'hbase.hfile.compaction.discharger.thread.count' describes the thread count that does the compaction discharge work. 
The CompactedHFilesDischarger is a chore service now started as part of the RegionServer and this chore service iterates over all the onlineRegions in that RS and uses the RegionServer's executor service to launch a set of threads that does this job of compaction files clean up.


---

* [HBASE-15111](https://issues.apache.org/jira/browse/HBASE-15111) | *Trivial* | **"hbase version" should write to stdout**

The \`hbase version\` command now outputs directly to stdout rather than to a logger. This change allows the version information to be output consistently regardless of logger configuration. Naturally, this also means the command output ignores all logger configuration. Furthermore, the move from loggers to direct output changes the output of the command to omit metadata commonly included in logger ouput such as a timestamp, log level, and logger name.


---

* [HBASE-15098](https://issues.apache.org/jira/browse/HBASE-15098) | *Blocker* | **Normalizer switch in configuration is not used**

The config parameter, hbase.normalizer.enabled, has been dropped since it is not used in the code base.


---

* [HBASE-14865](https://issues.apache.org/jira/browse/HBASE-14865) | *Major* | **Support passing multiple QOPs to SaslClient/Server via hbase.rpc.protection**

With this patch, hbase.rpc.protection can now take multiple comma-separate QOP values. Accepted QOP values remain unchanged and are 'authentication', 'integrity', and 'privacy'. Server or client can use this configuration to specify their preference (in decreasing order) while negotiating QOP.
This feature can be used to upgrade or downgrade QOP in an online cluster without compromising availability (i.e. taking cluster offline). For e.g. to change qop from A to B, typical steps would be:
"A" --\> "B,A" --\> rolling restart --\> "B" --\> rolling restart

Sidenote: Based on experimentation, server's choice is given higher preference than client's choice. i.e. if server's choices are "A,B,C" and client's choices are "B,C,A", both A and B are acceptable, but A is chosen.


---

* [HBASE-13082](https://issues.apache.org/jira/browse/HBASE-13082) | *Major* | **Coarsen StoreScanner locks to RegionScanner**

After this JIRA we will not be doing any scanner reset after compaction during a course of a scan. The files that were compacted will still be continued to be used in the scan process. The compacted files will be archived by a background thread that runs every 2 mins by default only when there are no active scanners on those comapcted files. The above duration can be controlled using the knob 'hbase.hfile.compactions.cleaner.interval'.


---

* [HBASE-15125](https://issues.apache.org/jira/browse/HBASE-15125) | *Major* | **HBaseFsck's adoptHdfsOrphan function creates region with wrong end key boundary**

**WARNING: No release note provided for this change.**


---

* [HBASE-15145](https://issues.apache.org/jira/browse/HBASE-15145) | *Major* | **HBCK and Replication should authenticate to zookepeer using server principal**

Added a new command line argument: --auth-as-server to enable authenticating to ZooKeeper as the HBase Server principal. This is required for secure clusters for doing replication operations like add\_peer, list\_peers, etc until HBASE-11392 is fixed. This advanced option can also be used for manually fixing secure znodes. 

Commands can now be invoked like: 
hbase --auth-as-server shell 
hbase --auth-as-server zkcli 

HBCK in secure setup also needs to authenticate to ZK using servers principals.This is turned on by default (no need to pass additional argument). 

When authenticating as server, HBASE\_SERVER\_JAAS\_OPTS is concatenated to HBASE\_OPTS if defined in hbase-env.sh. Otherwise, HBASE\_REGIONSERVER\_OPTS is concatenated.


---

* [HBASE-15129](https://issues.apache.org/jira/browse/HBASE-15129) | *Major* | **Set default value for hbase.fs.tmp.dir rather than fully depend on hbase-default.xml**

Before HBASE-15129, if somehow hbase-default.xml is not on classpath, default values for hbase.fs.tmp.dir and hbase.bulkload.staging.dir are left empty. After HBASE-15129,  default values of both properties are set to "/user/\<user.name\>/hbase-staging".


---

* [HBASE-15218](https://issues.apache.org/jira/browse/HBASE-15218) | *Blocker* | **On RS crash and replay of WAL, loosing all Tags in Cells**

This issue fixes 
- In case of normal WAL (Not encrypted) we were loosing all cell tags on WAL replay after an RS crash
- In case of encrypted WAL we were not even persisting Cell tags in WAL.  Tags from all unflushed (to HFile) Cells will get lost even after WAL replay recovery is done.

As we use tags for Cell level security, this fixes 2 security issues
 - Cell level visibility labels security breach . Making a visibility restricted cell global readable
 - Cell level ACL availability issue.  A user who is cell level authorized to read this cell can not read it. It is a data loss for him.


---

* [HBASE-15157](https://issues.apache.org/jira/browse/HBASE-15157) | *Major* | **Add \*PerformanceTest for Append, CheckAnd\***

Add append, increment, checkAndMutate, checkAndPut, and checkAndDelete tests to PerformanceEvaluation tool. Below are excerpts from new usage from PE:

....
Command:
 append          Append on each row; clients overlap on keyspace so some concurrent operations
 checkAndDelete  CheckAndDelete on each row; clients overlap on keyspace so some concurrent operations
 checkAndMutate  CheckAndMutate on each row; clients overlap on keyspace so some concurrent operations
 checkAndPut     CheckAndPut on each row; clients overlap on keyspace so some concurrent operations
 filterScan      Run scan test using a filter to find a specific row based on it's value (make sure to use --rows=20)
 increment       Increment on each row; clients overlap on keyspace so some concurrent operations
 randomRead      Run random read test
....
Examples:
...
 To run 10 clients doing increments over ten rows:
 $ bin/hbase org.apache.hadoop.hbase.PerformanceEvaluation --rows=10 --nomapred increment 10

Removed IncrementPerformanceTest. It is not as configurable as the additions made here.


---

* [HBASE-15158](https://issues.apache.org/jira/browse/HBASE-15158) | *Major* | **Change order in which we do write pipeline operations; do all under row locks!**

Changed the write pipeline order; made it more rational, easier-to-reason-about doing all updates to WA, MemStore, and mvcc while read/write rowlock is held where before we'd release after WAL append and then do sync and mvcc.


---

* [HBASE-15046](https://issues.apache.org/jira/browse/HBASE-15046) | *Major* | **Perf test doing all mutation steps under row lock**

In here we perf tested a realignment of the write pipeline and mvcc handling.  Thought was that this work was a predicate for a general fix of HBASE-14460 (turns out, realignment of write path was not needed to fix the increment perf regression). The perf testing here made it so we were able to simplify writing. HBASE-15158 was just committed. This work is done.


---

* [HBASE-14460](https://issues.apache.org/jira/browse/HBASE-14460) | *Critical* | **[Perf Regression] Merge of MVCC and SequenceId (HBASE-8763) slowed Increments, CheckAndPuts, batch operations**

This release note tries to tell the general story. Dive into sub-tasks for more specific release noting.

Increments, appends, checkAnd\* have been slow since hbase-.1.0.0. The unification of mvcc and sequence id done by HBASE-8763 was responsible.

A ‘fast-path’ workaround was added by HBASE-15031 “Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments”. It became available in 1.0.3 and 1.1.3. To enable the fast path, set "hbase.increment.fast.but.narrow.consistency" and then rolling restart. The workaround was for increments only (appends, checkAndPut, etc., were not addressed. See HBASE-15031 release note for more detail).

Subsequently, the regression was properly identified and fixed in HBASE-15213 and the fix applied to branch-1.0 and branch-1.1. As it happens, hbase-1.2.0 does not suffer from the performance regression (though the thought was that it did -- and so it got the fast-path patch too via HBASE-15092) nor does the master branch. HBASE-15213 identified that HBASE-12751 (as a side effect) had cured the regression.

hbase-1.0.4 (if it is ever released -- 1.0 has been end-of-lifed) and hbase-1.1.4 will have the HBASE-15213 fix.  If you are suffering from the increment regression and you are on 1.0.3 or 1.1.3, you can enable the work around to get back your increment performance but you should upgrade.


---

* [HBASE-14355](https://issues.apache.org/jira/browse/HBASE-14355) | *Major* | **Scan different TimeRange for each column family**

Adds being able to Scan each column family with a different time range. Adds new methods setColumnFamilyTimeRange and getColumnFamilyTimeRange to Scan.


---

* [HBASE-15100](https://issues.apache.org/jira/browse/HBASE-15100) | *Blocker* | **Master WALProcs still never clean up**

The constructor for o.a.h.hbase.ProcedureInfo was mistakenly labeled IA.Public in previous releases and has now changed to IA.Private. Downstream users are safe to consume ProcedureInfo objects returned from HBase public interfaces, but should not expect to be able to reliably create new instances themselves.

The method ProcedureInfo.setNonceKey has been removed, because it should not have been exposed to clients.


---

* [HBASE-14949](https://issues.apache.org/jira/browse/HBASE-14949) | *Major* | **Resolve name conflict when splitting if there are duplicated WAL entries**

Now we can write duplicated WAL entries into different WAL files. This feature is required by the replication consistency fix and new implementation of WAL writer.


---

* [HBASE-15219](https://issues.apache.org/jira/browse/HBASE-15219) | *Critical* | **Canary tool does not return non-zero exit code when one of regions is in stuck state**

A new flag is added for Canary tool: -treatFailureAsError
When this flag is specified, read / write failure would result in Canary tool exit code of 5.


---

* [HBASE-11927](https://issues.apache.org/jira/browse/HBASE-11927) | *Major* | **Use Native Hadoop Library for HFile checksum (And flip default from CRC32 to CRC32C)**

Checksumming is cpu intensive. HBase computes additional checksums for HFiles (hdfs does checksums too) and stores them inline with file data. During reading, these checksums are verified to ensure data is not corrupted. This patch tries to use Hadoop Native Library for checksum computation, if it’s available, otherwise falls back to standard Java libraries. Instructions to load NHL in HBase can be found here (http://hbase.apache.org/book.html#hadoop.native.lib).

Default checksum algorithm has been changed from CRC32 to CRC32C primarily because of two reasons: 1) CRC32C has better error detection properties, and 2) New Intel processors have a dedicated instruction for crc32c computation (SSE4.2 instruction set)\*. This change is fully backward compatible. Also, users should not see any differences except decrease in cpu usage. To keep old settings, set configuration ‘hbase.hstore.checksum.algorithm’ to ‘CRC32’.

\* On linux, run 'cat /proc/cpuinfo’ and look for sse4\_2 in list of flags to see if your processor supports SSE4.2.


---

* [HBASE-13259](https://issues.apache.org/jira/browse/HBASE-13259) | *Critical* | **mmap() based BucketCache IOEngine**

mmap() based bucket cache can be configured by specifying the property
{code}
\<property\>
  \<name\>hbase.bucketcache.ioengine\</name\>
  \<value\> mmap://filepath \</value\>
\</property\>
{code}
This mode of bucket cache is ideal when your file based bucket cache size is lesser than then available RAM. When the cache is bigger than the available RAM then the kernel page faults will make this cache perform lesser particularly in case of scans.


---

* [HBASE-15184](https://issues.apache.org/jira/browse/HBASE-15184) | *Critical* | **SparkSQL Scan operation doesn't work on kerberos cluster**

Before this patch, users of the spark HBaseContext would fail due to lack of  privilege exceptions.  

Note: 
\* It is preferred to have spark in spark-on-yarn mode if Kerberos is used. 
\* This is orthogonal to issues with a kerberized spark cluster via InputFormats.


---

* [HBASE-15264](https://issues.apache.org/jira/browse/HBASE-15264) | *Major* | **Implement a fan out HDFS OutputStream**

Implement a fan-out asynchronous DFSOutputStream for implementing new WAL writer.


---

* [HBASE-15290](https://issues.apache.org/jira/browse/HBASE-15290) | *Major* | **Hbase Rest CheckAndAPI should save other cells along with compared cell**

Fixed an issue in REST server checkAndPut operation where the remaining cells other than the to-be-checked column are also applied in the put operation .


---

* [HBASE-15181](https://issues.apache.org/jira/browse/HBASE-15181) | *Major* | **A simple implementation of date based tiered compaction**

Date tiered compaction policy is a date-aware store file layout that is beneficial for time-range scans for time-series data.

When it performs well:

    reads for limited time ranges, especially scans of recent data

When it doesn't perform as well:

    random gets without a time range
    frequent deletes and updates
    out of order data writes, especially writes with timestamps in the future
    bulk loads of historical data

Recommended configuration:
To turn on Date Tiered Compaction (It is not recommended to turn on for the whole cluster because that will put meta table on it too and random get on meta table will be impacted):
hbase.hstore.compaction.compaction.policy: org.apache.hadoop.hbase.regionserver.compactions.DateTieredCompactionPolicy

Parameters for Date Tiered Compaction:
hbase.hstore.compaction.date.tiered.max.storefile.age.millis: Files with max-timestamp smaller than this will no longer be compacted.Default at Long.MAX\_VALUE.
hbase.hstore.compaction.date.tiered.base.window.millis: base window size in milliseconds. Default at 6 hours.
hbase.hstore.compaction.date.tiered.windows.per.tier: number of windows per tier. Default at 4.
hbase.hstore.compaction.date.tiered.incoming.window.min: minimal number of files to compact in the incoming window. Set it to expected number of files in the window to avoid wasteful compaction. Default at 6.
hbase.hstore.compaction.date.tiered.window.policy.class: the policy to select store files within the same time window. It doesn’t apply to the incoming window. Default at exploring compaction. This is to avoid wasteful compaction.

With tiered compaction all servers in the cluster will promote windows to higher tier at the same time, so using a compaction throttle is recommended:
hbase.regionserver.throughput.controller:org.apache.hadoop.hbase.regionserver.compactions.PressureAwareCompactionThroughputController

Because there will most likely be more store files around, we need to adjust the configuration so that flush won't be blocked and compaction will be properly throttled:
hbase.hstore.blockingStoreFiles: change to 50 if using all default parameters when turning on date tiered compaction. Use 1.5~2 x projected file count if changing the parameters, Projected file count = windows per tier x tier count + incoming window min + files older than max age

For more details, please refer to the design spec at https://docs.google.com/document/d/1\_AmlNb2N8Us1xICsTeGDLKIqL6T-oHoRLZ323MG\_uy8/edit#


---

* [HBASE-15136](https://issues.apache.org/jira/browse/HBASE-15136) | *Critical* | **Explore different queuing behaviors while busy**

Previously RPC request scheduler in HBase had 2 modes in could operate in:

 - simple FIFO
 - "partial" deadline, where deadline constraints are only imposed on long-running scan requests.

This patch adds new type of scheduler to HBase, based on the research around controlled delay (CoDel) algorithm [1], used in networking to combat bufferbloat, as well as some analysis on generalizing it to generic request queues [2]. The purpose of that work is to prevent long standing call queues caused by discrepancy between request rate and available throughput, caused by kernel/disk IO/networking stalls.

New RPC scheduler could be enabled by setting hbase.ipc.server.callqueue.type=codel in configuration. Several additional params allow to configure algorithm behavior - 

hbase.ipc.server.callqueue.codel.target.delay
hbase.ipc.server.callqueue.codel.interval
hbase.ipc.server.callqueue.codel.lifo.threshold

[1] Controlling Queue Delay / A modern AQM is just one piece of the solution to bufferbloat. http://queue.acm.org/detail.cfm?id=2209336
[2] Fail at Scale / Reliability in the face of rapid change. http://queue.acm.org/detail.cfm?id=2839461


---

* [HBASE-15338](https://issues.apache.org/jira/browse/HBASE-15338) | *Minor* | **Add a option to disable the data block cache for testing the performance of underlying file system**

Add a new config: hbase.block.data.cacheonread, which is a global switch for caching data blocks on read. The default value of this switch is true, and data blocks will be cached on read if the block cache is enabled for the family and cacheBlocks flag is set to be true for get and scan operations. If this global switch is set to false, data blocks won't be cached even if the block cache is enabled for the family and the cacheBlocks flag of Gets or Scans are sets as true. Bloom blocks and index blocks are always be cached if the block cache of the regionserver is enabled. One usage of this switch is for the performance tests for the extreme case that  the cache for data blocks all missed and all data blocks are read from underlying file system.


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

* [HBASE-15364](https://issues.apache.org/jira/browse/HBASE-15364) | *Major* | **Fix unescaped \< characters in Javadoc**

HBASE-15364 Fix unescaped \< and \> characters in Javadoc


---

* [HBASE-15271](https://issues.apache.org/jira/browse/HBASE-15271) | *Major* | **Spark Bulk Load: Need to write HFiles to tmp location then rename to protect from Spark Executor Failures**

When using the bulk load helper provided by the hbase-spark module, output files will now be written into temporary files and only made available when the executor has successfully completed.

Previously, failed executors would leave their files in place in a way that would be picked up by a bulk load command. This caused retried failures to include spurious copies of some cells.


---

* [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | *Critical* | **avoid leaking jdk.tools**

HBase now ensures that the JDK tools jar used during the build process is not exposed to downstream clients as a transitive dependency of hbase-annotations.

If you need to have the JDK tools jar in your classpath, you should add a system dependency on it. See the hbase-annotations pom for an example of the necessary pom additions.


---

* [HBASE-15435](https://issues.apache.org/jira/browse/HBASE-15435) | *Major* | **Add WAL (in bytes) written metric**

Adds a new metric named "writtenBytes" as a per-regionserver metric. Metric Description: 
Size (in bytes) of the data written to the WAL.


---

* [HBASE-6721](https://issues.apache.org/jira/browse/HBASE-6721) | *Major* | **RegionServer Group based Assignment**

[ADVANCED USERS ONLY] This patch adds a new experimental module hbase-rsgroup. It is an advanced feature for partitioning regionservers into distinctive groups for strict isolation, and should only be used by users who are sophisticated enough to understand the full implications and have a sufficient background in managing HBase clusters. 

RSGroups can be defined and managed with shell commands or corresponding Java APIs. A server can be added to a group with hostname and port pair, and tables can be moved to this group so that only regionservers in the same rsgroup can host the regions of the table. RegionServers and tables can only belong to 1 group at a time. By default, all tables and regionservers belong to the "default" group. System tables can also be put into a group using the regular APIs. A custom balancer implementation tracks assignments per rsgroup and makes sure to move regions to the relevant regionservers in that group. The group information is stored in a regular HBase table, and a zookeeper-based read-only cache is used at the cluster bootstrap time. 

To enable, add the following to your hbase-site.xml and restart your Master:


 \<property\>
   \<name\>hbase.coprocessor.master.classes\</name\>
   \<value\>org.apache.hadoop.hbase.rsgroup.RSGroupAdminEndpoint\</value\>
 \</property\>
 \<property\>
   \<name\>hbase.master.loadbalancer.class\</name\>
   \<value\>org.apache.hadoop.hbase.rsgroup.RSGroupBasedLoadBalancer\</value\>
 \</property\>


Then use the shell 'rsgroup' commands to create and manipulate regionserver groups: e.g. to add a group and then add a server to it, do as follows:

 hbase(main):008:0\> add\_rsgroup 'my\_group'
 Took 0.5610 seconds

This adds a group to the 'hbase:rsgroup' system table. Add a server (hostname + port) to the group using the 'move\_rsgroup\_servers' command as follows:

 hbase(main):010:0\> move\_rsgroup\_servers 'my\_group',['k.att.net:51129']


---

* [HBASE-15377](https://issues.apache.org/jira/browse/HBASE-15377) | *Major* | **Per-RS Get metric is time based, per-region metric is size-based**

Per-region metrics related to Get histograms are changed from being response size based into being latency based similar to the per-regionserver metrics of the same name.  

Added GetSize histogram metrics at the per-regionserver and per-region level for the response sizes.


---

* [HBASE-15323](https://issues.apache.org/jira/browse/HBASE-15323) | *Major* | **Hbase Rest CheckAndDeleteAPi should be able to delete more cells**

Fixed an issue in REST server checkAndDelete operation where the remaining cells other than the to-be-checked column are also applied in the Delete operation. Also fixed an issue in RemoteHTable where the Delete object was not passed correctly to the REST server side.


---

* [HBASE-15430](https://issues.apache.org/jira/browse/HBASE-15430) | *Critical* | **Failed taking snapshot - Manifest proto-message too large**

Failed taking snapshot - Manifest proto-message too large. add property ("snapshot.manifest.size.limit")  to change max size of proto-message


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

* [HBASE-15265](https://issues.apache.org/jira/browse/HBASE-15265) | *Major* | **Implement an asynchronous FSHLog**

To enable, set the WALProvider as follows:

{code}
\<property\>
\<name\>hbase.wal.provider\</name\>
\<value\>asyncfs\</value\>
\</property\>
\<property\>
{code}

To check which provider is active, look for the log line:

LOG.info("Instantiating WALProvider of type " + clazz);


---

* [HBASE-15538](https://issues.apache.org/jira/browse/HBASE-15538) | *Major* | **Implement secure async protobuf wal writer**

Add the following config in hbase-site.xml if you want to use secure protobuf wal writer together with AsyncFSWAL
{code}
\<property\>
\<name\>hbase.regionserver.hlog.async.writer.impl\</name\>
\<value\>org.apache.hadoop.hbase.regionserver.wal.SecureAsyncProtobufLogWriter\</value\>
\</property\>
\<property\>
{code}


---

* [HBASE-15521](https://issues.apache.org/jira/browse/HBASE-15521) | *Major* | **Procedure V2 - RestoreSnapshot and CloneSnapshot**

**WARNING: No release note provided for this change.**


---

* [HBASE-15568](https://issues.apache.org/jira/browse/HBASE-15568) | *Major* | **Procedure V2 - Remove CreateTableHandler in HBase Apache 2.0 release**

**WARNING: No release note provided for this change.**


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

* [HBASE-15507](https://issues.apache.org/jira/browse/HBASE-15507) | *Major* | **Online modification of enabled ReplicationPeerConfig**

Added update\_peer\_config to the HBase shell and ReplicationAdmin, and provided a callback for custom replication endpoints to be notified of changes to their configuration and peer data


---

* [HBASE-15481](https://issues.apache.org/jira/browse/HBASE-15481) | *Trivial* | **Add pre/post roll to WALObserver**

<!-- markdown -->

WALObserver coprocessors now can receive notifications of WAL rolling via the new methods `preWALRoll` and `postWALRoll`.

This change is incompatible due to the addition of these methods to the `WALObserver` interface. Downstream users are encouraged to instead extend the `BaseWALObserver` class, which remains compatible through this change.


---

* [HBASE-15572](https://issues.apache.org/jira/browse/HBASE-15572) | *Major* | **Adding optional timestamp semantics to HBase-Spark**

Right now the timestamp is always latest. With this patch, users can select timestamps they want.
In this patch, 4 parameters, "timestamp", "minTimestamp", "maxiTimestamp" and "maxVersions" are added to HBaseSparkConf. Users can select a timestamp, they can also select a time range with minimum timestamp and maximum timestamp.


---

* [HBASE-15187](https://issues.apache.org/jira/browse/HBASE-15187) | *Major* | **Integrate CSRF prevention filter to REST gateway**

Protection against CSRF attack can be turned on with config parameter, hbase.rest.csrf.enabled - default value is false.

The custom header to be sent can be changed via config parameter, hbase.rest.csrf.custom.header whose default value is "X-XSRF-HEADER".

Config parameter, hbase.rest.csrf.methods.to.ignore , controls which HTTP methods are not associated with customer header check.

Config parameter, hbase.rest-csrf.browser-useragents-regex , is a comma-separated list of regular expressions used to match against an HTTP request's User-Agent header when protection against cross-site request forgery (CSRF) is enabled for REST server by setting hbase.rest.csrf.enabled to true.

The implementation came from hadoop/hadoop-common-project/hadoop-common/src/main/java/org/apache/hadoop/security/http/RestCsrfPreventionFilter.java

We should periodically update the RestCsrfPreventionFilter.java in hbase codebase to include fixes to the hadoop implementation.


---

* [HBASE-13372](https://issues.apache.org/jira/browse/HBASE-13372) | *Major* | **Unit tests for SplitTransaction and RegionMergeTransaction listeners**

HBASE-13372 Add unit tests for SplitTransaction and RegionMergeTransaction listeners


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

* [HBASE-15628](https://issues.apache.org/jira/browse/HBASE-15628) | *Major* | **Implement an AsyncOutputStream which can work with any FileSystem implementation**

Introduce an AsyncFSOutput interface which is an abstraction of the original FanOutOneBlockAsyncDFSOutput. Now you can create AsyncFSOutput on any FileSystem using the method AsyncFSOutputHelper.createOutput. The returned AsyncFSOutput will be FanOutOneBlockAsyncDFSOutput if the given FileSystem is a DistributedFileSystem.


---

* [HBASE-15477](https://issues.apache.org/jira/browse/HBASE-15477) | *Major* | **Do not save 'next block header' when we cache hfileblocks**

Fix over-persisting in blockcache; no longer save the block PLUS the header of the next block (33 bytes) when writing the cache.

Also removes support for hfileblock v1; hfile block v1 was used writing hfile v1. hfile v1 was the default in hbase before hbase-0.92. hbase.96 would not start unless all v1 hfiles had been compacted out of the cluster.


---

* [HBASE-15645](https://issues.apache.org/jira/browse/HBASE-15645) | *Critical* | **hbase.rpc.timeout is not used in operations of HTable**

Fixes regression where hbase.rpc.timeout configuration was ignored in branch-1.0+

Adds new methods setOperationTimeout, getOperationTimeout, setRpcTimeout, and getRpcTimeout to Table. In branch-1.3+ they are public interfaces and in 1.0-1.2 they are labeled as @InterfaceAudience.Private.

Adds hbase.client.operation.timeout to hbase-default.xml with default of 1200000


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

* [HBASE-15281](https://issues.apache.org/jira/browse/HBASE-15281) | *Major* | **Allow the FileSystem inside HFileSystem to be wrapped**

This patch adds new configuration property - hbase.fs.wrapper. If provided, it should be fully qualified class name of the class used as a pluggable wrapper for HFileSystem. This may be useful for specific debugging/tracing needs.


---

* [HBASE-15720](https://issues.apache.org/jira/browse/HBASE-15720) | *Major* | **Print row locks at the debug dump page**

Adds a section to the debug dump page listing current row locks held.


---

* [HBASE-15575](https://issues.apache.org/jira/browse/HBASE-15575) | *Minor* | **Rename table DDL \*Handler methods in MasterObserver to more meaningful names**

**WARNING: No release note provided for this change.**


---

* [HBASE-15767](https://issues.apache.org/jira/browse/HBASE-15767) | *Major* | **Upgrade httpclient dependency**

HBase now relies on version 4.3.6 of the Apache Commons HTTPClient library. Downstream users who are exposed to it via the HBase classpath will have to similarly update their dependency.


---

* [HBASE-15743](https://issues.apache.org/jira/browse/HBASE-15743) | *Major* | **Add Transparent Data Encryption support for FanOutOneBlockAsyncDFSOutput**

Now the AsyncFSWAL can write data to a encryption zone on HDFS.


---

* [HBASE-15759](https://issues.apache.org/jira/browse/HBASE-15759) | *Minor* | **RegionObserver.preStoreScannerOpen() doesn't have acces to current readpoint**

The following RegionObserver method is deprecated and would no longer be called in hbase 2.0:

  public KeyValueScanner preStoreScannerOpen(final ObserverContext\<RegionCoprocessorEnvironment\> c,
      final Store store, final Scan scan, final NavigableSet\<byte[]\> targetCols,
      final KeyValueScanner s) throws IOException {

Instead, override this method:

  public KeyValueScanner preStoreScannerOpen(final ObserverContext\<RegionCoprocessorEnvironment\> c,
      final Store store, final Scan scan, final NavigableSet\<byte[]\> targetCols,
      final KeyValueScanner s, final long readPt) throws IOException {


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

* [HBASE-15780](https://issues.apache.org/jira/browse/HBASE-15780) | *Critical* | **Expose AuthUtil as IA.Public**

Downstream users with long lived applications that need to communicate with secure HBase instances can now rely on the AuthUtil class to handle authenticating via keytab.

For more information, see the javadoc for the org.apache.hadoop.hbase.AuthUtil class.


---

* [HBASE-15651](https://issues.apache.org/jira/browse/HBASE-15651) | *Major* | **Add report-flakies.py to use jenkins api to get failing tests**

To find recent set of flakies, run the script added by this patch. Run it to get usage information passing -h:

{code}
$ ./dev-support/report-flakies.py -h
{code}

If you get the below:

{code}
$ python ./dev-support/report-flakies.py
Traceback (most recent call last):
  File "./dev-support/report-flakies.py", line 25, in \<module\>
    import requests
ImportError: No module named requests
{code}

... install the requests module:

{code}
$ sudo pip install requests
{code}


---

* [HBASE-15784](https://issues.apache.org/jira/browse/HBASE-15784) | *Major* | **Misuse core/maxPoolSize of LinkedBlockingQueue in ThreadPoolExecutor**

The core pool size and max pool size of ThreadPoolExecutor should be the same when LinkedBlockingQueue is used. Thus the configurations hbase.hconnection.threads.max, hbase.hconnection.meta.lookup.threads.max, hbase.region.replica.replication.threads.max and hbase.multihconnection.threads.max are used as the number of the core threads, and the related configurations \*.thread.core are not used any more.


---

* [HBASE-15593](https://issues.apache.org/jira/browse/HBASE-15593) | *Major* | **Time limit of scanning should be offered by client**

Add a new configuration: hbase.ipc.min.client.request.timeout
Minimum allowable timeout (in milliseconds) in rpc request's header. This configuration exists to prevent the rpc service regarding this request as timeout immediately.


---

* [HBASE-15856](https://issues.apache.org/jira/browse/HBASE-15856) | *Critical* | **Cached Connection instances can wind up with addresses never resolved**

During periods where DNS resolution was not available or not working correctly, we could previously cache unresolved hostnames forever, in some cases preventing further connections to these hosts even when DNS service was restored.  With this change, unresolved hostnames will no longer be cached, and will instead throw an UnknownHostException during connection setup.


---

* [HBASE-15228](https://issues.apache.org/jira/browse/HBASE-15228) | *Major* | **Add the methods to RegionObserver to trigger start/complete restoring WALs**

Added two hooks around WAL restore. 
preReplayWALs(final ObserverContext\<? extends RegionCoprocessorEnvironment\> ctx,  HRegionInfo info, Path edits)
and
postReplayWALs(final ObserverContext\<? extends RegionCoprocessorEnvironment\> ctx,  HRegionInfo info, Path edits) 

Will be called at start and end of restore of a WAL file. 
The other hook around WAL restore (preWALRestore ) will be called before restore of every entry within the WAL file.


---

* [HBASE-15876](https://issues.apache.org/jira/browse/HBASE-15876) | *Blocker* | **Remove doBulkLoad(Path hfofDir, final HTable table) though it has not been through a full deprecation cycle**

Removes a doBulkLoad method though it has not been through a full deprecation cycle (but it is 'damaged' because it has a parameter that has been properly deprecated). Use the alternative {code}public void doBulkLoad(Path hfofDir, final Admin admin, Table table, RegionLocator regionLocator){code}

See http://mail-archives.apache.org/mod\_mbox/hbase-dev/201605.mbox/%3CCAMUu0w-ZiLoLBLO3D76=n3AjUr=VMtTUeYA28weLHYeq8+e3bQ@mail.gmail.com%3E for NOTICE on this 'premature' removal.


---

* [HBASE-15890](https://issues.apache.org/jira/browse/HBASE-15890) | *Major* | **Allow thrift to set/unset "cacheBlocks" for Scans**

Adds cacheBlocks to Scan


---

* [HBASE-15610](https://issues.apache.org/jira/browse/HBASE-15610) | *Blocker* | **Remove deprecated HConnection for 2.0 thus removing all PB references for 2.0**

**WARNING: No release note provided for this change.**


---

* [HBASE-15875](https://issues.apache.org/jira/browse/HBASE-15875) | *Major* | **Remove HTable references and HTableInterface**

**WARNING: No release note provided for this change.**


---

* [HBASE-15915](https://issues.apache.org/jira/browse/HBASE-15915) | *Major* | **Set timeouts on hanging tests**

Use @ClassRule to set timeout on test case level (instead of @Rule which sets timeout for the test methods). CategoryBasedTimeout.forClass(..) determines the timeout value based on category annotation (small/medium/large) on the test case.


---

* [HBASE-15907](https://issues.apache.org/jira/browse/HBASE-15907) | *Major* | **Missing documentation of create table split options**

documentation changes only - added section to Shell tricks and cross reference from region splitting section


---

* [HBASE-15931](https://issues.apache.org/jira/browse/HBASE-15931) | *Critical* | **Add log for long-running tasks in AsyncProcess**

After HBASE-15931, we will log more details for long-running tasks in AsyncProcess#waitForMaximumCurrentTasks every 10 seconds, including:
1. Table name will be included in the tasks status log
2. On which regionserver(s) the tasks are runnning will be logged when less than hbase.client.threshold.log.details tasks left, by default 10.
3. Against which regions the tasks are running will be logged when less than 2 tasks left.


---

* [HBASE-15981](https://issues.apache.org/jira/browse/HBASE-15981) | *Minor* | **Stripe and Date-tiered compactions inaccurately suggest disabling table in docs**

Removes reference to disabling table in docs for stripe and date-tiered compactions


---

* [HBASE-15989](https://issues.apache.org/jira/browse/HBASE-15989) | *Major* | **Remove hbase.online.schema.update.enable**

Removes the "hbase.online.schema.update.enable" property. 
from now, every operation that alter the schema (e.g. modifyTable, addFamily, removeFamily, ...) will use the online schema update. there is no need to disable/enable the table.


---

* [HBASE-15994](https://issues.apache.org/jira/browse/HBASE-15994) | *Major* | **Allow selection of RpcSchedulers**

Adds a FifoRpcSchedulerFactory so you can try the FifoRpcScheduler by setting  "hbase.region.server.rpc.scheduler.factory.class"


---

* [HBASE-15525](https://issues.apache.org/jira/browse/HBASE-15525) | *Critical* | **OutOfMemory could occur when using BoundedByteBufferPool during RPC bursts**

Added a new ByteBufferPool which pools N ByteBuffers. By default it makes off heap ByteBuffers when getBuffer() is called. The size of each buffer defaults to 64KB. This can be configured using 'hbase.ipc.server.reservoir.initial.buffer.size'.   The max number of buffers which can be pooled defaults to twice the number of handler threads in RS. This can be configured with key 'hbase.ipc.server.reservoir.initial.max'.  While responding to read requests and client support Codec, we will create CellBlocks and directly return it as PB payload. For making this block, we will use N ByteBuffers from pool as per the total size of the response cells. The default size of 64 KB for the buffer is inline with the number of bytes written to RPC layer in one short.(That is also 64KB).  When at point of time, the calle not able to get a free buffer from the pool (it returns null then), it will make on heap Buffer of same size (as that of Buffers in pool) and use that to create cell block.


---

* [HBASE-15971](https://issues.apache.org/jira/browse/HBASE-15971) | *Critical* | **Regression: Random Read/WorkloadC slower in 1.x than 0.98**

Change the default rpc scheduler from 'deadline' to 'fifo' instead so it is the same as in branch 0.98. 'deadline' was of questionable benefit but with a high cost scheduling. To re-enable 'deadline', set hbase.ipc.server.callqueue.type to 'deadline' in your hbase-site.xml.


---

* [HBASE-16023](https://issues.apache.org/jira/browse/HBASE-16023) | *Major* | **Fastpath for the FIFO rpcscheduler**

Adds a 'fastpath' when using the default FIFO rpc scheduler ('fifo'). Does direct handoff from Reader thread to Handler if there is one ready and willing. Will shine best when high random read workload (YCSB workloadc for instance)


---

* [HBASE-15950](https://issues.apache.org/jira/browse/HBASE-15950) | *Major* | **Fix memstore size estimates to be more tighter**

The estimates of heap usage by the memstore objects (KeyValue, object and array header sizes, etc) have been made more accurate for heap sizes up to 32G (using CompressedOops), resulting in them dropping by 10-50% in practice. This also results in less number of flushes and compactions due to "fatter" flushes. YMMV. As a result, the actual heap usage of the memstore before being flushed may increase by up to 100%. If configured memory limits for the region server had been tuned based on observed usage, this change could result in worse GC behavior or even OutOfMemory errors. Set the environment property (not hbase-site.xml) "hbase.memorylayout.use.unsafe" to false to disable.


---

* [HBASE-5291](https://issues.apache.org/jira/browse/HBASE-5291) | *Major* | **Add Kerberos HTTP SPNEGO authentication support to HBase web consoles**

HBase Web UIs can be secured from general public access using SPNEGO to require a valid Kerberos ticket.

Setting 'hbase.security.authentication.ui' to 'kerberos' in hbase-site.xml is a global switch to have all Web UIs allow only authenticated clients via Kerberos. 'hbase.security.authentication.spnego.kerberos.principal' and 'hbase.security.authentication.spnego.kerberos.keytab' are two other required properties in hbase-site.xml, the Kerberos principal and keytab to use for the server to use to log in. The primary in the Kerberos principal must be 'HTTP' as required by the SPNEGO mechanism, e.g. 'HTTP/host.domain.com@DOMAIN.COM'.


---

* [HBASE-15977](https://issues.apache.org/jira/browse/HBASE-15977) | *Major* | **Failed variable substitution on home page**

Done. Thanks, Dima, Andrew!


---

* [HBASE-14877](https://issues.apache.org/jira/browse/HBASE-14877) | *Major* | **maven archetype: client application**

This patch introduces a new infrastructure for creation and maintenance of Maven archetypes in the context of the hbase project, and it also introduces the first archetype, which end-users may utilize to generate a simple hbase-client dependent project.

NOTE that this patch should introduce two new WARNINGs ("Using platform encoding ... to copy filtered resources") into the hbase install process. These warnings are hard-wired into the maven-archetype-plugin:create-from-project goal. See hbase/hbase-archetypes/README.md, footnote [6] for details.

After applying the patch, see hbase/hbase-archetypes/README.md for details regarding the new archetype infrastructure introduced by this patch. (The README text is also conveniently positioned at the top of the patch itself.) 

Here is the opening paragraph of the README.md file: 
================= 
The hbase-archetypes subproject of hbase provides an infrastructure for creation and maintenance of Maven archetypes pertinent to HBase. Upon deployment to the archetype catalog of the central Maven repository, these archetypes may be used by end-user developers to autogenerate completely configured Maven projects (including fully-functioning sample code) through invocation of the archetype:generate goal of the maven-archetype-plugin. 
======== 
The README.md file also contains several paragraphs under the heading, "Notes for contributors and committers to the HBase project", which explains the layout of 'hbase-archetypes', and how archetypes are created and installed into the local Maven repository, ready for deployment to the central Maven repository. It also outlines how new archetypes may be developed and added to the collection in the future.


---

* [HBASE-14878](https://issues.apache.org/jira/browse/HBASE-14878) | *Major* | **maven archetype: client application with shaded jars**

Adds new hbase-shaded-client archetype; also corrects an omission found in hbase-archetypes/README.md in the section headed "How to add a new archetype".


---

* [HBASE-16153](https://issues.apache.org/jira/browse/HBASE-16153) | *Trivial* | **Correct the config name 'hbase.memestore.inmemoryflush.threshold.factor'**

**WARNING: No release note provided for this change.**


---

* [HBASE-16147](https://issues.apache.org/jira/browse/HBASE-16147) | *Major* | **Add ruby wrapper for getting compaction state**

compaction\_state shell command would return compaction state in String form:
NONE, MINOR, MAJOR, MAJOR\_AND\_MINOR


---

* [HBASE-16140](https://issues.apache.org/jira/browse/HBASE-16140) | *Major* | **bump owasp.esapi from 2.1.0 to 2.1.0.1**

The dependency owasp.esapi had a compatible change from 2.1.0 to 2.1.0.1. As a result, the transitive dependency commons-fileupload had a change from 1.2 to 1.3.1, which has some minor class changes that impact binary compatibility. Interested users should check the release notes of commons-fileupload to see if any of the incompatible changes impact them.

http://commons.apache.org/proper/commons-fileupload/changes-report.html


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

* [HBASE-13823](https://issues.apache.org/jira/browse/HBASE-13823) | *Major* | **Procedure V2: unnecessaery operaions on AssignmentManager#recoverTableInDisablingState() and recoverTableInEnablingState()**

For cluster upgraded from 1.0.x or older releases, master startup would not continue the in-progress enable/disable table process.  If orphaned znode with ENABLING/DISABLING state exists in the cluster, run hbck or manually fix the issue.  

For new cluster or cluster upgraded from 1.1.x and newer release, there is no issue to worry about.


---

* [HBASE-16231](https://issues.apache.org/jira/browse/HBASE-16231) | *Major* | **Integration tests should support client keytab login for secure clusters**

Prior to this change, the integration test clients (IntegrationTest\*) relied on the Kerberos credential cache for authentication against secured clusters.  This could lead to the tests failing due to authentication failures when the tickets in the credential cache expired.  With this change, the integration test clients will make use of the configuration properties for "hbase.client.keytab.file" and "hbase.client.kerberos.principal", when available.  This will perform a login from the configured keytab file and automatically refresh the credentials in the background for the process lifetime.


---

* [HBASE-3727](https://issues.apache.org/jira/browse/HBASE-3727) | *Minor* | **MultiHFileOutputFormat**

MultiHFileOutputFormat support output of HFiles from multiple tables. It will output directories and hfiles as follow, 
     --table1
       --family1
       --family2
         --Hfiles
     --table2
       --family3
         --hfiles
       --family4

family directory and its hfiles match the output of HFileOutputFormat2


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

* [HBASE-13701](https://issues.apache.org/jira/browse/HBASE-13701) | *Major* | **Consolidate SecureBulkLoadEndpoint into HBase core as default for bulk load**

SecureBulkLoadEndpoint  has been integrated into HBase core as default bulk load mechanism. It is no longer needed to install it as a coprocessor endpoint.
The new server is backward compatible, accommodating non-secure old client and secure old client requesting SecureBulkLoadEndpoint service.
SecureBulkLoadEndpoint is deprecated. The backward compatibility support may be removed in future releases.


---

* [HBASE-14743](https://issues.apache.org/jira/browse/HBASE-14743) | *Minor* | **Add metrics around HeapMemoryManager**

A memory metrics reveals situations happened in both MemStores and BlockCache in RegionServer. Through this metrics, users/operators can know 
1). Current size of MemStores and BlockCache in bytes.
2). Occurrence for Memstore minor and major flush. (named unblocked flush and blocked flush respectively, shown in histogram)
3). Dynamic changes in size between MemStores and BlockCache. (with Increase/Decrease as prefix, shown in histogram). And a counter for no changes, named DoNothingCounter.
4). Occurrence for memory usage alarm (used more than 95% by default) in RegionServer. (named AboveHeapOccupancyLowWatermarkCounter)


---

* [HBASE-16289](https://issues.apache.org/jira/browse/HBASE-16289) | *Critical* | **AsyncProcess stuck messages need to print region/server**

Adds logging of region and server. Helpful debugging. Logging now looks like this:
{code}
2016-06-23 17:07:18,759 INFO  [Thread-1] client.AsyncProcess$AsyncRequestFutureImpl(1601): #1, waiting for 1  actions to finish on table: DUMMY\_TABLE
2016-06-23 17:07:18,759 INFO  [Thread-1] client.AsyncProcess(1720): Left over 1 task(s) are processed on server(s): [s1:1,1,1]
2016-06-23 17:07:18,759 INFO  [Thread-1] client.AsyncProcess(1728): Regions against which left over task(s) are processed: [DUMMY\_TABLE,DUMMY\_BYTES\_1,1.3fd12ea80b4df621fb15497ba75f7368.,DUMMY\_TABLE,DUMMY\_BYTES\_2,2.924207e242e313d2e5491c625e0a296e.]
{code}


---

* [HBASE-16186](https://issues.apache.org/jira/browse/HBASE-16186) | *Major* | **Fix AssignmentManager MBean name**

The AssignmentManager MBean was named AssignmentManger (note misspelling). This patch fixed the misspelling.


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

* [HBASE-9465](https://issues.apache.org/jira/browse/HBASE-9465) | *Critical* | **Push entries to peer clusters serially**

Now in replication we can make sure the order of pushing logs is same as the order of requests from client. Set REPLICATION\_SCOPE=2 at one cf's configuration to enable this feature.
This feature relies on zk-less assignment, and conflicts with distributed log replay. So users must set hbase.assignment.usezk and hbase.master.distributed.log.replay to false to support this feature.


---

* [HBASE-16308](https://issues.apache.org/jira/browse/HBASE-16308) | *Major* | **Contain protobuf references**

Undo protobuf references through the codebase so protobuf references are contained rather than spread about the codebase. For example, moved protobuff-ing up into the various Callables rather than repeat on each method invocation cleaning up boilerplate around rpc calls. Having a few protobuf reference locations only simplifies the parent issue shading project.


---

* [HBASE-16267](https://issues.apache.org/jira/browse/HBASE-16267) | *Critical* | **Remove commons-httpclient dependency from hbase-rest module**

This issue upgrades httpclient to 4.5.2 and httpcore to 4.4.4 which are the versions used by hadoop-2.
This is to handle the following CVE's.

https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-5262 : http/conn/ssl/SSLConnectionSocketFactory.java in Apache HttpComponents HttpClient before 4.3.6 ignores the http.socket.timeout configuration setting during an SSL handshake, which allows remote attackers to cause a denial of service (HTTPS call hang) via unspecified vectors.

https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2012-6153
https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2012-5783
Apache Commons HttpClient 3.x, as used in Amazon Flexible Payments Service (FPS) merchant Java SDK and other products, does not verify that the server hostname matches a domain name in the subject's Common Name (CN) or subjectAltName field of the X.509 certificate, which allows man-in-the-middle attackers to spoof SSL servers via an arbitrary valid certificate.

Downstream users who are exposed to commons-httpclient via the HBase classpath will have to similarly update their dependency.


---

* [HBASE-12721](https://issues.apache.org/jira/browse/HBASE-12721) | *Major* | **Create Docker container cluster infrastructure to enable better testing**

Downstream users wishing to test HBase in a "distributed" fashion (multiple "nodes" running as separate containers on the same host) can now do so in an automated fashion while leveraging Docker for process isolation via the clusterdock project.

For details see the README.md in the dev-support/apache\_hbase\_topology folder.


---

* [HBASE-7621](https://issues.apache.org/jira/browse/HBASE-7621) | *Major* | **REST client (RemoteHTable) doesn't support binary row keys**

RemoteHTable now supports binary row keys with any character or byte by properly encoding request URLs. This is a both a behavioral change from earlier versions and an important fix for protocol correctness.


---

* [HBASE-16422](https://issues.apache.org/jira/browse/HBASE-16422) | *Major* | **Tighten our guarantees on compatibility across patch versions**

Adds below change to our compat guarantees:

{code}
-\* Example: A user using a newly deprecated api does not need to modify application code with hbase api calls until the next major version.
 10 +\* New APIs introduced in a patch version will only be added in a source compatible way footnote:[See 'Source Compatibility' https://blogs.oracle.com/darcy/entry/kinds\_of\_compatibility]: i.e.     code that implements public APIs will continue to compile.
{code}


---

* [HBASE-16450](https://issues.apache.org/jira/browse/HBASE-16450) | *Major* | **Shell tool to dump replication queues**

New tool to dump existing replication peers, configurations and queues when using HBase Replication. The tool provides two flags:

 --distributed  This flag will poll each RS for information about the replication queues being processed on this RS.
By default this is not enabled and the information about the replication queues and configuration will be obtained from ZooKeeper.
 --hdfs   When --distributed is used, this flag will attempt to calculate the total size of the WAL files used by the replication queues. Since its possible that multiple peers can be configured this value can be overestimated.


---

* [HBASE-14921](https://issues.apache.org/jira/browse/HBASE-14921) | *Major* | **Inmemory Compaction Optimizations; Segment Structure**

A long, working issue that discussed Segment formats introducing CellArrayMap (delivered as the patch attached to this issue) and CellChunkMap (to be delivered later in HBASE-16421 but see patch v02 for an embryonic form named CellBlockSerialized); when to copy Segment data (and when not too); and then what to include at flush time (the suffix Segment or all Segments). Designs that evolved as discussion went on are attached. Outstanding issues turned up here, not including a CellChunkMap implementation, are listed below but are to be addressed in follow-ons (See HBASE-16417):

1. The flattening without compaction is causing many small segments in pipeline, and they are not flushed all together.
2. The issue of compaction prediction cost.


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

Seek in row when random reading is one of the main consumers of CPU. This helps. See slide #7 here https://www.slideshare.net/HBaseCon/lift-the-ceiling-of-hbase-throughputs?qid=597ee2fa-8125-4faa-bb3b-2bf1ba9ccafb&v=&b=&from\_search=6


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

* [HBASE-16598](https://issues.apache.org/jira/browse/HBASE-16598) | *Major* | **Enable zookeeper useMulti always and clean up in HBase code**

Deprecate the configuration property 'hbase.zookeeper.useMulti'.
useMulti will always be enabled. ZooKeeper 3.4.x and newer is required.

Internal:

The ZKUtil#multiOrSequential(ZooKeeperWatcher zkw, List\<ZKUtilOp\> ops, boolean runSequentialOnMultiFailure) will not check 'hbase.zookeeper.useMulti' anymore, and will always use multi.
It can still fall back to sequential operations if:

RunSequentialOnMultiFailure is true
On calling multi, we get a ZooKeeper exception that can be handled by a sequential call.


---

* [HBASE-16447](https://issues.apache.org/jira/browse/HBASE-16447) | *Major* | **Replication by namespaces config in peer**

Support replication by namespaces config in peer.
1. Set a namespace in peer config means that all tables in this namespace will be replicated.
2. If the namespaces config is null, then the table-cfs config decide which table's edit can be replicated. If the table-cfs config is null, then the namespaces config decide which table's edit can be replicated.
3. If you already have set a namespace in the peer config, then you can't set any table of this namespace to the peer config. If you already have set a table in the peer config, then you can't set this table's namespace to the peer config.


---

* [HBASE-7612](https://issues.apache.org/jira/browse/HBASE-7612) | *Trivial* | **[JDK8] Replace use of high-scale-lib counters with intrinsic facilities**

org.apache.hadoop.hbase.util.Counter is deprecated now and will be removed in 3.0. Use LongAdder instead.


---

* [HBASE-16540](https://issues.apache.org/jira/browse/HBASE-16540) | *Major* | **Scan should do additional validation on start and stop row**

Scan#setStartRow() and Scan#setStopRow() now validate the argument passed for each row key.  If the length of the byte[] passed exceeds Short.MAX\_VALUE, an IllegalArgumentException will be thrown.


---

* [HBASE-16294](https://issues.apache.org/jira/browse/HBASE-16294) | *Minor* | **hbck reporting "No HDFS region dir found" for replicas**

Fixed warning error message displayed for region directory not found for non-default/ non-primary replicas in hbck


---

* [HBASE-16650](https://issues.apache.org/jira/browse/HBASE-16650) | *Major* | **Wrong usage of BlockCache eviction stat for heap memory tuning**

Changed tracking of evictedBlocks count NOT to include evictions of blocks for a removed HFile. HFiles gets removed after compaction


---

* [HBASE-16257](https://issues.apache.org/jira/browse/HBASE-16257) | *Blocker* | **Move staging dir to be under hbase root dir**

The HBase property 'hbase.bulkload.staging.dir' is deprecated and is ignored from HBase 2.0.  It will defaults to hbase.rootdir/staging automatically with the correct permissions.


---

* [HBASE-16660](https://issues.apache.org/jira/browse/HBASE-16660) | *Critical* | **ArrayIndexOutOfBounds during the majorCompactionCheck in DateTieredCompaction**

"Please do not use DateTieredCompaction with Major Compaction unless you have a version with this. Otherwise your cluster will not compact any store files and you can end up running out of file descriptors." @churro morales


---

* [HBASE-16672](https://issues.apache.org/jira/browse/HBASE-16672) | *Major* | **Add option for bulk load to always copy hfile(s) instead of renaming**

This issue adds a config, always.copy.files, to LoadIncrementalHFiles.
When set to true, source hfiles would be copied. Meaning source hfiles would be kept after bulk load is done.
Default value is false.


---

* [HBASE-16264](https://issues.apache.org/jira/browse/HBASE-16264) | *Critical* | **Figure how to deal with endpoints and shaded pb**

Shade/relocate the protobuf hbase uses internally. All core now refers to new module added in this patch, hbase-protocol-shaded. Coprocessor Endpoints carry-on with references to the original hbase-protocol module. See new chapter in book on protobufs on how-to going forward.


---

* [HBASE-15638](https://issues.apache.org/jira/browse/HBASE-15638) | *Critical* | **Shade protobuf**

Shade/relocate and include the protobuf we use internally. See protobuf chapter in the refguide for more on how we protobuf in hbase-.2.0.0 and going forward.

See https://docs.google.com/document/d/1H4NgLXQ9Y9KejwobddCqaVMEDCGbyDcXtdF5iAfDIEk/edit# for how we arrived at this approach.

See http://mail-archives.apache.org/mod\_mbox/hbase-dev/201610.mbox/%3C07850EDD-7230-431B-9AB0-C5C91B105EEC%40gmail.com%3E for discussion around merging this change and of how we might revert if an alternative to this awkward patch presents itself; e.g. an hadoop with CLASSPATH isolation (and means of dealing with Sparks use of protobuf 2.5.0, etc.)


---

* [HBASE-16567](https://issues.apache.org/jira/browse/HBASE-16567) | *Critical* | **Upgrade to protobuf-3.1.x**

Core is now up on protobuf 3.1.0 (Coprocessor Endpoints and REST are still on protobuf 2.5.0).


---

* [HBASE-16753](https://issues.apache.org/jira/browse/HBASE-16753) | *Minor* | **There is a mismatch between suggested Java version in hbase-env.sh**

Updates the comments and default values in a few scripts and docs to reflect our Java 1.8+ requirement.


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

* [HBASE-16117](https://issues.apache.org/jira/browse/HBASE-16117) | *Major* | **Fix Connection leak in mapred.TableOutputFormat**

(This change will be irrelevant after HBASE-16774 lands).
There is a subtle change with error handling when a connection is not able to connect to ZK.  Attempts to create a connection when ZK is not up will now fail immediately instead of silently creating and then failing on a subsequent HBaseAdmin call.


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

* [HBASE-15921](https://issues.apache.org/jira/browse/HBASE-15921) | *Major* | **Add first AsyncTable impl and create TableImpl based on it**

Add AsyncConnection, AsyncTable and AsyncTableRegionLocator. Now the AsyncTable only support get, put and delete. And the implementation of AsyncTableRegionLocator is synchronous actually.


---

* [HBASE-16799](https://issues.apache.org/jira/browse/HBASE-16799) | *Major* | **CP exposed Store should not expose unwanted APIs**

Below APIs from CP exposed Store interface are removed
upsert(Iterable\<Cell\> cells, long readpoint)
add(Cell cell)
add(Iterable\<Cell\> cells)
replayCompactionMarker(CompactionDescriptor compaction, boolean pickCompactionFiles,  boolean removeFiles)
assertBulkLoadHFileOk(Path srcPath)
bulkLoadHFile(String srcPathStr, long sequenceId)
bulkLoadHFile(StoreFileInfo fileInfo)


---

* [HBASE-16729](https://issues.apache.org/jira/browse/HBASE-16729) | *Trivial* | **Define the behavior of (default) empty FilterList**

Empty filter list will behave as when there is no filter added. This change is a behavioral change for those who rely on Empty filter list.


---

* [HBASE-16834](https://issues.apache.org/jira/browse/HBASE-16834) | *Major* | **Add AsyncConnection support for ConnectionFactory**

Add createAsyncConnection method to ConnectionFactory for creating AsyncConnection. The default implementation is org.apache.hadoop.hbase.client.AsyncConnectionImpl. You can use 'hbase.client.async.connection.impl' to plug in your own AsyncConnection implementation.


---

* [HBASE-16721](https://issues.apache.org/jira/browse/HBASE-16721) | *Critical* | **Concurrency issue in WAL unflushed seqId tracking**

Fixed a bug in sequenceId tracking for the WALs that caused WAL files to accumulate without being deleted due to a rare race condition.


---

* [HBASE-16414](https://issues.apache.org/jira/browse/HBASE-16414) | *Major* | **Improve performance for RPC encryption with Apache Common Crypto**

With the security RPC and encryption enabled, introduce Apache Commons Crypto to do the encryption/decryption which supports both supports both JCE Cipher and OpenSSL Cipher. Adds new configs "hbase.rpc.crypto.encryption.aes.enabled" which defaults to false, and "hbase.rpc.crypto.encryption.aes.cipher.class" which defaults to "org.apache.commons.crypto.cipher.JceCipher" to support JCE Cipher, it also can be set as "org.apache.hadoop.crypto.OpensslCipher" to support Openssl Cipher.


---

* [HBASE-16463](https://issues.apache.org/jira/browse/HBASE-16463) | *Major* | **Improve transparent table/CF encryption with Commons Crypto**

Improve transparent table/CF encryption with Commons Crypto. The change introduces a new optional CryptoCipherProvider (CommonsCryptoAES) for transparent table/CF encryption. And the encryption performance would be accelerated by hardware in modern CPU (AES-NI). This feature could be enabled by updating the configuration "hbase.crypto.cipherprovider" to "org.apache.hadoop.hbase.io.crypto.CryptoCipherProvider" in hbase-site.xml. For detailed information about transparent table/CF encryption including configuration examples see the Security section of the HBase manual.


---

* [HBASE-16930](https://issues.apache.org/jira/browse/HBASE-16930) | *Major* | **AssignmentManager#checkWals() function can recur infinitely**

Fixed potential infinite recursion in AssignmentManager.checkWals().


---

* [HBASE-15789](https://issues.apache.org/jira/browse/HBASE-15789) | *Major* | **PB related changes to work with offheap**

This issue adds a patch to our checked in internal, shaded protobuf, but it also adds a general means of apply patches to our version of protobuf. Patches found in the new src/main/patches directory are all applied as the last task when you run a build with the -Pcompile-protobuf profile under the hbase-protocol-shaded module. This commit also includes our first patch to protobuf; it adds ByteInput to mimic pb3.1's ByteOutput (src/main/patches/HBASE-15789\_V2.patch attached here).


---

* [HBASE-14551](https://issues.apache.org/jira/browse/HBASE-14551) | *Minor* | **Procedure v2 - Reimplement split**

Moved the Split Region logic to Master and most of split region coprocessor is in master now.  Need to change dependency such as Phoenix.


---

* [HBASE-16952](https://issues.apache.org/jira/browse/HBASE-16952) | *Major* | **Replace hadoop-maven-plugins with protobuf-maven-plugin for building protos**

Simplifies .proto manipulations. One step only now -- no need to keep pom.xml listing up to date with the protobuf protos directory content -- and no need to preinstall protoc; mvn does it all for you now.


---

* [HBASE-16974](https://issues.apache.org/jira/browse/HBASE-16974) | *Minor* | **Update os-maven-plugin to 1.4.1.final+ for building shade file on RHEL/CentOS**

Upgrade os-maven-plugin mvn extension which figures the os we are running on from 1.4 to 1.5.


---

* [HBASE-16747](https://issues.apache.org/jira/browse/HBASE-16747) | *Major* | **Track memstore data size and heap overhead separately**

Marking it as incompatible change as there is a change in behavior for region flush decision. The default flush size of 128 MB per region was tracked against both actual data bytes size + overhead of these cells in memstore memory (Overhead because of Cell java objects and CSLM entry).  As part of this jira we will keep track of cell data size only in region level.  So 128 MB flush size means, 128 MB of cell data bytes (key+ value+..)

Globally we will track cell data size and heap overhead separately and will consider both for forced flushes. We will not allow over consume of heap memory by all memstore. This is as old case. Only tracking way is changed.


---

* [HBASE-16608](https://issues.apache.org/jira/browse/HBASE-16608) | *Major* | **Introducing the ability to merge ImmutableSegments without copy-compaction or SQM usage**

The index-compation and data-compaction variants of CompactingMemStore are introduced. In both types the active (mutable) segment is periodically flushed-in-memory and is added as immutable segment in the compaction pipeline. The CompactingMemStore of index-compaction type is merging all immutable segments of the compacting pipeline into one. The merging of N segments is explained below. The CompactingMemStore of data-compaction type is compacting all immutable segments of the compacting pipeline into one. After the merge/compaction the old segments in the compacting pipeline are replaced with one new.

Before explaining the process of merging N old segments into new one, note that segment structure includes ordered index that allows traversing the cells data efficiently. The merge is copying the ordered indexes of the old segments into one ordered index of new segment. No data is copied, no cells are filtered. Alternatively, in the process of compacting N old segments into new one, both data and index are copied. The old cells are filtered, meaning upon compaction unused versions of the cells are not copied so the new segment has less data then all old ones.

This issue introduces only the merging ability and simplifies the user intervention for switching between types. The previous CompactingMemStore structure was added by HBASE-16420 and HBASE-16421. The future refinements of the policy or merging/compacting will come in HBASE-16417.

In order to create a table with CompactingMemStore as a MemStore one should use:
create ‘\<tablename\>’, {NAME =\> ‘\<cfname\>’, IN\_MEMORY\_COMPACTION =\> true}
IN\_MEMORY\_COMPACTION default is false, so table created as following will have the known DefaultMemStore as a MemStore.
create ‘\<tablename\>’, {NAME =\> ‘\<cfname\>’}

The default type of CompactingMemStore is index-compaction. In order to change it to data-compaction one should add to the hbase-site.xml
\<property\>
    \<name\>hbase.hregion.compacting.memstore.type\</name\>
    \<value\>data-compaction\</value\>
  \</property\>

in addition to creating the table as following
create ‘\<tablename\>’, {NAME =\> ‘\<cfname\>’, IN\_MEMORY\_COMPACTION =\> true}


---

* [HBASE-16765](https://issues.apache.org/jira/browse/HBASE-16765) | *Critical* | **New SteppingRegionSplitPolicy, avoid too aggressive spread of regions for small tables.**

Introduces a new split policy: SteppingSplitPolicy
This will use a simple step function to split a region at (by default) 2  xflushSize when no other region of the same table is seen on the region server, or max-file-size when one or more other regions of the same table is seen.

In HBase 2.0 this is going to be the default. In previous versions it can be configured.


---

* [HBASE-17014](https://issues.apache.org/jira/browse/HBASE-17014) | *Minor* | **Add clearly marked starting and shutdown log messages for all services.**

Delimit START, STOP, and ABORT messages with '\*\*\*\*\*' so denote.


---

* [HBASE-16972](https://issues.apache.org/jira/browse/HBASE-16972) | *Major* | **Log more details for Scan#next request when responseTooSlow**

**WARNING: No release note provided for this change.**


---

* [HBASE-15513](https://issues.apache.org/jira/browse/HBASE-15513) | *Major* | **hbase.hregion.memstore.chunkpool.maxsize is 0.0 by default**

MSLAB chunk pool is on by default in hbase-2.0.0.


---

* [HBASE-17050](https://issues.apache.org/jira/browse/HBASE-17050) | *Minor* | **Upgrade Apache CLI version from 1.2 to 1.3.1**

Upgrade Apache CLI version from 1.2 to 1.3.1.

These are few good/important changes included in this update:
- HelpFormatter now prints command-line options in the same order as they
  have been added. Fixes CLI-212.
- Standard help text now shows mandatory arguments also for the first
  option. Fixes CLI-186.
- A new parser is available: DefaultParser. It combines the features of the
  GnuParser and the PosixParser. It also provides additional features like
  partial matching for the long options, and long options without separator
  (i.e like the JVM memory settings: -Xmx512m). This new parser deprecates
  the previous ones. Fixes CLI-161,CLI-167,CLI-181.

For full list of changes:
  https://commons.apache.org/proper/commons-cli/changes-report.html#a1.3


---

* [HBASE-16955](https://issues.apache.org/jira/browse/HBASE-16955) | *Major* | **Fixup precommit protoc check to do new distributed protos and pb 3.1.0 build**

Test that environment no longer has to have protoc (2.5 and 3.1) available. Needed small adjustment in yetus protoc build but otherwise all works.


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

* [HBASE-17046](https://issues.apache.org/jira/browse/HBASE-17046) | *Major* | **Add 1.1 doc to hbase.apache.org**

Adds a 1.1. item to our 'Documentation and API' tab. Gives access to 1.1 APIs, XRef, etc.


---

* [HBASE-15788](https://issues.apache.org/jira/browse/HBASE-15788) | *Major* | **Use Offheap ByteBuffers from BufferPool to read RPC requests.**

Using the ByteBuffers from ByteBufferPool to read the request bytes at server.  When the size of the request is smaller than 1/6th size of a BB in the pool, we will not use that but read into an on demand created, proper sized on heap ByteBuffer.


---

* [HBASE-16169](https://issues.apache.org/jira/browse/HBASE-16169) | *Major* | **Make RegionSizeCalculator scalable**

Added couple of API's to Admin.java:

Returns region load map of all regions hosted on a region server
Map\<byte[], RegionLoad\> getRegionLoad(ServerName sn) throws IOException;

Returns region load map of all regions of a table hosted on a region server
Map\<byte[], RegionLoad\> getRegionLoad(ServerName sn, TableName tableName) throws IOException

Added an API to region server:

public GetRegionLoadResponse getRegionLoad(RpcController controller,
    GetRegionLoadRequest request) throws ServiceException;

Primary intention is to use this API for RegionSizeCalculator and not rely on Master for ClusterStatus. On large clusters, ClusterStatus() can take a long time. IfMaster is down/busy, then some of the jobs timeout/fail. Other possible uses:
1. If there is a lighter version of GetClusterStatus API (i.e without the ServerLoad for each RS), then custom maintenance tools can be better. In current world ClusterStatus is heavy. With the new APIs, each API's payload is smaller and distributed. So custom tools can call getRegionLoad() when needed, it will be more accurate. This helps with large clusters. For tools that don't need RegionLoad, the lighter version of API is fine enough.
2. Another use case is a tool like RSTop - since we can see selective metrics at RegionLevel (possibly even deltas between each RPC to the server).


---

* [HBASE-17132](https://issues.apache.org/jira/browse/HBASE-17132) | *Major* | **Cleanup deprecated code for WAL**

Remove HLogKey and related classes and methods. Remove SequenceFile based log reader and writer. WALObserver and RegionObserver are changed so this is an incompatible change.


---

* [HBASE-15786](https://issues.apache.org/jira/browse/HBASE-15786) | *Major* | **Create DBB backed MSLAB pool**

Added a new config hbase.regionserver.offheap.global.memstore.size using which one can specify the global off heap limit that all memstores can use.  When this config is in MSLAB should be turned ON and we will use the entire size for the MSLAB pool. It will make off heap chunks and pool then. It will behave as if we are working with off heap memstores.  When this config is having a valid value and MSLAB is turned OFF, the system will just ignore the offheap size and continue to use global max heap space % for memstores and work with on heap memstores.


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

* [HBASE-16119](https://issues.apache.org/jira/browse/HBASE-16119) | *Major* | **Procedure v2 - Reimplement merge**

The merge region logic is controlled by master in 2.0.0 (in 1.x, the core merge region logic is in the region server side).  The coprocessors related to merge region in RS-side would be no-op in 2.0.0 and later release.  Therefore, this is an incompatible change.  Users needs to move the CP logic to new master CP and registers them.

A new mergeRegionsAsync() API is added in client.  The existing mergeRegions() API will call the new API so client does not have to change its code.


---

* [HBASE-17221](https://issues.apache.org/jira/browse/HBASE-17221) | *Major* | **Abstract out an interface for RpcServer.Call**

Provide an interface RpcCall on the server side. 
RpcServer.Call now is marked as @InterfaceAudience.Private, and implements the interface RpcCall,


---

* [HBASE-16700](https://issues.apache.org/jira/browse/HBASE-16700) | *Minor* | **Allow for coprocessor whitelisting**

Provides ability to restrict table coprocessors based on HDFS path whitelist. (Particularly useful for allowing Phoenix coprocessors but not arbitrary user created coprocessors.)


---

* [HBASE-17272](https://issues.apache.org/jira/browse/HBASE-17272) | *Major* | **Doc how to run Standalone HBase over an HDFS instance; all daemons in one JVM but persisting to an HDFS instance**

Adds section at http://hbase.apache.org/book.html#standalone.over.hdfs on how to make standalone persist to an hdfs instance (where standalone is all daemons in the one jvm).


---

* [HBASE-16336](https://issues.apache.org/jira/browse/HBASE-16336) | *Major* | **Removing peers seems to be leaving spare queues**

Add a ReplicationZKNodeCleaner periodically check and delete the useless replication queue zk node belong to the peer which is not exist.


---

* [HBASE-17294](https://issues.apache.org/jira/browse/HBASE-17294) | *Major* | **External Configuration for Memory Compaction**

This patch provides a single external knob to control memstore compaction. It also inmemory compaction with BASIC policy as our default (AFTERWORD: inmemory compaction as default was undone in HBASE-17333 because of test failures; will be reenabled in later, dedicated issue)

Possible memstore compaction policies are:
(1) None - no memory compaction, when size threshold is exceeded data is flushed to disk
(2) Basic policy applies optimizations which modify the index to a more compacted representation. This is beneficial in all access patterns. The smaller the cells are the greater the benefit of this policy. This is the default policy.
(3) Eager - in addition to compacting the index representation as the basic policy, eager policy eliminates duplication while the data is still in memory (much like the on-disk compaction does after the data is flushed to disk). This policy is most useful for applications with high data churn or small working sets.

Memory compaction policeman be set at the column family level at table creation time:
{code}
create ‘\<tablename\>’,
   {NAME =\> ‘\<cfname\>’, 
    IN\_MEMORY\_COMPACTION =\> ‘\<NONE\|BASIC\|EAGER\>’}
{code}
or as a property at the global configuration level by setting the property in hbase-site.xml, with BASIC being the default value:
{code}
\<property\>
	\<name\>hbase.hregion.compacting.memstore.type\</name\>
	\<value\>\<NONE\|BASIC\|EAGER\>\</value\>
\</property\>
{code}
The values used in this property can change as memstore compaction policies evolve over time.


---

* [HBASE-17277](https://issues.apache.org/jira/browse/HBASE-17277) | *Major* | **Allow alternate BufferedMutator implementation**

Specify the name of an alternate BufferedMutator implementation by either:

 \* Setting "hbase.client.bufferedmutator.classname" to the name of the alternate implementation class in Configuration
 \* Or, by setting BufferedMutatorParams#implementationClassName and passing the amended BufferedMutatorParams when calling Connection#getBufferedMutator.


---

* [HBASE-17296](https://issues.apache.org/jira/browse/HBASE-17296) | *Major* | **Provide per peer throttling for replication**

Provide per peer throttling for replication. Add the bandwidth upper limit to ReplicationPeerConfig and a new shell cmd set\_peer\_bandwidth to update the bandwidth in need.


---

* [HBASE-17331](https://issues.apache.org/jira/browse/HBASE-17331) | *Minor* | **Avoid busy waiting in ThrottledInputStream**

For each read(), old ThrottledInputStream sleeps/wakes/checks for many times for controlling the throughput. After this patch, ThrottledInputStream sleeps/wakes/checks only once. So we can reduce CPU usage.


---

* [HBASE-15924](https://issues.apache.org/jira/browse/HBASE-15924) | *Major* | **Enhance hbase services autorestart capability to hbase-daemon.sh**

Now one can start hbase services with enabled "autostart/autorestart" feature in controlled fashion with the help of "--autostart-window-size" to define the window period and the "--autostart-window-retry-limit" to define the number of times the hbase services have to be restarted upon being killed/terminated abnormally within the provided window perioid.

The following cases are supported with "autostart/autorestart":

a) --autostart-window-size=0 and --autostart-window-retry-limit=0, indicates infinite window size and no retry limit
b) not providing the args, will default to a)
c) --autostart-window-size=0 and --autostart-window-retry-limit=\<positive value\> indicates the autostart process to bail out if the retry limit exceeds irrespective of window period
d) --autostart-window-size=\<x\> and --autostart-window-retry-limit=\<y\> indicates the autostart process to bail out if the retry limit "y" is exceeded for the last window period "x".


---

* [HBASE-11392](https://issues.apache.org/jira/browse/HBASE-11392) | *Critical* | **add/remove peer requests should be routed through master**

Add/Remove replication peer requests will be routed through master. And make ReplicationAdmin as Deprecated.


---

* [HBASE-5401](https://issues.apache.org/jira/browse/HBASE-5401) | *Major* | **PerformanceEvaluation generates 10x the number of expected mappers**

Changes how many tasks PE runs when clients are mapreduce. Now tasks == client count. Previous we hardcoded ten tasks per client instance.


---

* [HBASE-17335](https://issues.apache.org/jira/browse/HBASE-17335) | *Major* | **enable/disable replication peer requests should be routed through master**

Enable/Disable replication peer requests will be routed through master.


---

* [HBASE-17174](https://issues.apache.org/jira/browse/HBASE-17174) | *Minor* | **Refactor the AsyncProcess, BufferedMutatorImpl, and HTable**

+ cleanup some unused code
+ allow being able to share pool between BufferedMutatorImpl
+ setting "hbase.client.request.controller.impl" to the name of the alternate RequestController (traffic control) implementation class in Configuration
+ The default RequestController implementation is SimpleRequestController
+ setting "hbase.client.log.detail.period.ms" to call logger on a period when waiting for tasks to complete


---

* [HBASE-17314](https://issues.apache.org/jira/browse/HBASE-17314) | *Major* | **Limit total buffered size for all replication sources**

Add a conf "replication.total.buffer.quota" to limit total size of buffered entries in all replication peers. It will prevent server getting OOM if there are many peers. Default value is 256MB.


---

* [HBASE-17320](https://issues.apache.org/jira/browse/HBASE-17320) | *Major* | **Add inclusive/exclusive support for startRow and endRow of scan**

Now you can specific the inclusive of startRow and stopRow for a scan using the new methods withStartRow(byte[] startRow, boolean inclusive) and withStopRow(byte[] stopRow, boolean inclusive). The old setStartRow and setStopRow methods, and the constructors are marked as deprecated because of an strange behavior that we will include the stopRow implicitly if startRow equals to stopRow. This is used to support get scan in the old time. Use withStartRow and withStopRow instead.

For developers, the ConnectionUtils.createClosestRowBefore is also marked as deprecated as the row returned by this method is only very very close to the current row, not closest. Avoid using this method in the future.


---

* [HBASE-17336](https://issues.apache.org/jira/browse/HBASE-17336) | *Major* | **get/update replication peer config requests should be routed through master**

Get/update replication peer config requests will be routed through master.


---

* [HBASE-15172](https://issues.apache.org/jira/browse/HBASE-15172) | *Major* | **Support setting storage policy in bulkload**

After HBASE-15172 we could set storage policy through "hbase.hstore.storagepolicy" property for bulkload, or "hbase.hstore.storagepolicy.\<family\_name\>" for a specified family. Supported storage policy includes: ALL\_SSD, ONE\_SSD, HOT, WARM, COLD, etc.


---

* [HBASE-17337](https://issues.apache.org/jira/browse/HBASE-17337) | *Major* | **list replication peers request should be routed through master**

List replication peers request will be roughed through master.


---

* [HBASE-14061](https://issues.apache.org/jira/browse/HBASE-14061) | *Major* | **Support CF-level Storage Policy**

After HBASE-14061 we support to set storage policy for HFile through "hbase.hstore.block.storage.policy" configuration, and we support CF-level setting to override the settings from configuration file. Currently supported storage policies include ALL\_SSD/ONE\_SSD/HOT/WARM/COLD, refer to http://hadoop.apache.org/docs/r2.6.0/hadoop-project-dist/hadoop-hdfs/ArchivalStorage.html for more details

For example, to create a table with two families: "cf1" with "ALL\_SSD" storage policy and "cf2" with "ONE\_SSD", we could use below command in hbase shell:
create 'table',{NAME=\>'f1',STORAGE\_POLICY=\>'ALL\_SSD'},{NAME=\>'f2',STORAGE\_POLICY=\>'ONE\_SSD'}

We could also set the configuration in table attribute like all other configurations:
create 'table',{NAME=\>'f1',CONFIGURATION=\>{'hbase.hstore.block.storage.policy'=\>'ONE\_SSD'}}


---

* [HBASE-16744](https://issues.apache.org/jira/browse/HBASE-16744) | *Major* | **Procedure V2 - Lock procedures to allow clients to acquire locks on tables/namespaces/regions**

 Lock for HBase Entity either a Table, a Namespace, or Regions.

These are remote locks which live on master, and need periodic heartbeats to keep them alive. (Once we request the lock, internally an heartbeat thread will be started). If master doesn't receive the heartbeat in time, it'll release the lock and make it available to other users.

Use {@link LockServiceClient} to build instances. Then call {@link #requestLock()}. {@link #requestLock} will contact master to queue the lock and start the heartbeat thread which will check lock's status periodically and once the lock is acquired, it will send the heartbeats to the master.

Use {@link #await} or {@link #await(long, TimeUnit)} to wait for the lock to be acquired. Always call {@link #unlock()} irrespective of whether lock was acquired or not. If the lock was acquired, it'll be released. If it was not acquired, it is possible that master grants the lock in future and the heartbeat thread keeps it alive forever by sending heartbeats. Calling {@link #unlock()} will stop the heartbeat thread and cancel the lock queued on master.

There are 4 ways in which these remote locks may be released/can be lost:
  \* Call {@link #unlock}.
  \* Lock times out on master: Can happen because of network issues, GC pauses, etc. Worker thread will call the given abortable as soon as it detects such a situation. Fail to contact master: If worker thread can not contact mater and thus fails to send heartbeat before the timeout expires, it assumes that lock is lost and calls the
 \*     abortable.
Worker thread is interrupted.

Use example:

 EntityLock lock = lockServiceClient.\*Lock(...., "exampled lock", abortable);
  lock.requestLock();
  ....
   ....can do other initializations here since lock is 'asynchronous'...
 ....
 if (lock.await(timeout)) {
    ....logic requiring mutual exclusion
  }
   lock.unlock();


---

* [HBASE-17470](https://issues.apache.org/jira/browse/HBASE-17470) | *Major* | **Remove merge region code from region server**

In 1.x branches, Admin.mergeRegions calls MASTER via dispatchMergingRegions RPC; when executing dispatchMergingRegions RPC, MASTER calls RS via MergeRegions to complete the merge in RS-side.  

With HBASE-16119, the merge logic moves to master-side.  This JIRA cleans up unused RPCs (dispatchMergingRegions and MergeRegions) , removes dangerous tools such as Merge and HMerge, and deletes unused RegionServer-side merge region logic in 2.0 release.


---

* [HBASE-16786](https://issues.apache.org/jira/browse/HBASE-16786) | *Major* | **Procedure V2 - Move ZK-lock's uses to Procedure framework locks (LockProcedure)**

Move locking to be procedure (Pv2) rather than zookeeper based. All locking moved over to new infrastructure including MOBing locking.


---

* [HBASE-16867](https://issues.apache.org/jira/browse/HBASE-16867) | *Major* | **Procedure V2 - Check ACLs for remote HBaseLock**

Add checking ACL when taking locks.


---

* [HBASE-16831](https://issues.apache.org/jira/browse/HBASE-16831) | *Minor* | **Procedure V2 - Remove org.apache.hadoop.hbase.zookeeper.lock**

Purges code that did zk-hosted locks for table ops (we do procedure-based locks now)


---

* [HBASE-17488](https://issues.apache.org/jira/browse/HBASE-17488) | *Trivial* | **WALEdit should be lazily instantiated**

prevent creating unused objects in the WALEdit's construction.
+If the cp#preBatchMutate returns true, the WALEdit is useless. So we should create the WALEdit after step 2.
+The cells came from cp should be counted because they are added into the WALEdit . The use case is the local index of phoenix
+If the mutation contains the SKIP\_WAL property, its cells aren't added into the WALEdit. So these cells shouldn't be counted.


---

* [HBASE-16698](https://issues.apache.org/jira/browse/HBASE-16698) | *Major* | **Performance issue: handlers stuck waiting for CountDownLatch inside WALKey#getWriteEntry under high writing workload**

Assign sequenceid to an edit before we go on the ringbuffer; undoes contention on WALKey latch. Adds a new config "hbase.hregion.mvcc.preassign" which defaults to true: i.e. this speedup is enabled.

User could set this per-table level, like:
create 'table',{NAME=\>'f1',CONFIGURATION=\>{'hbase.hregion.mvcc.preassign'=\>'false'}}


---

* [HBASE-17067](https://issues.apache.org/jira/browse/HBASE-17067) | *Major* | **Procedure v2 - remove tryAcquire\*Lock and use wait/wake to make framework event based**

Make the framework more 'lively'; undo 'suspend' notion in Procedure, rely on eventing mechanism instead. Lets us remove no longer needed synchronizations. Framework can now do more ops per second.


---

* [HBASE-17491](https://issues.apache.org/jira/browse/HBASE-17491) | *Major* | **Remove all setters from HTable interface and introduce a TableBuilder to build Table instance**

After HBASE-17491 all setter methods in HTable are marked as deprecated, moved into TableBuilder, and will be removed later.


---

* [HBASE-9774](https://issues.apache.org/jira/browse/HBASE-9774) | *Major* | **HBase native metrics and metric collection for coprocessors**

This issue adds two new modules, hbase-metrics and hbase-metrics-api which define and implement the "new" metric system used internally within HBase. These two modules (and some other code in hbase-hadoop2-compat) module are referred as "HBase metrics framework" which is HBase-specific and independent of any other metrics library (including Hadoop metrics2 and dropwizards metrics). 

HBase Metrics API (hbase-metrics-api) contains the interface that HBase exposes internally and to third party code (including coprocessors). It is a thin
abstraction over the actual implementation for backwards compatibility guarantees. The metrics API in this hbase-metrics-api module is inspired by the Dropwizard metrics 3.1 API, however, the API is completely independent. 

hbase-metrics module contains implementation of the "HBase Metrics API", including MetricRegistry, Counter, Histogram, etc. These are highly concurrent implementations of the Metric interfaces. Metrics in HBase are grouped into different sets (like WAL, RPC, RegionServer, etc). Each group of metrics should be tracked via a MetricRegistry specific to that group. 

Historically, HBase has been using Hadoop's Metrics2 framework [3] for collecting and reporting the metrics internally. However, due to the difficultly of dealing with the Metrics2 framework, HBase is moving away from Hadoop's metrics implementation to its custom implementation. The move will happen incrementally, and during the time, both Hadoop Metrics2-based metrics and hbase-metrics module based classes will be in the source code. All new implementations for metrics SHOULD use the new API and framework.

This jira also introduces the metrics API to coprocessor implementations. Coprocessor writes can export custom metrics using the API and have those collected via metrics2 sinks, as well as exported via JMX in regionserver metrics. 

More documentation available at: hbase-metrics-api/README.txt


---

* [HBASE-17566](https://issues.apache.org/jira/browse/HBASE-17566) | *Major* | **Jetty upgrade fixes**

Fix inability at finding static content post push of parent issue moving us to jetty9.


---

* [HBASE-12894](https://issues.apache.org/jira/browse/HBASE-12894) | *Critical* | **Upgrade Jetty to 9.2.6**

Upgrades Jetty to 9.x from 6.x (Jetty9 is in different namespace from Jetty6). Also updated Jersey to 2.x and Servlet to 3.x.


---

* [HBASE-16812](https://issues.apache.org/jira/browse/HBASE-16812) | *Minor* | **Clean up the locks in MOB**

In MOB-enabled column family, the lock in the major compaction is removed. All the delete markers are retained in the major compaction, and a MOB reference tag is appended to each of the retained delete markers.


---

* [HBASE-17197](https://issues.apache.org/jira/browse/HBASE-17197) | *Major* | **hfile does not work in 2.0**

The -f argument is no longer required specifying target file; just pass the file as an argument.


---

* [HBASE-16981](https://issues.apache.org/jira/browse/HBASE-16981) | *Major* | **Expand Mob Compaction Partition policy from daily to weekly, monthly**

Mob compaction partition policy can be set by
hbase\> create 't1', {NAME =\> 'f1', IS\_MOB =\> true, MOB\_THRESHOLD =\> 1000000, MOB\_COMPACT\_PARTITION\_POLICY =\> 'weekly'}
 
or 

hbase\> alter 't1', {NAME =\> 'f1', IS\_MOB =\> true, MOB\_THRESHOLD =\> 1000000, MOB\_COMPACT\_PARTITION\_POLICY =\> 'monthly'}

Available MOB\_COMPACT\_PARTITION\_POLICY options are "daily", "weekly" and "monthly", the default is "daily".

When it is "weekly" policy, the mob compaction will try to compact files within one calendar week into one for a specific partition, similar for "daily" and "monthly".

With "weekly" policy, one mob file normally is compacted twice during its lifetime (that is first on daily basis and then all such daily based compacted files belonging to a week at the weekly interval), for one region, there normally are 52 files for one year. With "Monthly" policy, one mob file normally is compacted 3 times during its lifetime (First daily and then weekly followed by monthly at end of every month) and normally there are 12 files for one year.


---

* [HBASE-17508](https://issues.apache.org/jira/browse/HBASE-17508) | *Major* | **Unify the implementation of small scan and regular scan for sync client**

Now the scan.setSmall method is deprecated. Consider using scan.setLimit and scan.setReadType in the future. And we will open scanner lazily when you call scanner.next. This is an incompatible change which delays the table existence check and permission check.


---

* [HBASE-17578](https://issues.apache.org/jira/browse/HBASE-17578) | *Major* | **Thrift per-method metrics should still update in the case of exceptions**

In prior versions, the HBase Thrift handlers failed to increment per-method metrics when an exception was encountered.  These metrics will now always be incremented, whether an exception is encountered or not.  This change also adds exception-type metrics, similar to those exposed in regionservers, for individual exceptions which are received by the Thrift handlers.


---

* [HBASE-17350](https://issues.apache.org/jira/browse/HBASE-17350) | *Critical* | **Fixup of regionserver group-based assignment**

A few bug fixes and tweaks to the fsgroup feature.

Renamed shell command move\_rsgroup\_servers as move\_servers\_rsgroup
Renamed shell comand move\_rsgroup\_tables as move\_tables\_rsgroup

Made the 'default' group more 'dynamic'; i.e. dead servers no longer show in the 'default' group.


---

* [HBASE-17574](https://issues.apache.org/jira/browse/HBASE-17574) | *Major* | **Clean up how to run tests under hbase-spark module**

Run test under root dir or hbase-spark dir
1. mvn test //run all small and medium java tests, and all scala tests
2. mvn test -P skipSparkTests //skip all scala and java tests in hbase-spark
3. mvn test -P runAllTests //run all tests, including scala and all java test even the large test

Run specified test case, since we have two plugins, we need specify both java and scala.
When only test scala or jave test case, disable the other one use -Dxx=None as follow:
1. mvn test -Dtest=TestJavaHBaseContext -DwildcardSuites=None // java unit test
2. mvn test -Dtest=None -DwildcardSuites=org.apache.hadoop.hbase.spark.BulkLoadSuite //scala unit test, only support full name in scalatest plugin


---

* [HBASE-17437](https://issues.apache.org/jira/browse/HBASE-17437) | *Major* | **Support specifying a WAL directory outside of the root directory**

This patch adds support for specifying a WAL directory outside of the HBase root directory.

Multiple configuration variables were added to accomplish this:
hbase.wal.dir: used to configure where the root WAL directory is located. Could be on a different FileSystem than the root directory. WAL directory can not be set to a subdirectory of the root directory. The default value of this is the root directory if unset.

hbase.rootdir.perms: Configures FileSystem permissions to set on the root directory. This is '700' by default.

hbase.wal.dir.perms: Configures FileSystem permissions to set on the WAL directory FileSystem. This is '700' by default.


---

* [HBASE-17599](https://issues.apache.org/jira/browse/HBASE-17599) | *Major* | **Use mayHaveMoreCellsInRow instead of isPartial**

The word 'isPartial' is ambiguous so we introduce a new method 'mayHaveMoreCellsInRow' to replace it. And the old meaning of 'isPartial' is not the same with 'mayHaveMoreCellsInRow' as for batched scan, if the number of returned cells equals to the batch, isPartial will be false. After this change the meaning of 'isPartial' will be same with 'mayHaveMoreCellsInRow'. This is an incompatible change but it is not likely to break a lot of things as for batched scan the old 'isPartial' is just a redundant information, i.e, if the number of returned cells reaches the batch limit. You have already know the number of returned cells and the value of batch.


---

* [HBASE-17280](https://issues.apache.org/jira/browse/HBASE-17280) | *Minor* | **Add mechanism to control hbase cleaner behavior**

The HBase cleaner chore process cleans up old WAL files and archived HFiles. Cleaner operation can affect query performance when running heavy workloads, so disable the cleaner during peak hours. The cleaner has the following HBase shell commands:

- cleaner\_chore\_enabled: Queries whether cleaner chore is enabled/ disabled. 
- cleaner\_chore\_run: Manually runs the cleaner to remove files.
- cleaner\_chore\_switch: enables or disables the cleaner and returns the previous state of the cleaner. For example, cleaner-switch true enables the cleaner.

Following APIs are added in Admin:
- setCleanerChoreRunning(boolean on): Enable/Disable the cleaner chore
- runCleanerChore(): Ask for cleaner chore to run
- isCleanerChoreEnabled(): Query whether cleaner chore is enabled/ disabled.


---

* [HBASE-9702](https://issues.apache.org/jira/browse/HBASE-9702) | *Major* | **Change unittests that use "table" or "testtable" to use method names.**

Changes all tests to use the TestName JUnit Rule everywhere rather than hardcode table/region/store names.


---

* [HBASE-17583](https://issues.apache.org/jira/browse/HBASE-17583) | *Major* | **Add inclusive/exclusive support for startRow and endRow of scan for sync client**

Now you can include/exlude the startRow and stopRow for a scan. And the new methods to specify startRow and stopRow are withStartRow and withStopRow. The old methods to specify startRow and Row(include constructors) are marked as deprecated as in the old time if startRow and stopRow are equal then we will consider it as a get scan and include the stopRow implicitly. This is strange after we can set inclusiveness explicitly so we add new methods and depredate the old methods. The deprecated methods will be removed in the future.


---

* [HBASE-17472](https://issues.apache.org/jira/browse/HBASE-17472) | *Major* | **Correct the semantic of  permission grant**

Before this patch, later granted permissions will override previous granted permissions, and previous granted permissions LOST. this issue re-define grant semantic: for master branch, later granted permissions will merge with previous granted permissions.  for branch-1.4, grant keep override behavior for compatibility purpose, and a grant with mergeExistingPermission flag provided.


---

* [HBASE-13718](https://issues.apache.org/jira/browse/HBASE-13718) | *Minor* | **Add a pretty printed table description to the table detail page of HBase's master**

<!-- markdown -->

The table information page in the Master UI now includes a schema section that describes the column families defined for that table as well as any column family specific properties that are set.


---

* [HBASE-17647](https://issues.apache.org/jira/browse/HBASE-17647) | *Major* | **OffheapKeyValue#heapSize() implementation is wrong**

**WARNING: No release note provided for this change.**


---

* [HBASE-17312](https://issues.apache.org/jira/browse/HBASE-17312) | *Major* | **[JDK8] Use default method for Observer Coprocessors**

Deletes BaseMasterAndRegionObserver, BaseMasterObserver, BaseRegionObserver, BaseRegionServerObserver and BaseWALObserver.
Their corresponding interface classes now use JDK8's 'default' keyword to provide empty/no-op implementations so that:
1. Derived class don't break when more coprocessor hooks are added in future.
2. Derived classes don't have to redundantly override functions they don't care about with empty implementations.

Earlier, BaseXXXObserver classes provided these exact two benefits, but with 'default' keyword in JDK8, they are not needed anymore.

To fix the breakages because of this change, simply change "Foo extends BaseXXXObserver" to "Foo implements XXXObserver".


---

* [HBASE-15484](https://issues.apache.org/jira/browse/HBASE-15484) | *Blocker* | **Correct the semantic of batch and partial**

Now setBatch doesn't mean setAllowPartialResult(true)
If user setBatch(5) and rpc returns 3+5+5+5+3 cells, we should return 5+5+5+5+1 to user.
Scan#setBatch is helpful in paging queries, if you just want to prevent OOM at client, use setAllowPartialResults(true) is better.
We deprecated isPartial and use mayHaveMoreCellsInRow. If it returns false, current Result must be the last one of this row.


---

* [HBASE-17716](https://issues.apache.org/jira/browse/HBASE-17716) | *Minor* | **Formalize Scan Metric names**

HBASE-17716 breaks compatibility of ServerSideScanMetrics by changing public field names, and the issue is fixed through HBASE-17886


---

* [HBASE-17717](https://issues.apache.org/jira/browse/HBASE-17717) | *Critical* | **Incorrect ZK ACL set for HBase superuser**

In previous versions of HBase, the system intended to set a ZooKeeper ACL on all "sensitive" ZNodes for the user specified in the hbase.superuser configuration property. Unfortunately, the ACL was malformed which resulted in the hbase.superuser being unable to access the sensitive ZNodes that HBase creates. This JIRA issue fixes this bug. HBase will automatically correct the ACLs on start so users do not need to manually correct the ACLs.


---

* [HBASE-17718](https://issues.apache.org/jira/browse/HBASE-17718) | *Major* | **Difference between RS's servername and its ephemeral node cause SSH stop working**

Fix our accidentally registering a RegionServer's ephermal znode BEFORE we checked in with the master.


---

* [HBASE-17737](https://issues.apache.org/jira/browse/HBASE-17737) | *Major* | **Thrift2 proxy should support scan timeRange per column family**

Thrift2 proxy supports scan timeRange per column family


---

* [HBASE-15941](https://issues.apache.org/jira/browse/HBASE-15941) | *Major* | **HBCK repair should not unsplit healthy splitted region**

A new option -removeParents is now available that will remove an old parent when two valid daughters for that parent exist and -fixHdfsOverlaps is used. If there is an issue trying to remove the parent from META or sidelining the parent from HDFS we will fallback to do a regular merge. For now this option only works when the overlap group consists only of 3 regions (a parent, daughter A and daughter B)


---

* [HBASE-17712](https://issues.apache.org/jira/browse/HBASE-17712) | *Major* | **Remove/Simplify the logic of RegionScannerImpl.handleFileNotFound**

Add a config named 'hbase.hregion.unassign.for.fnfe'. It is used to control whether to reopen a region when hitting FileNotFoundException. The default value is true.


---

* [HBASE-17746](https://issues.apache.org/jira/browse/HBASE-17746) | *Major* | **TestSimpleRpcScheduler.testCoDelScheduling is broken**

The executor for CoDel is changed to FastPathBalancedQueueRpcExecutor


---

* [HBASE-17426](https://issues.apache.org/jira/browse/HBASE-17426) | *Major* | **Inconsistent environment variable names for enabling JMX**

In bin/hbase-config.sh,
if value for HBASE\_JMX\_BASE is empty, keep current behavior.
if HBASE\_JMX\_OPTS is not empty, keep current behavior.
otherwise use the value of HBASE\_JMX\_BASE


---

* [HBASE-14123](https://issues.apache.org/jira/browse/HBASE-14123) | *Blocker* | **HBase Backup/Restore Phase 2**

Vladimir Rodionov, Feb 2017

\*\*\* Summary of work HBASE-14123

The new feature introduces new command-line extensions to the hbase command and, from the client side, is accessible through command-line only
Operations: 
\* Create full backup on a list of tables or backup set
\* Create incremental backup image for table list or backup set
\* Restore list of tables from a given backup image
\* Show current backup progress
\* Delete backup image and all related images
\* Show history of backups
\* Backup set operations: create backup set, add/remove table to/from backup set, etc

In the current implementation, the feature is already usable, meaning that users can backup tables and restore them using provided command-line tools. Both: full and incremental backups are supported.
This work is based on original work of IBM team (HBASE-7912). The full list of JIRAs included in this mega patch can be found in three umbrella JIRAs: HBASE-14030 (Phase 1), HBASE-14123 (Phase 2) and HBASE-14414 (Phase 3 - all resolved ones made it into the patch)

\*\*\* What are the remaining work items

All remaining items can be found in Phase 3 umbrella JIRA: HBASE-14414.
They are split into 3 groups: BLOCKER, CRITICAL, MAJOR
Only BLOCKERs and CRITICALs are guaranteed for HBase 2.0 release.  

\*\*\*\*\* BLOCKER

\* HBASE-14417 Incremental backup and bulk loading ( Patch available)
\* HBASE-14135 HBase Backup/Restore Phase 3: Merge backup images
\* HBASE-14141 HBase Backup/Restore Phase 3: Filter WALs on backup to include only edits from backup tables (Patch available)
\* HBASE-17133 Backup documentation
\* HBASE-15227 Fault tolerance support

\*\*\*\*\* CRITICAL

\* HBASE-16465 Disable split/merges during backup

We have umbrella JIRA (HBASE-14414) to track all the remaining work 
All the BLOCKER and CRITICAL JIRAs currently in open state will be implemented by 2.0 release time. Some MAJOR too, but it depends on resource availability
The former development branch (HBASE-7912) is obsolete and will be closed/deleted after the merge. 
We want backup to be a GA feature in 2.0
We are going to support full backward compatibility for backup tool in 2.0 and onwards.

\*\*\*\* Configuration

Backup is disabled, by default. To enable it, the following configuration properties must be added to hbase-site.xml:

hbase.backup.enable=true
hbase.master.logcleaner.plugins=YOUR\_PLUGINS,org.apache.hadoop.hbase.backup.master.BackupLogCleaner
hbase.procedure.master.classes=YOUR\_CLASSES,org.apache.hadoop.hbase.backup.master.LogRollMasterProcedureManager
hbase.procedure.regionserver.classes=YOUR\_CLASSES,org.apache.hadoop.hbase.backup.regionserver.LogRollRegionServerProcedureManager


\*\*\*\* Known Issues

\* Bulk loaded data is not visible for incremental backup (will be resolved by 2.0 release)
\* After first backup sessions, WAL files will be accumulated in old WAL directory until the next backup sessions. Make sure, that you either run backups regularly or disable backups in the system. 
\* No fault tolerance yet, some backup failures may result in corrupted backup data and will require manual intervention (will be resolved by 2.0 release)


---

* [HBASE-17802](https://issues.apache.org/jira/browse/HBASE-17802) | *Major* | **Add note that minor versions can add methods to Interfaces**

Update our semver section to include a note on our allowing ourselves the right to add methods to an Interface over a minor version as agreed to up on the dev list:  "If a Client implements an HBase Interface, a recompile MAY be required upgrading to a newer minor version (See release notes for warning about incompatible changes). All effort will be made to provide a default implementation so this case should not arise."


---

* [HBASE-17584](https://issues.apache.org/jira/browse/HBASE-17584) | *Major* | **Expose ScanMetrics with ResultScanner rather than Scan**

Now you can use ResultScanner.getScanMetrics to get the scan metrics at any time during the scan operation. The old Scan.getScanMetrics is deprecated and still work, but if you use ResultScanner.getScanMetrics to get the scan metrics and reset it, then the metrics published to the Scan instaince will be messed up.


---

* [HBASE-16014](https://issues.apache.org/jira/browse/HBASE-16014) | *Major* | **Get and Put constructor argument lists are divergent**

Add 2 constructors fot API Get
1. Get(byte[], int, int) 
2. Get(ByteBuffer)


---

* [HBASE-17595](https://issues.apache.org/jira/browse/HBASE-17595) | *Critical* | **Add partial result support for small/limited scan**

Now small scan and limited scan could also return partial results.


---

* [HBASE-13395](https://issues.apache.org/jira/browse/HBASE-13395) | *Major* | **Remove HTableInterface**

HTableInterface was deprecated in 0.21.0 and is removed in 2.0.0. Use org.apache.hadoop.hbase.client.Table instead.


---

* [HBASE-17765](https://issues.apache.org/jira/browse/HBASE-17765) | *Major* | **Reviving the merge possibility in the CompactingMemStore**

Reviving the merge of the compacting pipeline: making the limit on the number of the segments in the pipeline configurable and adding the merge test.

In order to customize the pipeline size limit change the value of the "hbase.hregion.compacting.pipeline.segments.limit" in the hbase-site.xml

Value 1 means to merge the segments on any flush-in-memory. Value higher than 16 means no merge.


---

* [HBASE-17287](https://issues.apache.org/jira/browse/HBASE-17287) | *Blocker* | **Master becomes a zombie if filesystem object closes**

If filesystem is not available during log split, abort master server.


---

* [HBASE-16780](https://issues.apache.org/jira/browse/HBASE-16780) | *Critical* | **Since move to protobuf3.1, Cells are limited to 64MB where previous they had no limit**

Upgrade internal pb to 3.2 from 3.1. 3.2 has fix for 64MB limit.


---

* [HBASE-17215](https://issues.apache.org/jira/browse/HBASE-17215) | *Major* | **Separate small/large file delete threads in HFileCleaner to accelerate archived hfile cleanup speed**

After HBASE-17215 we change to use two threads for (archived) hfile cleaning. The size throttling for large/small files could be set through "hbase.regionserver.thread.hfilecleaner.throttle" and default to 67108864 (64M). It supports online configuration change, just find the active master address through zookeeper dump and use it in update\_config command, e.g. update\_config 'hbasem1.et2.tbsite.net,60100,1488038696741'


---

* [HBASE-17857](https://issues.apache.org/jira/browse/HBASE-17857) | *Major* | **Remove IS annotations from IA.Public classes**

Now we do not have InterfaceStability annotations for IA,Public API. The stability of these classes will follow the rule of 'Semantic Versioning'.


---

* [HBASE-17858](https://issues.apache.org/jira/browse/HBASE-17858) | *Major* | **Update refguide about the IS annotation if necessary**

Updated refguide to tell users that IS annotation is only valid for IA.LimitedPrivate classes.


---

* [HBASE-16477](https://issues.apache.org/jira/browse/HBASE-16477) | *Major* | **Remove Writable interface and related code from WALEdit/WALKey**

Removes the Writables, and related code from WALEdit class. HBase-2.0 will not be able to read WAL files written with 0.94.x and before.


---

* [HBASE-15535](https://issues.apache.org/jira/browse/HBASE-15535) | *Blocker* | **Correct link to Trafodion**

HBASE-15535 Correct link to Trafodion


---

* [HBASE-17914](https://issues.apache.org/jira/browse/HBASE-17914) | *Major* | **Create a new reader instead of cloning a new StoreFile when compaction**

StoreFile.createReader method is gone. Call initReader and then getReader instead.


---

* [HBASE-17933](https://issues.apache.org/jira/browse/HBASE-17933) | *Major* | **[hbase-spark]  Support Java api for bulkload**

<!-- markdown -->
The integration module for Apache Spark now includes Java-friendly equivalents for the `bulkLoad` and `bulkLoadThinRows` methods in `JavaHBaseContext`.


---

* [HBASE-17514](https://issues.apache.org/jira/browse/HBASE-17514) | *Minor* | **Warn when Thrift Server 1 is configured for proxy users but not the HTTP transport**

If users of the Thrift 1 Server enable proxy user support without enabling the prerequisite HTTP transport, we now log a WARN message about the mismatch.


---

* [HBASE-15143](https://issues.apache.org/jira/browse/HBASE-15143) | *Minor* | **Procedure v2 - Web UI displaying queues**

Adds a new Admin#listLocks, a panel on the procedures page to list procedure locks, and a list\_locks command to the shell. Use it to see current state of procedure locking in Master process.


---

* [HBASE-17956](https://issues.apache.org/jira/browse/HBASE-17956) | *Major* | **Raw scan should ignore TTL**

Now raw scan can also read expired cells.


---

* [HBASE-15583](https://issues.apache.org/jira/browse/HBASE-15583) | *Minor* | **Any HTableDescriptor we give out should be immutable**

# The HTD got from Admin, AsyncAdmin, and Table is immutable.
# DEFERRED\_LOG\_FLUSH is removed.
# cleanup the deprecated construction of HTD


---

* [HBASE-17448](https://issues.apache.org/jira/browse/HBASE-17448) | *Major* | **Export metrics from RecoverableZooKeeper**

Committed to master and branch-1


---

* [HBASE-9899](https://issues.apache.org/jira/browse/HBASE-9899) | *Major* | **for idempotent operation dups, return the result instead of throwing conflict exception**

Non-idempotent operations (increment/append/checkAndPut/...) may throw OperationConflictException even though the increment/append succeeded. For example (client rpc retries number set to 3):

1. first increment rpc request success
2. client timeout and send second rpc request, but nonce is same and save in server. The server found that it has already succeed, so return a OperationConflictException to make sure that increment operation only be applied once in server.

This patch will solve this problem by read the previous result when receive a duplicate rpc request.
1. Store the mvcc to OperationContext. When first rpc request succeed, store the mvcc for this operation nonce.
2. When there are duplicate rpc request, convert to read result by the mvcc.


---

* [HBASE-17877](https://issues.apache.org/jira/browse/HBASE-17877) | *Major* | **Improve HBase's byte[] comparator**

updated the lexicographic byte array comparator to use a slightly more optimized version similar to the one available in the guava library that compares only the first index where left[index] != right[index]. The comparator also returns the diff directly instead of mapping it to -1, 0, +1 range as was being done in the earlier version. We have seen significant performance gains, calculated in terms of throughput (ops/ms) with these changes ranging from approx 20% for smaller byte arrays upto 200 bytes and almost 100% for large byte array sizes that are in few KB's. We benchmarked with upto 16KB arrays and the general trend indicates that the performance improvement increases as the size of the byte array increases.


---

* [HBASE-17972](https://issues.apache.org/jira/browse/HBASE-17972) | *Minor* | **Remove mergePool from CompactSplitThread**

After this jira, mergePool will be permanently removed from CompactSplitThread.


---

* [HBASE-17817](https://issues.apache.org/jira/browse/HBASE-17817) | *Major* | **Make Regionservers log which tables it removed coprocessors from when aborting**

Add table name to exception logging when a coprocessor is removed from a table by the region server


---

* [HBASE-14286](https://issues.apache.org/jira/browse/HBASE-14286) | *Trivial* | **Correct typo in argument name for WALSplitter.writeRegionSequenceIdFile**

HBASE-14286 Correct typo in argument name for WALSplitter.writeRegionSequenceIdFile


---

* [HBASE-17757](https://issues.apache.org/jira/browse/HBASE-17757) | *Major* | **Unify blocksize after encoding to decrease memory fragment**

Blocksize is set in columnfamily's atrributes. It is used to control block sizes when generating blocks. But, it doesn't take encoding into count. If you set encoding to blocks, after encoding, the block size varies. Since blocks will be cached in memory after encoding (default), it will cause memory fragment if using blockcache, or decrease the pool efficiency if using bucketCache. This issue introduced a new config named 'hbase.writer.unified.encoded.blocksize.ratio'. The default value of this config is 1, meaning doing nothing. If this value is set to a smaller value like 0.5, and the blocksize is set to 64KB(default value of blocksize). It will unify the blocksize after encoding to 64KB \* 0.5 = 32KB. Unified blocksize will releaf the memory problems mentioned above.


---

* [HBASE-17957](https://issues.apache.org/jira/browse/HBASE-17957) | *Minor* | ** Custom metrics of replicate endpoints don't prepend "source." to global metrics**

Global custom metrics names follow the "source.metricsName" format.


---

* [HBASE-17263](https://issues.apache.org/jira/browse/HBASE-17263) | *Major* | **  Netty based rpc server impl**

A new RPC server based on Netty4 which can improve random read (get) performance. By default, it is off. To use this feature, please set “hbase.rpc.server.impl" to “org.apache.hadoop.hbase.ipc.NettyRpcServer”.

In one deploy, doubled the throughput and lowered the latency significantly: see https://www.slideshare.net/HBaseCon/lift-the-ceiling-of-hbase-throughputs?qid=597ee2fa-8125-4faa-bb3b-2bf1ba9ccafb&v=&b=&from\_search=6


---

* [HBASE-16466](https://issues.apache.org/jira/browse/HBASE-16466) | *Major* | **HBase snapshots support in VerifyReplication tool to reduce load on live HBase cluster with large tables**

Support for snapshots in VerifyReplication tool i.e. verifyrep can compare source table snapshot against peer table snapshot which reduces load on RS by reading data from HDFS directly using Snapshot scanners. 
Instead of comparing against live tables whose state changes due to writes and compactions its better to compare HBase  snapshots which are immutable in nature.


---

* [HBASE-17471](https://issues.apache.org/jira/browse/HBASE-17471) | *Critical* | **Region Seqid will be out of order in WAL if using mvccPreAssign**

MVCCPreAssign is added by HBASE-16698, but pre-assign mvcc is only used in put/delete path. Other write paths like increment/append still assign mvcc in ringbuffer's consumer thread. If put and increment are used parallel. Then seqid in WAL may not increase monotonically. Disorder in wals will lead to data loss.This patch bring all mvcc/seqid event in wal.append, and synchronize wal append and mvcc acquirement. No disorder in wal will happen. Performance test shows no regression with this patch.


---

* [HBASE-14925](https://issues.apache.org/jira/browse/HBASE-14925) | *Major* | **Develop HBase shell command/tool to list table's region info through command line**

Added a shell command 'list\_regions' for displaying the table's region info through command line.

        List all regions for a particular table as an array and also filter them by server name (optional) as prefix
        and maximum locality (optional). By default, it will return all the regions for the table with any locality.
        The command displays server name, region name, start key, end key, size of the region in MB, number of requests
        and the locality. The information can be projected out via an array as third parameter. By default all these information
        is displayed. Possible array values are SERVER\_NAME, REGION\_NAME, START\_KEY, END\_KEY, SIZE, REQ and LOCALITY. Values
        are not case sensitive. If you don't want to filter by server name, pass an empty hash / string as shown below.

        Examples:
        hbase\> list\_regions 'table\_name'
        hbase\> list\_regions 'table\_name', 'server\_name'
        hbase\> list\_regions 'table\_name', {SERVER\_NAME =\> 'server\_name', LOCALITY\_THRESHOLD =\> 0.8}
        hbase\> list\_regions 'table\_name', {SERVER\_NAME =\> 'server\_name', LOCALITY\_THRESHOLD =\> 0.8}, ['SERVER\_NAME']
        hbase\> list\_regions 'table\_name', {}, ['SERVER\_NAME', 'start\_key']
        hbase\> list\_regions 'table\_name', '', ['SERVER\_NAME', 'start\_key']


---

* [HBASE-18009](https://issues.apache.org/jira/browse/HBASE-18009) | *Major* | **Move RpcServer.Call to a separated file**

The return value of CallRunner.getCall is changed so this is an incompatible change as CallRunner is declared as IA.LimitedPrivate. CallRunner is declared as IS.Evolving so we do not break the rule. And we still keep the getCall method to reduce the impact to user code.


---

* [HBASE-15199](https://issues.apache.org/jira/browse/HBASE-15199) | *Critical* | **Move jruby jar so only on hbase-shell module classpath; currently globally available**

The JRuby jar is no longer automatically included in classpaths for HBase server processes nor clients. It is still included in the classpath for the HBase shell and for invocations of org.jruby.Main, which should cover HBase provided support scripts.


---

* [HBASE-15296](https://issues.apache.org/jira/browse/HBASE-15296) | *Major* | **Break out writer and reader from StoreFile**

\<!-- mardown --\>
Refactor that breaks out StoreFile Reader and Writer inner classes as StoreFileReader and StoreFileWriter.

NOTE! Changes RegionObserver Coprocessor Interface so incompatible change (Discussed on dev list in thread "[Note breaking change on RegionObserver in hbase-2.0.0](https://s.apache.org/hbase-dev-note-about-HBASE-15296)"


---

* [HBASE-17887](https://issues.apache.org/jira/browse/HBASE-17887) | *Blocker* | **Row-level consistency is broken for read**

Now we pass on list of memstoreScanners to the StoreScanner along with the new files to ensure that the StoreScanner sees the latest memstore after flush.


---

* [HBASE-17786](https://issues.apache.org/jira/browse/HBASE-17786) | *Major* | **Create LoadBalancer perf-tests (test balancer algorithm decoupled from workload)**

$ bin/hbase org.apache.hadoop.hbase.master.balancer.LoadBalancerPerformanceEvaluation -help
usage: hbase org.apache.hadoop.hbase.master.balancer.LoadBalancerPerformanceEvaluation \<options\>
Options:
 -regions \<arg\>         Number of regions to consider by load balancer. Default: 1000000
 -servers \<arg\>         Number of servers to consider by load balancer. Default: 1000
 -load\_balancer \<arg\>   Type of Load Balancer to use. Default:
                        org.apache.hadoop.hbase.master.balancer.StochasticLoadBalancer


---

* [HBASE-17343](https://issues.apache.org/jira/browse/HBASE-17343) | *Blocker* | **Make Compacting Memstore default in 2.0 with BASIC as the default type**

 This JIRA changes the default MemStore to be CompactingMemStore instead of DefaultMemStore. In-memory compaction of CompactingMemStore demonstrated sizable improvement in HBase’s write amplification and read/write performance.

CompactingMemStore achieves these gains through smart use of RAM. The algorithm periodically re-organizes the in-memory data in efficient data structures and reduces redundancies. The  HBase server’s memory footprint therefore periodically expands and contracts. The outcome is longer lifetime of data in memory, less I/O, and overall faster performance. More details about the algorithm and its use appear in the Apache HBase Blog: https://blogs.apache.org/hbase/

How To Use:
The in-memory compaction level can be configured both globally and per column family. The supported levels are none (DefaultMemStore), basic, and eager. 

By default, all tables apply basic in-memory compaction. This global configuration can be overridden in hbase-site.xml, as follows: 

\<property\>
 \<name\>hbase.hregion.compacting.memstore.type\</name\>
 \<value\>\<none\|basic\|eager\>\</value\>
 \</property\>

The level can also be configured in the HBase shell per column family, as follows:  

create ‘\<tablename\>’, 
{NAME =\> ‘\<cfname\>’, IN\_MEMORY\_COMPACTION =\> ‘\<NONE\|BASIC\|EAGER\>’}


---

* [HBASE-16851](https://issues.apache.org/jira/browse/HBASE-16851) | *Major* | **User-facing documentation for the In-Memory Compaction feature**

Two blog posts on Apache HBase blog: user manual and programmer manual. 
Ref. guide draft published: https://docs.google.com/document/d/1Xi1jh\_30NKnjE3wSR-XF5JQixtyT6H\_CdFTaVi78LKw/edit


---

* [HBASE-18018](https://issues.apache.org/jira/browse/HBASE-18018) | *Major* | **Support abort for all procedures by default**

The default behavior for abort() method of StateMachineProcedure class is changed to support aborting all procedures irrespective of if procedure supports rollback or not.


---

* [HBASE-11013](https://issues.apache.org/jira/browse/HBASE-11013) | *Major* | **Clone Snapshots on Secure Cluster Should provide option to apply Retained User Permissions**

While creating a snapshot, it will save permissions of the original table into .snapshotinfo file(Backward compatibility) , which is in the snapshot root directory.  For clone\_snapshot/restore\_snapshot command, we provide an additional option( RESTORE\_ACL) to decide whether we will grant permissons of the origin table to the newly created table.


---

* [HBASE-18035](https://issues.apache.org/jira/browse/HBASE-18035) | *Critical* | **Meta replica does not give any primaryOperationTimeout to primary meta region**

When a client is configured to use meta replica, it sends scan request to all meta replicas almost at the same time. Since meta replica contains stale data, if result from one of replica comes back first, the client may get wrong region locations. To fix this, "hbase.client.meta.replica.scan.timeout" is introduced, a client will always send to primary meta region first, wait the configured timeout for reply. If no result is received, it will send request to replica meta regions. The unit for "hbase.client.meta.replica.scan.timeout"  is microsecond, the default value is 1000000 (1 second).


---

* [HBASE-15616](https://issues.apache.org/jira/browse/HBASE-15616) | *Major* | **Allow null qualifier for all table operations**

After this issue, all table operations will support null qualifier, such as put/get/scan/increment/append/checkAndMutate/checkAndPut/checkAndDelete.


---

* [HBASE-17997](https://issues.apache.org/jira/browse/HBASE-17997) | *Major* | **In dev environment, add jruby-complete jar to classpath only when jruby is needed**

When JRUBY\_HOME is specified, if the command is "hbase shell" or "hbase org.jruby.Main", CLASSPATH and HBASE\_OPTS will be updated according to JRUBY\_HOME specified
\* Jar under JRUBY\_HOME is added to CLASSPATH
\* The following will be added into HBASE\_OPTS

-Djruby.home=$JRUBY\_HOME -Djruby.lib=$JRUBY\_HOME/lib


That is, as long as JRUBY\_HOME is specified, JRUBY\_HOME specified will take precedence.
\* In dev env, the jar recorded in cached\_classpath\_jruby.txt will be ignored
\* In non dev env, jruby-complete jar packaged with HBase will be ignored


---

* [HBASE-18122](https://issues.apache.org/jira/browse/HBASE-18122) | *Major* | **Scanner id should include ServerName of region server**

The scanner id is not from 1 anymore.
The first 32 bits are MurmurHash32 of ServerName string "host,port,ts". The ServerName contains both host, port, and start timestamp so it can prevent collision. The lowest 32bit is generated by atomic int.


---

* [HBASE-18129](https://issues.apache.org/jira/browse/HBASE-18129) | *Major* | **truncate\_preserve fails when the truncate method doesn't exists on the master**

The command truncate\_preserve will be fine when the truncate method doesn't exist on the master


---

* [HBASE-3462](https://issues.apache.org/jira/browse/HBASE-3462) | *Major* | **Fix table.jsp in regards to splitting a region/table with an optional splitkey**

UI pages for splitting/merging now operate by taking a row key prefix from the user rather than a full region name.


---

* [HBASE-14614](https://issues.apache.org/jira/browse/HBASE-14614) | *Major* | **Procedure v2: Core Assignment Manager**

Replaces the AssignmentManager with a new procedurev2-based AssignmentManager

h1. AMv2
Puts AssignmentManager up on top of the ProcedureV2 state machine with persistence engine. Each assignment atom is now a Procedure implementation; e.g. an AssignProcedure and an UnassignProcedure. Molecules of aggregated Procedures are used to do more involved assignment steps: e.g. the move region procedure is made of an Unassign followed by an Assign subprocedure.

AMv2 is 1500 lines. Old AM was near 4000. Functionality has been moved out to Procedures. In-memory states of regions and servers has been cleaned up stored in new RegionStates implementation. RegionStateStore takes care of publishing final region state out to the hbase:meta table.

New RemoteProcedureDispatcher/RSProcedureDispatcher runs the Procedure-based assignments ‘remotely’. Knows about ‘servers’. Does aggregation of assignments by time on a time/count basis so can send procedures in batches rather than one per RPC. Procedure status comes back on the back of the RegionServer heartbeat reporting online regions. The response is passed to the AMv2 to ‘process’. It will check against the in-memory state. If there is a mismatch, it fences out the RegionServer on the assumption that something went wrong on the RS side.Timeouts trigger retries. The Procedure machine ensures only one operation at a time on any one region/table using locking and smarts about what is serial and what can be run concurrently.

New accounting of RegionServer version will be used running rolling restarts.

‘States’ -- OPENING, CLOSING, etc. -- are now in-memory in-the-master only serialized out to the ProcedureV2 WAL. They are no longer persisted to ZooKeeper.

h2. Assign Detail
The Assign starts by pushing the "assign" operation to the AssignmentManager and then will go into a “waiting" state. The AM will batch the "assign" requests and ask the Balancer where to put the region (the various policies will be respected: retain, round-robin, random). Once the AM and the balancer have found a place for the region, the procedure will be resumed and an "open region" request will be placed in the Remote Dispatcher queue, and the procedure once again will go into a "waiting state".  The Remote Dispatcher will batch the various requests for that server and they will be sent to the RS for execution. The RS will complete the open operation by calling master.reportRegionStateTransition(). The AM will intercept the transition report, and notify the procedure. The procedure will finish the assignment by publishing to new state on hbase:meta or it will retry the assignment.

h3. Unassign Detail
 The Unassign starts by placing a "close region" request in the Remote Dispatcher queue, and the procedure will then go into a "waiting state". The Remote Dispatcher will batch the various requests for that server and they will be sent to the RS for execution. The RS will complete the open operation by calling master.reportRegionStateTransition(). The AM will intercept the transition report, and notify the procedure. The procedure will finish the unassign by publishing its new state on meta or it will retry the unassign.

h1. New Configs
 \* "hbase.procedure.remote.dispatcher.threadpool.size" defaults 128
 \* "hbase.procedure.remote.dispatcher.delay.msec" default 150ms
 \* "hbase.procedure.remote.dispatcher.max.queue.size" with default 32
 \* "hbase.regionserver.rpc.startup.waittime" with default 60 seconds.
h1. TODO
As of this writing.

Put up a model diagram.

 \* Handle region migration
 \* Handle meta assignment first
 \* Handle sys table assignment first (e.g. acl, namespace)
 \* Handle table priorities
 \* Do we report same AM metrics as we used too? We do it all in here now.

INCOMPATIBLE
A known incompatible is that because splits and merges are now run from the master, Coprocessors that used to watch for merge/split from a RegionObserver now no longer work; to watch split/merges, you need to have an observer on the Master instead.


---

* [HBASE-16196](https://issues.apache.org/jira/browse/HBASE-16196) | *Critical* | **Update jruby to a newer version.**

The bundled JRuby 1.6.8 has been updated to version 9.1.9.0. The represents a change from Ruby 1.8 to Ruby 2.3.3, which introduces non-compatible language changes for user scripts.

This JRuby version update required an update to joni-2.1.11 and jcodings-1.0.18, used for regular expression matching, as well as several transitive dependency updates that should not be user-visible.


---

* [HBASE-18038](https://issues.apache.org/jira/browse/HBASE-18038) | *Critical* | **Rename StoreFile to HStoreFile and add a StoreFile interface for CP**

StoreFile is now changed to an interface. This is an incompatible change. The coprocessors which implement RegionObserver may need to modify their code.


---

* [HBASE-9393](https://issues.apache.org/jira/browse/HBASE-9393) | *Critical* | **Hbase does not closing a closed socket resulting in many CLOSE\_WAIT**

To handle this issue client need to have Hadoop client 2.6.4 or 2.7.0+ Hadoop version as CanUnBuffer interface which was added as part of HDFS-7694 is available in only those versions.


---

* [HBASE-16549](https://issues.apache.org/jira/browse/HBASE-16549) | *Major* | **Procedure v2 - Add new AM metrics**

Following AMv2 procedures are modified to override onSubmit(), onFinish() hooks provided by HBASE-17888 to do
metrics calculations when procedures are submitted and finshed:
\* AssignProcedure
\* UnassignProcedure
\* MergeTableRegionProcedure
\* SplitTableRegionProcedure
\* ServerCrashProcedure

Following metrics is collected for each of the above procedure during lifetime of a process:
\* Total number of requests submitted for a type of procedure
\* Histogram of runtime in milliseconds for successfully completed procedures
\* Total number of failed procedures

As we are moving away from Hadoop's metric2, hbase-metrics-api module is used for newly added metrics.


---

* [HBASE-15576](https://issues.apache.org/jira/browse/HBASE-15576) | *Major* | **Scanning cursor to prevent blocking long time on ResultScanner.next()**

If you don't like scanning being blocked too long because of heartbeat and partial result, you can use Scan#setNeedCursorResult(true) to get a special result within scanning timeout setting time which will tell you where row the server is scanning. See its javadoc for more details.


---

* [HBASE-17849](https://issues.apache.org/jira/browse/HBASE-17849) | *Major* | **PE tool random read is not totally random**

When randomRead and randomSeekScan is used with PE tool, now we allow using both --size and --rows. The --size specifies the total size of the data (the range) on which the reads should be performed and --rows specifies the number of rows to be read by each client with in that range.


---

* [HBASE-18149](https://issues.apache.org/jira/browse/HBASE-18149) | *Major* | **The setting rules for table-scope attributes and family-scope attributes should keep consistent**

If the table-scope attributes value is false, you need not to enclose 'false' in single quotation.Both COMPACTION\_ENABLED =\> false and COMPACTION\_ENABLED =\> 'false' will take effect


---

* [HBASE-18008](https://issues.apache.org/jira/browse/HBASE-18008) | *Major* | **Any HColumnDescriptor we give out should be immutable**

1) The HColumnDescriptor got from Admin, AsyncAdmin, and Table is immutable. 
2) HColumnDescriptor have been marked as "Deprecated" and user should substituted  
     ColumnFamilyDescriptor for HColumnDescriptor.
3) ColumnFamilyDescriptor is constructed through ColumnFamilyDescriptorBuilder and it contains all of the read-only methods from HColumnDescriptor
4) The value to which the IS\_MOB/MOB\_THRESHOLD is mapped is stored as String rather than Boolean/Long. The MOB is an new feature to 2.0 so this change should be acceptable


---

* [HBASE-18109](https://issues.apache.org/jira/browse/HBASE-18109) | *Critical* | **Assign system tables first (priority)**

Adds a sort of procedures before submission so system tables are queued first (which will help ensure they go out first). This should be good enough along w/ existing scheduling mechanisms to ensure system/meta are assigned first (See reasoning below). Open new issue if insufficient.


---

* [HBASE-18137](https://issues.apache.org/jira/browse/HBASE-18137) | *Critical* | **Replication gets stuck for empty WALs**

0-length WAL files can potentially cause the replication queue to get stuck.  A new config "replication.source.eof.autorecovery" has been added: if set to true (default is false), the 0-length WAL file will be skipped after 1) the max number of retries has been hit, and 2) there are more WAL files in the queue.  The risk of enabling this is that there is a chance the 0-length WAL file actually has some data (e.g. block went missing and will come back once a datanode is recovered).


---

* [HBASE-18187](https://issues.apache.org/jira/browse/HBASE-18187) | *Major* | **Release hbase-2.0.0-alpha1**

Pushed the release. For detail: http://apache-hbase.679495.n3.nabble.com/ANNOUNCE-Apache-HBase-2-0-0-alpha-1-is-now-available-for-download-td4088484.html


---

* [HBASE-17928](https://issues.apache.org/jira/browse/HBASE-17928) | *Major* | **Shell tool to clear compaction queues**

Adds clear\_compaction\_queues to the hbase shell.
{code}
  Clear compaction queues on a regionserver.
  The queue\_name contains short and long. 
  short is shortCompactions's queue,long is longCompactions's queue.
  
  Examples:
  hbase\> clear\_compaction\_queues 'host187.example.com,60020'
  hbase\> clear\_compaction\_queues 'host187.example.com,60020','long'
  hbase\> clear\_compaction\_queues 'host187.example.com,60020', ['long','short']
{code}


---

* [HBASE-17110](https://issues.apache.org/jira/browse/HBASE-17110) | *Major* | **Improve SimpleLoadBalancer to always take server-level balance into account**

After HBASE-17110 the bytable strategy for SimpleLoadBalancer will also take server level balance into account


---

* [HBASE-14902](https://issues.apache.org/jira/browse/HBASE-14902) | *Major* | **Revert some of the stringency recently introduced by checkstyle tightening**

Changes the checkstyle so that on a continuation line for javadoc, instead of default four spaces, instead now it is two spaces. Also one line statements as in if (true) x =1; now pass checkstyle.


---

* [HBASE-15943](https://issues.apache.org/jira/browse/HBASE-15943) | *Major* | **Add page displaying JVM process metrics**

Adds new "Process Metrics' tab along the top which leads to new page that dumps mbean -- mostly jvm -- metrics


---

* [HBASE-18240](https://issues.apache.org/jira/browse/HBASE-18240) | *Major* | **Add hbase-thirdparty, a project with hbase utility including an hbase-shaded-thirdparty module with guava, netty, etc.**

Adds a new project, hbase-thirdparty, at https://git-wip-us.apache.org/repos/asf/hbase-thirdparty used by core hbase. GroupID org.apache.hbase.thirdparty. Version 1.0.0. 

This project packages relocated third-party libraries used by Apache HBase such as protobuf, guava, and netty among others. HBase core depends on it.

It has threre submodules, one to patch and then relocate (shade) protobuf, and one to do messy .so renaming (netty). The remainder module relocates a bundle of other (unpatched) libs used by hbase. This latter set includes protobuf-util, netty-all, gson, and guava.

All shading is done using the same relocation offset of org.apache.hadoop.hbase.shaded; we add this prefix to the relocated thirdparty library class names.

See the pom.xml in hbase-thirdparty for the explicit version of each third-party lib included (of note, we update out internal protobuf from 3.1.0 to 3.3.1).


---

* [HBASE-16120](https://issues.apache.org/jira/browse/HBASE-16120) | *Minor* | **Add shell test for truncate\_preserve**

Add unit tests for truncate\_preserve


---

* [HBASE-6581](https://issues.apache.org/jira/browse/HBASE-6581) | *Major* | **Build with hadoop.profile=3.0**

Make us build against hadoop trunk (3.0)


---

* [HBASE-18083](https://issues.apache.org/jira/browse/HBASE-18083) | *Major* | **Make large/small file clean thread number configurable in HFileCleaner**

After HBASE-18083 we could configure HFileCleaner to use multiple threads for large/small (archived) hfile cleaning with hbase.regionserver.hfilecleaner.large.thread.count and hbase.regionserver.hfilecleaner.small.thread.count, both default to 1. These properties support online configuration change.


---

* [HBASE-16090](https://issues.apache.org/jira/browse/HBASE-16090) | *Major* | **ResultScanner is not closed in SyncTable#finishRemainingHashRanges()**

pushed to 1.3 and 1.2. SyncTable was introduced in 1.2, so skipping 1.1.


---

* [HBASE-17908](https://issues.apache.org/jira/browse/HBASE-17908) | *Critical* | **Upgrade guava**

Use relocated guava 22.0 gotten from the new hbase-thirdparty ancillary project.

Incompatible change. ReplicationEndpoint and subclasses extend guava Service which changed pretty radically between 12.0 and 22.0. Change is kosher because implementations are marked audience private. Still, this will likely cause grief for the likes of the downstream lily indexer.


---

* [HBASE-18107](https://issues.apache.org/jira/browse/HBASE-18107) | *Major* | **[AMv2] Remove DispatchMergingRegionsRequest & DispatchMergingRegions**

Removes merge region code added into branch-2 but that was not needed after all. Branch-2 replaced dispatchMergingRegions with MergeTableRegionsProcedure.

Removed:

# dispatchMergingRegions from Connection (was superceded long ago in branch-1).
# mergeRegions from RsRpcServices (was not used).


---

* [HBASE-18023](https://issues.apache.org/jira/browse/HBASE-18023) | *Minor* | **Log multi-\* requests for more than threshold number of rows**

HBASE-18023 introduces a warning message in the RegionServer log when an RPC is received from a client that has more than 5000 "actions" (where an "action" is a collection of mutations for a specific row) in a single RPC. Misbehaving clients who send large RPCs to RegionServers can be malicious, causing temporary pauses via garbage collection or denial of service via crashes. The threshold of 5000 actions per RPC is defined by the property "hbase.rpc.rows.warning.threshold" in hbase-site.xml.


---

* [HBASE-17056](https://issues.apache.org/jira/browse/HBASE-17056) | *Critical* | **Remove checked in PB generated files**

Purge all checked in generated protobuf files (30MB). Generate protobuf files inline with the build. Remove checked-in and patched protobuf. Get it from new hbase-thirdparty instead.

Side-effect: Our protobuf went from 3.1.0 to 3.3.1.

Build does not take noticeably longer (still about 2.5 minutes to do a mvn clean install -DskipTests).

IDEs will probably require a mvn build first else they'll complain about missing (generated) files.


---

* [HBASE-18492](https://issues.apache.org/jira/browse/HBASE-18492) | *Major* | **[AMv2] Embed code for selecting highest versioned region server for system table regions in AssignmentManager.processAssignQueue()**

Favors new servers over older versions when assigning system table regions (more to follow in this area; i.e. changes in the AM itself).


---

* [HBASE-17125](https://issues.apache.org/jira/browse/HBASE-17125) | *Critical* | **Inconsistent result when use filter to read data**

Marked Scan and Get's setMaxVersions() and setMaxVersions(int) as deprecated. They are easy to misunderstand with column family's max versions, so use readAllVersions() and readVersions(int) instead.


---

* [HBASE-18387](https://issues.apache.org/jira/browse/HBASE-18387) | *Minor* | **[Thrift] Make principal configurable in DemoClient.java**

This change allows the demonstration Thrift client to customize the server principal used by the Thrift server for instances secured with Kerberos.


---

* [HBASE-18500](https://issues.apache.org/jira/browse/HBASE-18500) | *Major* | **Performance issue: Don't use BufferedMutator for HTable's put method**

Remove the deprecated method get/setWriteBufferSize from Table and remove writeBufferSize from TableBuilder. Remove the BufferedMutatorImpl from HTable.


---

* [HBASE-18469](https://issues.apache.org/jira/browse/HBASE-18469) | *Critical* | **Correct  RegionServer metric of  totalRequestCount**

In HBASE-18469 we introduced a new RegionServer metrics in name of "totalRowActionRequestCount" which counts in all row actions and equals to the sum of "readRequestCount" and "writeRequestCount". Meantime, we have changed "totalRequestCount" to count only once for multi request, while previously we will count in action number of the request. As a result, existing monitoring system on totalRequestCount will still work but see a smaller value, and we strongly recommend to change to use the new metrics to monitor server load.


---

* [HBASE-18551](https://issues.apache.org/jira/browse/HBASE-18551) | *Major* | **[AMv2] UnassignProcedure and crashed regionservers**

Unassign will not proceed if it is unable to talk to the remote server. Now it will expire the server it is unable to communicate with and then wait until it is signaled by ServerCrashProcedure that the server's logs have been split. Only then will judge the unassign successful. 

We do this because a subsequent assign lacking the crashed server context might open a region w/o first splitting logs.


---

* [HBASE-15511](https://issues.apache.org/jira/browse/HBASE-15511) | *Major* | **ClusterStatus should be able to return responses by scope**

Provide a new way to get ClusterStatus with a filter to filter out unwanted information by using ClusterStatus.Options, such that the response back to client can be limited.
Note that, the constructor way to new a ClusterStatus will be no longer support after 2.0.0,  and use ClusterStatus.Builder instead.


---

* [HBASE-18271](https://issues.apache.org/jira/browse/HBASE-18271) | *Blocker* | **Shade netty**

Depend on hbase-thirdparty for our netty instead of directly relying on netty-all. netty is relocated in hbase-thirdparty from io.netty to org.apache.hadoop.hbase.shaded.io.netty. One kink is that netty bundles an .so. Its files also are relocated. So netty can find the .so content, need to specify on command-line a system property telling netty about the shading. 

The .so trick is from
             https://stackoverflow.com/questions/33825743/rename-files-inside-a-jar-using-some-maven-plugin

In essence we need the below defined whenever we run tests or deploy:

-Dorg.apache.hadoop.hbase.shaded.io.netty.packagePrefix=org.apache.hadoop.hbase.shaded.

(The trailing '.' is required)

See toward the end of this issue for how to pass config: https://github.com/netty/netty/issues/6665

The system property has been added to bin/hbase. If starting hbase with other than bin/hbase, add this system property (at least on linux).

For devs, going forward, do not reference io.netty. Reference org.apache.hadoop.hbase.io.netty instead. Here is sample:

{code}
-import io.netty.channel.Channel;
-import io.netty.channel.EventLoop;
+import org.apache.hadoop.hbase.shaded.io.netty.channel.Channel;
+import org.apache.hadoop.hbase.shaded.io.netty.channel.EventLoop;
{code}


---

* [HBASE-18528](https://issues.apache.org/jira/browse/HBASE-18528) | *Critical* | **DON'T allow user to modify the passed table/column descriptor**

**WARNING: No release note provided for this change.**


---

* [HBASE-18511](https://issues.apache.org/jira/browse/HBASE-18511) | *Blocker* | **Default no regions on master**

Changes the configuration hbase.balancer.tablesOnMaster from list of table names that the can carry (with 'none' meaning no tables on the master) to instead be a boolean that is set to true if master carries tables/regions and false if it does not. If true, the master acts like any regionserver.

If false, then the master carries no tables. This is the default for hbase-2.0.0.

Another boolean configuration, hbase.balancer.tablesOnMaster.systemTablesOnly, when set to true, enables hbase.balancer.tablesOnMaster and makes it so the master hosts system tables exclusively (the long-time deploy mode of master branch and branch-2 up until this commit).

The change of hbase.balancer.tablesOnMaster from String list to boolean and
the addition of a simple boolean to enable system-tables on Master was done
to constrain what operators might ask for via this master configuration.
Stipulating what tables are bound to the Master server verges into
regionserver grouping territory, a more robust means of specifying table
and server combinations. Operators should use this latter if they want
layouts more exotic than those supplied by the provided booleans.


---

* [HBASE-18631](https://issues.apache.org/jira/browse/HBASE-18631) | *Minor* | **Allow configuration of ChaosMonkey properties via hbase-site**

This change invalidates the need for a separate Java properties file to configure the ChaosMonkey included with HBase. These properties can be provided directly in hbase-site.xml. If configuration in provided in both locations, the Java properties file takes precendence.


---

* [HBASE-18546](https://issues.apache.org/jira/browse/HBASE-18546) | *Critical* | **Always overwrite the TS for Append/Increment unless no existing cells are found**

If there is no existing cell in submitting Append/Increment, the custom ts won't be overridden. By contrast, the cell's ts will always be overridden by server.



