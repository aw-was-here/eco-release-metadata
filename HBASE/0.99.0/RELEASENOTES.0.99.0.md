# Apache HBase  0.99.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-11919](https://issues.apache.org/jira/browse/HBASE-11919) | *Major* | **Remove the deprecated pre/postGet CP hook**

Removed the below 2 hooks from RegionObserver CP. These were deprecated since 0.96 and having replacement
1. preGet(final ObserverContext<RegionCoprocessorEnvironment> c, final Get get, final List<KeyValue> result)
2. postGet(final ObserverContext<RegionCoprocessorEnvironment> c, final Get get, final List<KeyValue> result)
These are replaced with pre/postGetOp hooks


---

* [HBASE-11897](https://issues.apache.org/jira/browse/HBASE-11897) | *Minor* | **Add append and remove peer table-cfs cmds for replication**

Adds two new shell commands for operators to add and remove peers at the columnfamily scope.


---

* [HBASE-11878](https://issues.apache.org/jira/browse/HBASE-11878) | *Major* | **TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController not yet initialized**

A new exception, VisibilityControllerNotReadyException, is introduced for the case where VisibilityController is being initialized. Client can respond to this exception by retrying prior operation.
VisibilityControllerNotReadyException isn't a DoNotRetryIOException.


---

* [HBASE-11873](https://issues.apache.org/jira/browse/HBASE-11873) | *Minor* | **Hbase Version CLI enhancement**

Calculates on startup checksum of running code.  Emits in logs on startup and shows in UI.


---

* [HBASE-11847](https://issues.apache.org/jira/browse/HBASE-11847) | *Minor* | **HFile tool should be able to print block headers**

The HFileTool (`hbase hfile`) can print block headers. The flag is -h,--printblockheaders.


---

* [HBASE-11845](https://issues.apache.org/jira/browse/HBASE-11845) | *Minor* | **HFile tool should implement Tool, disable blockcache by default**

HFileTool now accepts configuration overrides in the usual way. Blockcache is disabled by default.


---

* [HBASE-11821](https://issues.apache.org/jira/browse/HBASE-11821) | *Major* | **[ImportTSV] Abstract labels tags creation into pluggable Interface**

Added a facade org.apache.hadoop.hbase.mapreduce.CellCreator to create Cells for HFileOutputFormat. When working with HFileOutputFormat (with or with out visibility labels) in bulk load one can  use this facade to make Cells with visibility tags.
Also we allow plugin an implementation of org.apache.hadoop.hbase.mapreduce.VisibilityExpressionResolver by configuring the the FQCN with key "hbase.mapreduce.visibility.expression.resolver.class". The default implementation will tag Cells with visibility label ordinal.


---

* [HBASE-11805](https://issues.apache.org/jira/browse/HBASE-11805) | *Major* | **KeyValue to Cell Convert in WALEdit APIs**

The KeyValue based APIs in WALEdit is been removed and replaced with Cell based APIs
void add(KeyValue)    ->       void add(Cell)
ArrayList<KeyValue> getKeyValues()    ->    ArrayList<Cell> getCells()


---

* [HBASE-11696](https://issues.apache.org/jira/browse/HBASE-11696) | *Major* | **Make CombinedBlockCache resizable.**

CombinedBlockCache is made resizable. See HBASE-5349 for auto resizing feature. On resize of this block cache, the L1 cache (ie. LRU cache) will get resized


---

* [HBASE-11657](https://issues.apache.org/jira/browse/HBASE-11657) | *Major* | **Put HTable region methods in an interface**

Add a RegionLocator Interface. Encapsulates 'region' operations.  Implemented by HTable and you can get one from an HConnection.


---

* [HBASE-11651](https://issues.apache.org/jira/browse/HBASE-11651) | *Major* | **Add conf which disables MetaMigrationConvertingToPB check (for experts only)**

Set hbase.MetaMigrationConvertingToPB to false to avoid scan of META on startup. Useful if you know your meta has already been migrated and if your meta is very large.


---

* [HBASE-11610](https://issues.apache.org/jira/browse/HBASE-11610) | *Major* | **Enhance remote meta updates**

Adds "hbase.regionstatestore.meta.connection" configuration and new MultiHConnection class.  Is set to 1 by default.  Set it higher if you want to run with more than one connection to the meta table.  Useful if you have a very large meta table -- e.g. 1M regions -- otherwise, stick to the default.


---

* [HBASE-11600](https://issues.apache.org/jira/browse/HBASE-11600) | *Trivial* | **DataInputputStream and DoubleOutputStream are no longer being used**

Removed unused classes


---

* [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | *Major* | **Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+**

TableMapReduceUtil now restores the option to set scanner caching by setting it on the Scan object that is passe in. The priority order for choosing the scanner caching is as follows:

1. Caching set on the scan object.
2. Caching specified via the config "hbase.client.scanner.caching", which can either be set manually on the conf or via the helper method TableMapReduceUtil.setScannerCaching().
3. The default value HConstants.DEFAULT\_HBASE\_CLIENT\_SCANNER\_CACHING, which is set to 100 currently.


---

* [HBASE-11534](https://issues.apache.org/jira/browse/HBASE-11534) | *Minor* | **Remove broken JAVA\_HOME autodetection in hbase-config.sh**

This change removes old and increasingly useless JAVA\_HOME autodetection that looks for Java 6 runtimes in various locations. Ensure that JAVA\_HOME is correctly set in the environment before launching HBase daemons.


---

* [HBASE-11527](https://issues.apache.org/jira/browse/HBASE-11527) | *Major* | **Cluster free memory limit check should consider L2 block cache size also when L2 cache is onheap.**

The sum of the heap size % used by Memstore (Configured using 'hbase.regionserver.global.memstore.size' and defaults to 40%) and the that of block cache (Configured using 'hfile.block.cache.size' and defaults to 40%) should leave enough heap size for other normal operations of RS. This is 20%. Also to be noted that when the L2 block cache (ie. Bucket cache) is configured to be on heap, the size of that also comes into this size math. So in that case the sum of memstore heap size, L1 block cache size and L2 cache size (Configured using 'hbase.bucketcache.size')can be at max 80%.
When automatic tuning of heap memory is enabled (HBASE-5349) at point of time this 80% cap should hold.


---

* [HBASE-11520](https://issues.apache.org/jira/browse/HBASE-11520) | *Major* | **Simplify offheap cache config by removing the confusing "hbase.bucketcache.percentage.in.combinedcache"**

Remove "hbase.bucketcache.percentage.in.combinedcache".  Simplifies config of block cache.  If you are using this config., after this patch goes in, it will be ignored.  The L1 LruBlockCache will be whatever hfile.block.cache.size is set to and the L2 BucketCache will be whatever hbase.bucketcache.size is set to.


---

* [HBASE-11492](https://issues.apache.org/jira/browse/HBASE-11492) | *Critical* | **Hadoop configuration overrides some ipc parameters including tcpNoDelay**

If the Hadoop configuration is read after the HBase configuration, Hadoop's settings can override HBase's settings if the names of the settings are the same. To avoid the risk of override, HBase has renamed the following settings (by prepending 'hbase.') so that you can set them independent of your setting for Hadoop. If you do not use the HBase-specific variants, the Hadoop settings will be used.

Old Name   -->   New Name
======================================================
ipc.server.listen.queue.size   -->   hbase.ipc.server.listen.queue.size
ipc.server.max.callqueue.size   -->   hbase.ipc.server.max.callqueue.size
ipc.server.callqueue.handler.factor --> hbase.ipc.server.callqueue.handler.factor
ipc.server.callqueue.read.share --> hbase.ipc.server.callqueue.read.share
ipc.server.callqueue.type --> hbase.ipc.server.callqueue.type
ipc.server.queue.max.call.delay --> hbase.ipc.server.queue.max.call.delay
ipc.server.max.callqueue.length --> hbase.ipc.server.max.callqueue.length
ipc.server.read.threadpool.size   -->  hbase.ipc.server.read.threadpool.size
ipc.server.tcpkeepalive   -->   hbase.ipc.server.tcpkeepalive
ipc.server.tcpnodelay   -->   hbase.ipc.server.tcpnodelay
ipc.client.call.purge.timeout   -->   hbase.ipc.client.call.purge.timeout
ipc.client.connection.maxidletime   -->   hbase.ipc.client.connection.maxidletime
ipc.client.idlethreshold   -->   hbase.ipc.client.idlethreshold
ipc.client.kill.max   -->   hbase.ipc.client.kill.max
ipc.server.scan.vtime.weight --> hbase.ipc.server.scan.vtime.weight


---

* [HBASE-11440](https://issues.apache.org/jira/browse/HBASE-11440) | *Major* | **Make KeyValueCodecWithTags as the default codec for replication in trunk**

By default in master branch the replication would use a new type of codec that would always replicate Cells with tags.
{code}
{code}
<property>
        <name>hbase.replication.rpc.codec</name>      <value>org.apache.hadoop.hbase.codec.KeyValueCodecWithTags</value>
</property>
{code}


---

* [HBASE-11374](https://issues.apache.org/jira/browse/HBASE-11374) | *Critical* | **RpcRetryingCaller#callWithoutRetries has a timeout of zero**

Previously, RPC multi operations had a timeout of 0, which was erroneously interpreted as infinity, and resulted in a fallback value of 2 seconds. RPC multi operations now use the value of hbase.rpc.timeout, as do other RPC operations. The default value is 60000, or 60 seconds.


---

* [HBASE-11372](https://issues.apache.org/jira/browse/HBASE-11372) | *Major* | **Remove SlabCache**

SlabCache is no longer support. For off-heap blockcache needs, please see BucketCache.


---

* [HBASE-11364](https://issues.apache.org/jira/browse/HBASE-11364) | *Major* | **[BlockCache] Add a flag to cache data blocks in L1 if multi-tier cache**

Adds a flag to HColumnDescriptor, cacheDataInL1.  In shell, you set it as follows: hbase(main):003:0> create 't', {NAME => 't', CONFIGURATION => {CACHE\_DATA\_IN\_L1 => 'true'}}


---

* [HBASE-11350](https://issues.apache.org/jira/browse/HBASE-11350) | *Major* | **[PE] Allow random value size**

Adds three options:

 valueSize   Allows specifying value size
 valueRandom When set, we'll generate values of random size up maximum of valueSize
 period     Period at which we report (when writing a bunch, might not report for an hour at a time).


---

* [HBASE-11348](https://issues.apache.org/jira/browse/HBASE-11348) | *Minor* | **Make frequency and sleep times of  chaos monkeys configurable**

Added an additional option to IntegrationTestBase class to enable specifying chaos monkey properties. If  the properties file is not specified, the monkeys will default to existing values. The new usage looks like the following:
Usage: bin/hbase <sub\_class\_of\_IntegrationTestBase> <options>
 Options: -h,--help Show usage
           -m,--monkey <arg> Which chaos monkey to run
           -monkeyProps <arg> chaos monkey properties file
          -ncc Option to not clean up the cluster at the end.


---

* [HBASE-11344](https://issues.apache.org/jira/browse/HBASE-11344) | *Major* | **Hide row keys and such from the web UIs**

Configure "hbase.display.keys" to false (default: true) in the master/regionservers if the row-keys should be hidden in the webUIs (like in the webUI for table details).


---

* [HBASE-11331](https://issues.apache.org/jira/browse/HBASE-11331) | *Major* | **[blockcache] lazy block decompression**

When hbase.block.data.cachecompressed=true, DATA (and ENCODED\_DATA) blocks are cached in the BlockCache in their on-disk format. This is different from the default behavior, which decompresses and decrypts a block before caching.

For a region server hosting more data than fits into cache, enabling this feature with SNAPPY compression results in 50% increase in throughput and 30% improvement in mean latency while increasing GC by 80% and increasing overall CPU load by 2%.


---

* [HBASE-11315](https://issues.apache.org/jira/browse/HBASE-11315) | *Major* | **Keeping MVCC for configurable longer time**

After this patch, MVCC value of KVs will be kept for a configurable period "hbase.hstore.compaction.keep.mvcc.period"(default value is 5 days). The minimum setting of "hbase.hstore.compaction.keep.mvcc.period" is also set to 5 days and any user setting less than the min setting will be ignored.


---

* [HBASE-11307](https://issues.apache.org/jira/browse/HBASE-11307) | *Major* | **Deprecate SlabCache**

SlabCache is deprecated and will be dropped for 1.0! Start investigating BucketCache for your off-heap caching needs.


---

* [HBASE-11240](https://issues.apache.org/jira/browse/HBASE-11240) | *Major* | **Print hdfs pipeline when hlog's sync is slow**

Adds emission of a log message that lists datanodes in HDFS pipeline when sync is slow.  Set when to log with "hbase.regionserver.hlog.slowsync.ms". Defaults logging if sync takes > 100ms.


---

* [HBASE-11229](https://issues.apache.org/jira/browse/HBASE-11229) | *Major* | **Change block cache percentage metrics to be doubles rather than ints**

Renames metric "blockCountHitPercent" as "blockCacheCountHitPercent".  Changes this metrics type from int to double.

Small changes in this metric can have significant impact serving.  While this metric may show 99.xx percent, most of the cache hits are because we are fetching index and bloom blocks.   A significant percentage of data block evictions may only register as a small change in this metric.  Keep an eye on evictions as well changes (even if small) in this metric.


---

* [HBASE-11218](https://issues.apache.org/jira/browse/HBASE-11218) | *Major* | **Data loss in HBase standalone mode**

Fix for local filesystem data loss in standalone and pseudo-distributed mode.


---

* [HBASE-11190](https://issues.apache.org/jira/browse/HBASE-11190) | *Trivial* | **Fix easy typos in documentation**

Hi Misty,

I ran my little spellchecker on the single-page reference guide: http://archive.cloudera.com/cdh4/cdh/4/hbase/book.html#splitter

Words that might be typos because of transpositions:

intorduction => introduction
mutli => multi
offest => offset
quesiton => question
verison => version
rbdms => rdbms

Words that might be typos because of 1 letter added:

hbbase => hbase
parallell => parallel
writting => writing
resstart => restart
mailling => mailing
commmands => commands
experiemental => experimental
garbarge => garbage
atttributes => attributes

Words that might be typos because of 1 letter left out:

folowing => following
timstamp => timestamp
somtimes => sometimes
defaul => default (search for "defaul." to find this instance)
columnfamiy => columnfamily
clien => client
miliseconds => milliseconds
commiters => committers
spitting => splitting
confiurations => configurations
verions => versions

Words that might be typos because of 1 letter replaced:

commanas => commands
mimimum => minimum
seperated => separated

Cheers,
John


---

* [HBASE-11118](https://issues.apache.org/jira/browse/HBASE-11118) | *Blocker* | **non environment variable solution for "IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString"**

The workaround documented in HBASE-10304 for running a mapreduce job with a "fat jar" is no longer required. Such applications can be launched without adding hbase-protocol.jar to the HADOOP\_CLASSPATH.


---

* [HBASE-11094](https://issues.apache.org/jira/browse/HBASE-11094) | *Blocker* | **Distributed log replay is incompatible for rolling restarts**

Configuration setting "hbase.master.distributed.log.replay" is only used by Master(source of truth) and region servers which participate in recovery process will recover region servers either in log splitting or replay mode depending on what setting is told by Master.

When "hbase.master.distributed.log.replay" configuration setting changes, master will wait for all existing log recovery work items drain before it applies the new setting in order not to mix different recovery mode & ease administrator duty to manually wait all recovery work is done and then restart master.


---

* [HBASE-11077](https://issues.apache.org/jira/browse/HBASE-11077) | *Critical* | **[AccessController] Restore compatible early-out access denial**

Prior to 0.98.0 if a user was not granted access to a column family or partial access (qualifier grants), then the AccessController would immediately throw back an AccessDeniedException. This behavior was changed in 0.98.0 to allow cell level ACLs to grant exceptional access. The user will no longer see an exception; instead the scanner will return result sets only including cells which grant exceptional access. If no such cell level grants are made, then the scanner will return the empty result set. 

This change introduces a configuration setting which restores the pre-0.98.0 behavior. It can be set in the site file for global effect, or per table using HTableDescriptor#setConfiguration. This setting is AccessControlConstants.CF\_ATTRIBUTE\_EARLY\_OUT ("hbase.security.access.early\_out"), a boolean. Set to "true" for backwards compatible behavior. As a consequence if there are no grants at the CF level then an AccessDeniedException will be thrown immediately, and cell ACLs will be ignored, unless the cell-first ACL evaluation strategy is used (toggled via Query#setACLStrategy). 

This change also repairs a defect related to audit logging. In all cases, compatible behavior or not, indications of successful or failed access attempts will be logged.


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

* [HBASE-11054](https://issues.apache.org/jira/browse/HBASE-11054) | *Major* | **Create new hook in StoreScanner to help user creating his own delete tracker**

Creates a new hook in the RegionObserver Coprocessor,
{code}
RegionObserver postInstantiateDeleteTracker(final ObserverContext<RegionCoprocessorEnvironment> ctx, DeleteTracker delTracker)
{code}
Introduced in 0.98.2.


---

* [HBASE-11052](https://issues.apache.org/jira/browse/HBASE-11052) | *Major* | **Sending random data crashes thrift service**

Thrift servers should use framed/compact protocol to protect against buffer overflow (default disabled as they are breaking old clients)
- hbase.regionserver.thrift.framed = true
- hbase.regionserver.thrift.compact = true


---

* [HBASE-11025](https://issues.apache.org/jira/browse/HBASE-11025) | *Major* | **Infrastructure for pluggable consensus service**

Add ConsensusProvider Interface and factory.


---

* [HBASE-11016](https://issues.apache.org/jira/browse/HBASE-11016) | *Minor* | **Remove Filter#filterRow(List)**

The following method has been removed from Filter:
public void filterRow(List<KeyValue> kvs) throws IOException;


---

* [HBASE-11008](https://issues.apache.org/jira/browse/HBASE-11008) | *Major* | **Align bulk load, flush, and compact to require Action.CREATE**

preBulkLoadHFile now requires CREATE, which it effectively already needed since getTableDescriptor also requires it which is what LoadIncrementalHFiles is doing before bulk loading.
compact and flush can now be issued by users with CREATE permission.


---

* [HBASE-10984](https://issues.apache.org/jira/browse/HBASE-10984) | *Trivial* | **Add description about setting up htrace-zipkin to documentation**

How to enable tracing into zipkin


---

* [HBASE-10966](https://issues.apache.org/jira/browse/HBASE-10966) | *Trivial* | **RowCounter misinterprets column names that have colons in their qualifier**

Applied to all branches (0.94 doesn't have TestRowCounter so didn't get test change).  Thanks for the patch Alexandre.


---

* [HBASE-10964](https://issues.apache.org/jira/browse/HBASE-10964) | *Major* | **Delete mutation is not consistent with Put wrt timestamp**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-10958](https://issues.apache.org/jira/browse/HBASE-10958) | *Blocker* | **[dataloss] Bulk loading with seqids can prevent some log entries from being replayed**

Bulk loading with sequence IDs, an option in late 0.94 releases and the default since 0.96.0, will now trigger a flush per region that loads an HFile (if there's data that needs to flushed).


---

* [HBASE-10925](https://issues.apache.org/jira/browse/HBASE-10925) | *Major* | **Do not OOME, throw RowTooBigException instead**

Now throws RowTooBigException if accumulated row size is > the configured "hbase.table.max.rowsize" (1G by default).


---

* [HBASE-10923](https://issues.apache.org/jira/browse/HBASE-10923) | *Major* | **Control where to put meta region**

This patch introduced a new configuration "hbase.balancer.tablesOnMaster" to control what tables' regions should be put on the master by a load balancer. By default, we will put regions of table acl, namespace, and meta on master, i.e. the default configuration is the same as "hbase:acl,hbase:namespace,hbase:meta". To put no region on the master, you need to set "hbase.balancer.tablesOnMaster" to "none" instead of an empty string(the default will be used if it is empty).


---

* [HBASE-10916](https://issues.apache.org/jira/browse/HBASE-10916) | *Critical* | **[VisibilityController] Stackable ScanLabelGenerators**

One can configure a set of ScanLabelGenerators to be used by the system. For this, a comma separated set of implementation class names to be configured for config "hbase.regionserver.scan.visibility.label.generator.class".


---

* [HBASE-10888](https://issues.apache.org/jira/browse/HBASE-10888) | *Major* | **Enable distributed log replay as default**

Distributed Log Replay has been disabled again for 1.0.x releases. See HBASE-12577


---

* [HBASE-10885](https://issues.apache.org/jira/browse/HBASE-10885) | *Blocker* | **Support visibility expressions on Deletes**

Deletes can be specified with Cell Visibility as done for puts.
Cells covered by the delete is found by doing pattern matching. 
A deleteFamily issued for row1, f1 with Cell Visibility (A & B) would delete only those cells of row1 under family f1 which has cell visibility A&B or B&A. A delete without any cell visibility would only delete those cells that does not have any cell visibility.
In case of delete specific column with latest version only the latest cell with the specified cell visibility will be covered by the delete marker. In case there is no such cell with the specified cell visibility then no cell gets deleted.


---

* [HBASE-10884](https://issues.apache.org/jira/browse/HBASE-10884) | *Major* | **[REST] Do not disable block caching when scanning**

The REST gateway no longer disables block cache when issuing Scans to the cluster, and in this way, Scans now behave the same as Gets.


---

* [HBASE-10855](https://issues.apache.org/jira/browse/HBASE-10855) | *Major* | **Enable hfilev3 by default**

HFileV3 is written by default from here on out.  HFileV3 adds support for tags.  You cannot rolling upgrade from 0.96 to 0.99.  You must go first to 0.98 which has support for hfile v3 files and then to 0.99.


---

* [HBASE-10821](https://issues.apache.org/jira/browse/HBASE-10821) | *Major* | **Make ColumnInterpreter#getValue() abstract**

ColumnInterpreter#getValue(byte[], byte[], KeyValue) has been removed from ColumnInterpreter
ColumnInterpreter#getValue(byte[], byte[], Cell) is now abstract


---

* [HBASE-10796](https://issues.apache.org/jira/browse/HBASE-10796) | *Major* | **Set default log level as INFO**

Set default log level as INFO.  Previous we shipped with log level of DEBUG.


---

* [HBASE-10781](https://issues.apache.org/jira/browse/HBASE-10781) | *Major* | **Remove hadoop-one-compat module and all references to hadoop1**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-10755](https://issues.apache.org/jira/browse/HBASE-10755) | *Minor* | **MetricsRegionSourceImpl creates metrics that start with a lower case**

There used to be a mix of metrics starting with "namespace\_" "and Namespace\_", now all the metrics will use the latter.


---

* [HBASE-10750](https://issues.apache.org/jira/browse/HBASE-10750) | *Major* | **Pluggable MemStoreLAB**

The default implementation of the MemStore optionally can use a MSLAB. This jira makes it also pluggable. Configure the FQCN of the impl class against the config key "hbase.regionserver.mslab.class" to plugin a custom implementation


---

* [HBASE-10746](https://issues.apache.org/jira/browse/HBASE-10746) | *Minor* | **Bump the version of HTrace to 3.0**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-10741](https://issues.apache.org/jira/browse/HBASE-10741) | *Major* | **Deprecate HTablePool and HTableFactory**

HTablePool and HTableFactory are relics and are going away. See HConnection#getTable instead.


---

* [HBASE-10690](https://issues.apache.org/jira/browse/HBASE-10690) | *Critical* | **Drop Hadoop-1 support**

Trunk no longer has support for hadoop1.  You cannot build against hadoop1.  We now generate one artifact only and our artifact naming no longer includes the hadoop version we were built against since we only build against one version, hadoop2: e.g. the hbase 1.0.0 release will be named hbase-1.0.0, not hbase-1.0.0-hadoop1 (or hbase-1.0.0-hadoop2).


---

* [HBASE-10688](https://issues.apache.org/jira/browse/HBASE-10688) | *Major* | **Add a draining\_node script to manage nodes in draining mode**

Adds a ruby script to manage nodes in draining mode. 
Usage: ./hbase org.jruby.Main draining\_servers.rb [options] add|remove|list <hostname>|<host:port>|<servername> ...
Add remove or list servers in draining mode. Can accept either hostname to drain all region serversin that host, a host:port pair or a host,port,startCode triplet. More than one server can be given separated by space


---

* [HBASE-10675](https://issues.apache.org/jira/browse/HBASE-10675) | *Major* | **IntegrationTestIngestWithACL should allow User to be passed as Parameter**

To use this feature of passing superuser and userlist we need to give the following command
{code}
./hbase --config /usr/lib/hbase/conf/ org.apache.hadoop.hbase.IntegrationTestIngestWithACL  -superuser <user> -userlist <user1>,<user2>,<user3>
{code}
Ensure that the userlist  is comma seperated.


---

* [HBASE-10648](https://issues.apache.org/jira/browse/HBASE-10648) | *Major* | **Pluggable Memstore**

A new implementation for the Memstore can be plugged into region server. For this implement org.apache.hadoop.hbase.regionserver.MemStore interface and configure the FQCN of the impl class against the key "hbase.regionserver.memstore.class"


---

* [HBASE-10609](https://issues.apache.org/jira/browse/HBASE-10609) | *Major* | **Remove filterKeyValue(Cell ignored) from FilterBase**

filterKeyValue(Cell ignored) is dropped from FilterBase.
Custom filters should provide implementation which is consistent with filterRowKey().


---

* [HBASE-10591](https://issues.apache.org/jira/browse/HBASE-10591) | *Major* | **Sanity check table configuration in createTable**

Introduces sanity checks for table configuration in create and modify table against some default values. Especially we enforce region split size >= 2MB, memstore flush size >= 1MB, and 1024 <= block size <= 16MB. If you want to bypass the sanity checks, you can set "hbase.table.sanity.checks" to false, at global configuration, or at table descriptors configuration.


---

* [HBASE-10572](https://issues.apache.org/jira/browse/HBASE-10572) | *Major* | **Create an IntegrationTest for region replicas**

Adds an integration test for testing multi threaded gets with stale mode set in a table with replicated regions. Chaos Monkey can be run to test the behavior where region servers and masters are killed. 

Check the javadoc for IntegrationTestTimeBoundedRequestsWithRegionReplicas for how to run the test.


---

* [HBASE-10569](https://issues.apache.org/jira/browse/HBASE-10569) | *Major* | **Co-locate meta and master**

With this patch, HMaster is also a HRegionServer.  Active master can serve some small tables per configuration (by default, it doesn't). Backup masters don't serve any region.

HMaster and HRegionServer share the same RPC server. That's transparent to clients since the master information is in ZK. The master and the regionserver also shares the same web UI server.

There is no protocol, or API change. So this feature is backward compatible, and rolling upgradable. In case it's needed, some configurations (HBASE-10815) will be added so that (1) we can have two web UI servers in the master (and backup masters), one for the master, and the other for the region server; (2) we can leave backup masters alone and don't put any regions on them. So that things are the same as before.

With this patch, the following configurations are removed (and not used any more):

hbase.master.dns.interface
hbase.master.dns.nameserver
hbase.master.port
hbase.master.ipc.address
hbase.master.zksession.recover.timeout
fail.fast.expired.active.master
hbase.master.handler.count


---

* [HBASE-10566](https://issues.apache.org/jira/browse/HBASE-10566) | *Major* | **cleanup rpcTimeout in the client**

3 new settings are now available to configure the socket in the HBase client:
- connect timeout: "hbase.ipc.client.socket.timeout.connect" (milliseconds, default: 10 seconds)
- write timeout: "hbase.ipc.client.socket.timeout.read" (milliseconds, default: 20 seconds)
- read timeout: "hbase.ipc.client.socket.timeout.write" (milliseconds, default: 60 seconds)

ipc.socket.timeout is not used anymore.
The per operation timeout is still controled by hbase.rpc.timeout


---

* [HBASE-10548](https://issues.apache.org/jira/browse/HBASE-10548) | *Minor* | **Correct commons-math dependency version**

Downgrades HBase's dependency on commons-math to 2.1, which is consistent with all stable releases of Hadoop.


---

* [HBASE-10525](https://issues.apache.org/jira/browse/HBASE-10525) | *Major* | **Allow the client to use a different thread for writing to ease interrupt**

If hbase.ipc.client.allowsInterrupt is set to true (default being false), the writes are performed in a different thread. This workarounds a Java limitation with interruptions and i/o; and limits the impact of interrupting a client call. It's strongly recommended to activate this parameter when using tables with multiple replicas.


---

* [HBASE-10501](https://issues.apache.org/jira/browse/HBASE-10501) | *Critical* | **Improve IncreasingToUpperBoundRegionSplitPolicy to avoid too many regions**

Changes the default split policy to avoid too many regions with default settings.
The old policy calculates the split size at each RS as follows: MIN(maxFileSize, flushSize*NoRegions^2) (NoRegions is the number of regions for the table in question seen on this RS)

The new policy calculates the size this way: MIN(maxFileSize, flushSize*2*NoRegions^3)
Note that the initial split size is now 2 * the flushSize. With default settings it increased from 128mb to 256mb.

The new policy still allows spreading out the regions over the cluster quickly, but then grows the desired size fairly quickly in order to avoid too many regions per RS.


---

* [HBASE-10470](https://issues.apache.org/jira/browse/HBASE-10470) | *Critical* | **Import generates huge log file while importing large amounts of data**

Committed to 0.94 and 0.96 as well.


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

* [HBASE-10422](https://issues.apache.org/jira/browse/HBASE-10422) | *Major* | **ZeroCopyLiteralByteString.zeroCopyGetBytes has an unusable prototype and conflicts with AsyncHBase**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-10416](https://issues.apache.org/jira/browse/HBASE-10416) | *Major* | **Improvements to the import flow**

Import with this fix supports 

a) Filtering of the row using the Filter#filterRowKey(byte[] buffer, int offset, int length).

b) Accepts durability parameter (Ex: -Dimport.wal.durability=SKIP\_WAL ) while importing the data into HBase. If the data doesn't need to be replicated to the DR cluster or if the same import job would be run on the DR cluster, consider using SKIP\_WAL durability for performance.


---

* [HBASE-10413](https://issues.apache.org/jira/browse/HBASE-10413) | *Major* | **Tablesplit.getLength returns 0**

TableSplit.getLength() contains correct sizes of region in bytes. It is used by M/R framework for better scheduling.


---

* [HBASE-10336](https://issues.apache.org/jira/browse/HBASE-10336) | *Major* | **Remove deprecated usage of Hadoop HttpServer in InfoServer**

Undo the dependence on Hadoop InfoServer and its servlets by pulling what we need local.  For HBase to work against Hadoop3, we need changes, but Hadoop wants to redo how it does its http servers, so we cut the cord.  See HADOOP-10232  for more.


---

* [HBASE-10326](https://issues.apache.org/jira/browse/HBASE-10326) | *Critical* | **Super user should be able scan all the cells irrespective of the visibility labels**

HBase super user can (any user who is having system visibility label) read back all the cells irrespective of visibility expression applied for cells.


---

* [HBASE-10324](https://issues.apache.org/jira/browse/HBASE-10324) | *Major* | **refactor deferred-log-flush/Durability related interface/code/naming to align with changed semantic of the new write thread model**

In HTableDescriptor, isDeferredLogFlush() and setDeferredLogFlush() are replaced by isAsyncLogFlush() and setAsyncLogFlush(), respectively.


---

* [HBASE-10322](https://issues.apache.org/jira/browse/HBASE-10322) | *Blocker* | **Strip tags from KV while sending back to client on reads**

Added a new config hbase.replication.rpc.codec, using which one can specify the codec to be used by the replication. This config don't have a default value. When it is not specified, the codec specified by hbase.client.rpc.codec config will be used for replication.(For which org.apache.hadoop.hbase.codec.KeyValueCodec is the default value)

Note : When using tags directly or indirectly (ie. Usage of cell level visibility labels or per cell ACL) make sure to configure hbase.replication.rpc.codec with a Codec which supports shipping of tags. We have org.apache.hadoop.hbase.codec.KeyValueCodecWithTags  and org.apache.hadoop.hbase.codec.CellCodecWithTags, which can handle tags.


---

* [HBASE-10321](https://issues.apache.org/jira/browse/HBASE-10321) | *Blocker* | **CellCodec has broken the 96 client to 98 server compatibility**

A new Codec CellCodecV2 is added which can do all the work of CellCodec plus writing/reading Tags. CellCodec will not be able to handle tags. When one wants to use CellCodec and tags need to use CellCodecV2.


---

* [HBASE-10304](https://issues.apache.org/jira/browse/HBASE-10304) | *Blocker* | **Running an hbase job jar: IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString**

My local site run generates the docbook correctly, looks good to me on both branches. I've committed this to 0.98 and trunk.


---

* [HBASE-10263](https://issues.apache.org/jira/browse/HBASE-10263) | *Major* | **make LruBlockCache single/multi/in-memory ratio user-configurable and provide preemptive mode for in-memory type block**

4 new configurations are introduced:
hbase.lru.blockcache.single.percentage / hbase.lru.blockcache.multi.percentage / hbase.lru.blockcache.memory.percentage / hbase.lru.rs.inmemoryforcemode
the first 3 enable user to config different single/multi/memory ratio in block cache; the last one determines if preemptive mode for memory block is enabled


---

* [HBASE-10251](https://issues.apache.org/jira/browse/HBASE-10251) | *Major* | **Restore API Compat for PerformanceEvaluation.generateValue()**

Adds back a deprecated #generateValue(Random) function to restore API compatibility.


---

* [HBASE-10249](https://issues.apache.org/jira/browse/HBASE-10249) | *Major* | **TestReplicationSyncUpTool fails because failover takes too long**

This change also fixes a potential data loss issue when using ZK multi actions because region servers could try to failover themselves (the replication sync up tool acts as a RS too)


---

* [HBASE-10246](https://issues.apache.org/jira/browse/HBASE-10246) | *Trivial* | **Wrap long lines in recently added source files**

Integrated to trunk.

Thanks for the patch, Gustavo.


---

* [HBASE-10225](https://issues.apache.org/jira/browse/HBASE-10225) | *Major* | **Bug in calls to RegionObsever.postScannerFilterRow**

This fix breaks src compatibility. If users try recompiling their CP impl with new HBase jar, they MAY have to change. (If they have overridden this method)
This does not break binary compatibility


---

* [HBASE-10164](https://issues.apache.org/jira/browse/HBASE-10164) | *Major* | **Allow heapsize of different units to be passed as HBASE\_HEAPSIZE**

HBASE\_HEAPSIZE accepts input with units (m, M, g, G).
If there is no unit, an 'm' would be appended to the value - keeping backward compatibility.


---

* [HBASE-10157](https://issues.apache.org/jira/browse/HBASE-10157) | *Major* | **Provide CP hook post log replay**

A CP hook (postLogReplay) is added which will be called once distributed log replay on a region is getting over. Please remember that when distributed log replay is not enabled or there is nothing to be replayed for a region, this hook will not get called for that region.


---

* [HBASE-10156](https://issues.apache.org/jira/browse/HBASE-10156) | *Major* | **FSHLog Refactor (WAS -\> Fix up the HBASE-8755 slowdown when low contention)**

A refactoring that inserts a ringbuffer (lmax disruptor) into the middle of the handler handoff of appends and sync  More throughput for about the same latency when high contention.


---

* [HBASE-10123](https://issues.apache.org/jira/browse/HBASE-10123) | *Critical* | **Change default ports; move them out of linux ephemeral port range**

After 0.98 hbase's default ports have changed to be outside of the ephemeral port range:.

hbase.master.port :  60000 -> 16000
hbase.master.info.port (http): 60010 -> 16010
hbase.regionserver.port : 60020 -> 16020
hbase.regionserver.info.port (http): 60030 -> 16030
hbase.status.multicast.port : 60100 -> 16100


To set the old defaults you can add this to your hbase-site.xml:

 <property >
    <name>hbase.master.port</name>
    <value>60000</value>
  </property>
  <property>
    <name>hbase.master.info.port</name>
    <value>60010</value>
  </property>
  <property>
    <name>hbase.regionserver.port</name>
    <value>60020</value>
  </property>
  <property>
    <name>hbase.regionserver.info.port</name>
    <value>60030</value>
  </property>
  

HBase up to and including 0.98.x chose default tcp ports in the 600xx port range which conflicts with the standard unix/linux ephmeral port range of 49152-65535 or 32768-61000.  This meant if any other processes chose to bind to a os specified port it could bind to the ports that hbase had as default.  If hbase processes were restarted some hbase nodes would fail to start.  The probability of this happening increases as the number of nodes in the cluster increases.


---

* [HBASE-10118](https://issues.apache.org/jira/browse/HBASE-10118) | *Minor* | **Major compact keeps deletes with future timestamps**

hbase.hstore.time.to.purge.deletes has been changed; if it is not set, or set to 0, all delete markers including those  with future timestamp are purged during the later major compaction. Otherwise, a delete marker is kept until the major compaction after marker's timestamp + this setting.


---

* [HBASE-10116](https://issues.apache.org/jira/browse/HBASE-10116) | *Minor* | **SlabCache metrics improvements**

This change introduces DirectMemory reporting to the RegionServer status page. Oracle JDK6 (1.6.0\_31 in my test) doesn't expose "java.nio:type=BufferPool,name=direct", so DirectMemoryUtils#getDirectMemoryUsage (and thus the change to rs-status#memoryStats) reports 0 on that environment, even when DirectMemory is being consumed.


---

* [HBASE-10114](https://issues.apache.org/jira/browse/HBASE-10114) | *Major* | **\_scan\_internal() in table.rb should accept argument that specifies reverse scan**

HBase shell supports Reversed Scan.
User can specify REVERSED => true along with other scan parameters.


---

* [HBASE-10073](https://issues.apache.org/jira/browse/HBASE-10073) | *Major* | **Revert HBASE-9718 (Add a test scope dependency on org.slf4j:slf4j-api to hbase-client)**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-10018](https://issues.apache.org/jira/browse/HBASE-10018) | *Major* | **Remove region location prefetching**

The location prefetch features is removed from the code. The related interfaces are kept for backward compatibility, but do nothing.


---

* [HBASE-10010](https://issues.apache.org/jira/browse/HBASE-10010) | *Major* | **eliminate the put latency spike on the new log file beginning**

Forward port of a 0.89fb patch where we issue sync on WAL file construction to force immediate setup of write pipeline (and do it outside of locks so don't hold up writes during setup).


---

* [HBASE-9866](https://issues.apache.org/jira/browse/HBASE-9866) | *Major* | **Support the mode where REST server authorizes proxy users**

hbase.rest.support.proxyuser when set to true would enable enable proxy-user support in the REST server. Like any other server, e.g., NameNode, which supports proxy user mode, appropriate proxy-user configuration needs to be set as well in the REST server (hadoop.proxyuser.$user.hosts, hadoop.proxyuser.$user.groups). Requests can then be made to the REST server with a 'doAs' in the query string url and if proxy user authorization check passes, the query will be executed as the 'doAs' user.


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

* [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | *Major* | **Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix**

- The additional JAR files specified with HBASE\_CLASSPATH are appended to the system JARs.
- The additional JAR files specified with HBASE\_CLASSPATH\_PREFIX are prefixed to the system JARs.


---

* [HBASE-9501](https://issues.apache.org/jira/browse/HBASE-9501) | *Major* | **Provide throttling for replication**

A new configuration replication.source.per.peer.node.bandwidth is added by this jira. the default is 0 which means no throttling. the unit of this configuration is bytes-per-second.


---

* [HBASE-9426](https://issues.apache.org/jira/browse/HBASE-9426) | *Major* | **Make custom distributed barrier procedure pluggable**

This patch adds two new API calls to the protobuf rpc interface.


---

* [HBASE-9261](https://issues.apache.org/jira/browse/HBASE-9261) | *Major* | **Add cp hooks after {start\|close}RegionOperation**

Added hooks postStartRegionOperation and postCloseRegionOperation after startRegionOperation and closeRegionOperation respectively. Also added postBatchMutateIndispensably hook which will be called after the completion(success or failure) of batch mutation operation.


---

* [HBASE-8803](https://issues.apache.org/jira/browse/HBASE-8803) | *Major* | **region\_mover.rb should move multiple regions at a time**

Multithread the region mover so can run more than one region move at a time.  Specify how many threads on the command line.  Feature will make rolling restart complete the sooner (if with a little more disruption as more regions are in flight at a time).


---

* [HBASE-8755](https://issues.apache.org/jira/browse/HBASE-8755) | *Critical* | **A new write thread model for HLog to improve the overall HBase write throughput**

Redo of thread model writing edits to the WAL; slower when few clients but as concurrency rises, it makes for better throughput.


---

* [HBASE-8751](https://issues.apache.org/jira/browse/HBASE-8751) | *Major* | **Enable peer cluster to choose/change the ColumnFamilies/Tables it really want to replicate from a source cluster**

From the shell's doc:
# set table / table-cf to be replicable for a peer, for a table without
# an explicit column-family list, all replicable column-families (with
# replication\_scope == 1) will be replicated
 hbase> set\_peer\_tableCFs '2', "table1; table2:cf1,cf2; table3:cfA,cfB"


---

* [HBASE-6873](https://issues.apache.org/jira/browse/HBASE-6873) | *Blocker* | **Clean up Coprocessor loading failure handling**

The default setting of the configuration parameter 'hbase.coprocessor.abortonerror' has been changed from "false" to "true". This will cause HBase processes to abort if a coprocessor cannot be loaded, fails to initialize, or throws an unexpected exception. If "false", this instead will allow the server to continue execution in such cases but the system wide state of the coprocessor in question will become inconsistent as it will be properly executing in only a subset of servers, so this is most useful for debugging a new coprocessor deployment on a test cluster. Running a secure production cluster with this setting set to "false" is not advised.


---

* [HBASE-6642](https://issues.apache.org/jira/browse/HBASE-6642) | *Major* | **enable\_all,disable\_all,drop\_all can call "list" command with regex directly.**

from 0.98.1 every hbase shell command that support regex filtering is using the java Pattern class, which does not support glob patterns.
http://docs.oracle.com/javase/7/docs/api/java/util/regex/Pattern.html


---

* [HBASE-6104](https://issues.apache.org/jira/browse/HBASE-6104) | *Major* | **Require EXEC permission to call coprocessor endpoints**

If access control is active (the AccessController coprocessor is installed either as a system coprocessor or on a table as a table coprocessor) and the "hbase.security.exec.permission.checks" configuration setting is "true", then you must now grant all relevant users EXEC privilege if they require the ability to execute coprocessor endpoint calls. EXEC privilege, like any other permission, can be granted globally to a user, or to a user on a per table or per namespace basis. For more information on coprocessor endpoints, see the coprocessor section of the HBase online manual. For more information on granting or revoking permissions using the AccessController, see the security section of the HBase online manual.


---

* [HBASE-5697](https://issues.apache.org/jira/browse/HBASE-5697) | *Major* | **Audit HBase for usage of deprecated hadoop 0.20.x property names.**

All Hadoop 0.20.x and 1.x specific configuration settings have been removed and replaced with the new Hadoop 2.x configuration property names.  If you use any of these in your command line scripts or xml configuration files, you will need to use the new properties. These include: 

hadoop.native.lib -> io.native.lib.available
mapred.job.classpath.archives -> mapreduce.job.classpath.archives
mapred.map.tasks.speculative.execution -> mapreduce.map.speculative
mapred.task.id -> mapreduce.task.attempt.id
mapred.output.compress -> mapreduce.output.fileoutputformat.compress
mapred.output.compression.codec -> mapreduce.output.fileoutputformat.compress.codec
mapred.output.compression.type -> mapreduce.output.fileoutputformat.compress.type
mapred.reduce.tasks.speculative.execution -> mapreduce.reduce.speculative
mapred.input.dir -> mapreduce.input.fileinputformat.inputdir
mapred.job.name -> mapreduce.job.name
mapred.local.dir -> mapreduce.cluster.local.dir
mapred.temp.dir -> mapreduce.cluster.temp.dir 
mapred.system.dir -> mapreduce.jobtracker.system.dir
mapred.working.dir -> mapreduce.job.working.dir
mapred.job.tracker -> mapreduce.jobtracker.address
heartbeat.recheck.interval -> dfs.namenode.heartbeat.recheck-interval
dfs.socket.timeout -> dfs.client.socket-timeout
dfs.block.size -> dfs.blocksize
io.sort.mb -> mapreduce.task.io.sort.mb
mapred.input.dir -> mapreduce.input.fileinputformat.inputdir
mapred.input.dir -> mapreduce.input.fileinputformat.inputdir
min.num.spills.for.combine -> mapreduce.map.combine.minspills
mapred.map.max.attempts -> mapreduce.map.max.attempts
dfs.socket.timeout -> dfs.client.socket-timeout
dfs.datanode.max.xcievers -> dfs.datanode.max.transfer.threads


---

* [HBASE-5349](https://issues.apache.org/jira/browse/HBASE-5349) | *Major* | **Automagically tweak global memstore and block cache sizes based on workload**

Both memstore heap size and on heap block cache sizes can be tuned automatically within the RS life time. The algorithm to be used for this tuning is also pluggable.
This feature adds the below new config
"hbase.regionserver.global.memstore.size.max.range" and "hbase.regionserver.global.memstore.size.min.range" using which one can specify the total heap % within which the memstore size can vary.
"hfile.block.cache.size.max.range" and "hfile.block.cache.size.min.range" using which one can specify the total heap % within which the block cache size can vary.
Using "hbase.regionserver.heapmemory.tuner.class" one can plugin an impl for the tuner algorithm. Pass the FQCN of the tuner impl class which implements org.apache.hadoop.hbase.regionserver.HeapMemoryTuner
The period within which the tuner checks for a possible tune can be adjusted with "hbase.regionserver.heapmemory.tuner.period". This defaults to 300000 (5 mins)
The tuner algorithm receives a TunerContext in which we pass the number of block cache evictions (happened within that time) and the memstore flushes happened (Forced due to global heap pressure and normal flushes as separate items)

Config changes
------------------
Changed the config name "hbase.regionserver.global.memstore.upperLimit" to "hbase.regionserver.global.memstore.size"
This will be the initial memstore size allocated (default value as 40%).
Also changed "hbase.regionserver.global.memstore.lowerLimit" to "hbase.regionserver.global.memstore.size.lower.limit"
There is a semantic change also here. "hbase.regionserver.global.memstore.lowerLimit" represented the total heap % upon which we start force flushes for memstores and defaults to 38% of total heap space.
The new one is the % of memstore max heap size (Represented by hbase.regionserver.global.memstore.size). This defaults to 95% of hbase.regionserver.global.memstore.size value.


---

* [HBASE-4089](https://issues.apache.org/jira/browse/HBASE-4089) | *Major* | **blockCache contents report**

Show more detail on blockcache deployed in new BlockCache section under Tasks and above Regions; shows blockcache type, what for L1 and L2, help pointers, type-specific and L1/L2 stats as well as dumps of bucket/slab cache stats when bucket/slabs enabled.  Keeps block cache age (works in Bucket and LruBlockCache, not for Slab).  Adds JSON page with details on block caches and a facility for listing block cache content by file (useful finding hot files).


---

* [HBASE-2251](https://issues.apache.org/jira/browse/HBASE-2251) | *Major* | **PE defaults to 1k rows - uncommon use case, and easy to hit benchmarks**

Added a --valueZipf to PE.


---

* [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | *Major* | **VM OPTS for shell only**

Set HBASE\_SHELL\_OPTS in the environment or in hbase-env.sh to supply extra VM arguments when launching the HBase command shell.



