
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
# Apache HBase  0.92.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-1987](https://issues.apache.org/jira/browse/HBASE-1987) | *Minor* | **The Put object has no simple read methods for checking what has already been added.**

Adds Put#has methods.


---

* [HBASE-2321](https://issues.apache.org/jira/browse/HBASE-2321) | *Major* | **Support RPC interface changes at runtime**

**WARNING: No release note provided for this change.**


---

* [HBASE-2002](https://issues.apache.org/jira/browse/HBASE-2002) | *Major* | **Coprocessors: Client side support**

Adds new HTable.coprocessorProxy() and HTable.coprocessorExec() calls, along with server-side hooks for registering user RPC protocol handlers.  Together these allow the invocation and execution of custom server-side code configured as coprocessors.

Adds pluggable RPC engines as a first step towards alternate RPC implementations.  This adds a field for the RPC protocol interface on connection setup, so it's not RPC wire compatible with previous versions.


---

* [HBASE-3287](https://issues.apache.org/jira/browse/HBASE-3287) | *Major* | **Add option to cache blocks on hfile write and evict blocks on hfile close**

Introduces two new configuration parameters: hbase.rs.cacheblocksonwrite (default: false) which will pre-cache all blocks of a file into the block cache as it is written, and hbase.rs.evictblocksonclose (default: true) which will evict all blocks of a file from the block cache when a file is closed on a RS.


---

* [HBASE-3374](https://issues.apache.org/jira/browse/HBASE-3374) | *Major* | **Our jruby jar has \*GPL jars in it; fix**

The lads over in jruby land say 1.6RC2 should have the licensing fixup.  Lets get it into TRUNK when ready.  I don't think this a 0.90.x issue.  Moving it out.


---

* [HBASE-3623](https://issues.apache.org/jira/browse/HBASE-3623) | *Major* | **Allow non-XML representable separator characters in the ImportTSV tool**

Allow use of non-XML friendly characters as separators in the ImportTSV tool.


---

* [HBASE-3514](https://issues.apache.org/jira/browse/HBASE-3514) | *Minor* | **Speedup HFile.Writer append**

submitted to trunk!


---

* [HBASE-3606](https://issues.apache.org/jira/browse/HBASE-3606) | *Major* | **Create an package integration project**

Build script for creating rpm/deb packages for HBase.


---

* [HBASE-3440](https://issues.apache.org/jira/browse/HBASE-3440) | *Major* | **Clean out load\_table.rb and make sure all roads lead to completebulkload tool**

**WARNING: No release note provided for this change.**


---

* [HBASE-3474](https://issues.apache.org/jira/browse/HBASE-3474) | *Major* | **HFileOutputFormat to use column family's compression algorithm**

HFileOutputFormat to use column family's compression algorithm instead of a blanket all column family wide


---

* [HBASE-3717](https://issues.apache.org/jira/browse/HBASE-3717) | *Trivial* | **deprecate HTable isTableEnabled() methods in favor of HBaseAdmin methods**

Deprecated HTable#isTableEnabled


---

* [HBASE-3684](https://issues.apache.org/jira/browse/HBASE-3684) | *Minor* | **Support column range filter**

The column range filter is used for selecting only those keys with columns that are
between minColumn to maxColumn. For example, if minColumn is 'an', and
maxColumn is 'be', it will pass keys with columns like 'ana', 'bad', but not keys with columns like 'bed', 'eye'. If minColumn is null, there is no lower bound. If maxColumn is null, there is no upper bound.

The range can be inclusive or exclusive by specifying minColumnInclusive and maxColumnInclusive. 
 or not.


---

* [HBASE-3071](https://issues.apache.org/jira/browse/HBASE-3071) | *Major* | **Graceful decommissioning of a regionserver**

Adds bin/graceful\_stop.sh.  See the reference guide decommission section for documentation: http://hbase.apache.org/book.html#decommission


---

* [HBASE-3677](https://issues.apache.org/jira/browse/HBASE-3677) | *Major* | **Generate a globally unique identifier for a cluster and store in /hbase/hbase.id**

Added a unique cluster ID to ClusterStatus,  This makes the HMasterInterface RPC protocol incompatible with previous versions.


---

* [HBASE-3762](https://issues.apache.org/jira/browse/HBASE-3762) | *Major* | **HTableFactory.releaseHTableInterface() wraps IOException in RuntimeException**

The follow methods have been changed to now throw IOException:

org.apache.hadoop.hbase.client.HTableFactory#releaseHTableInterface(HTableInterface)
org.apache.hadoop.hbase.client.HTableInterfaceFactory#releaseHTableInterface(HTableInterface)
org.apache.hadoop.hbase.client.HTablePool#closeTablePool(byte[])
org.apache.hadoop.hbase.client.HTablePool#closeTablePool(String)
org.apache.hadoop.hbase.client.HTablePool#putTable(HTableInterface)


---

* [HBASE-1364](https://issues.apache.org/jira/browse/HBASE-1364) | *Critical* | **[performance] Distributed splitting of regionserver commit logs**

Adds distributed WAL log splitting in place of single-process master orchestrated splitting.  Feature is ON by default (To disable, set hbase.master.distributed.log.splitting=false).


---

* [HBASE-3609](https://issues.apache.org/jira/browse/HBASE-3609) | *Major* | **Improve the selection of regions to balance; part 2**

Balancer improvements over the previous purely random assignment balancer; distributes evenly from oldest and newest regions and does round robin loading a newly added server.


---

* [HBASE-3781](https://issues.apache.org/jira/browse/HBASE-3781) | *Major* | **hbase shell cannot start "NoMethodError: undefined method `close' for nil:NilClass"**

resolve problem under windows for starting the hbase shell (no close method error)


---

* [HBASE-3817](https://issues.apache.org/jira/browse/HBASE-3817) | *Trivial* | **HBase Shell has an issue accepting FILTER for the 'scan' command.**

Fix the FILTER feature for the HBase Shell's 'scan' command.


---

* [HBASE-1512](https://issues.apache.org/jira/browse/HBASE-1512) | *Major* | **Coprocessors: Support aggregate functions**

A coprocessor to do basic aggregating; max, min, counts, etc.


---

* [HBASE-3629](https://issues.apache.org/jira/browse/HBASE-3629) | *Major* | **Update our thrift to 0.6**

Updated our thrift to 0.6.1. Incompatible change with previous HBase thrift.


---

* [HBASE-1502](https://issues.apache.org/jira/browse/HBASE-1502) | *Blocker* | **Remove need for heartbeats in HBase**

Deprecates what were once considered fundamental classes, HServerInfo and HServerAddress.  The former has been made irrelevant because its constituent info -- server name, server load -- is now passed otherwise. HServerAddress, a class that on deserialization, did a resolve (it created a new InetSocketAddress on deserialization) was just a bad idea from the get-go.  Unfortunately, HSI and HSA were all over our codebase like a cancer.  Hopefully the patient survives their purging.


---

* [HBASE-3880](https://issues.apache.org/jira/browse/HBASE-3880) | *Major* | **Make mapper function in ImportTSV plug-able**

ImportTsv allows using a custom Mapper implementation.


---

* [HBASE-3691](https://issues.apache.org/jira/browse/HBASE-3691) | *Critical* | **Add compressor support for 'snappy', google's compressor**

Added support for Google's Snappy compression codec.


---

* [HBASE-3841](https://issues.apache.org/jira/browse/HBASE-3841) | *Trivial* | **HTable and HTableInterface docs are inconsistent with one another**

Fix inconsistency of documentation between HTable and its Interface


---

* [HBASE-2937](https://issues.apache.org/jira/browse/HBASE-2937) | *Critical* | **Facilitate Timeouts In HBase Client**

Add a "hbase.client.operation.timeout" parameter to specify shorter timeouts around HTable operations, which kicks in after the client has been initialized.


---

* [HBASE-3873](https://issues.apache.org/jira/browse/HBASE-3873) | *Major* | **Mavenize Hadoop Snappy JAR/SOs project dependencies**

Add support to hbase for snappy compression.


---

* [HBASE-2233](https://issues.apache.org/jira/browse/HBASE-2233) | *Critical* | **Support both Hadoop 0.20, 0.21, and 0.22**

HBase will run unadorned on hadoop 0.22 (HBase does not run on hadoop 0.21, not without forward port of recoverLease, HDFS-1948, and change to httpserver, HADOOP-7351)


---

* [HBASE-3789](https://issues.apache.org/jira/browse/HBASE-3789) | *Blocker* | **Cleanup the locking contention in the master**

The master now creates the znode when closing a region, which is an incompatible change.
SplitTransaction now waits on the master to delete the znode that it created before it can finish.
The master doesn't keep track of znodes being deleted and created anymore, it was getting out of sync too easily.


---

* [HBASE-4000](https://issues.apache.org/jira/browse/HBASE-4000) | *Major* | **You can't specify split points when you create a table in the shell**

The shell's create command now supports:
create 't1', 'f1', {SPLITS =\> ['01', '02', '03', '04']}
create 't1', 'f1', {SPLITS\_FILE =\> 'splits.txt'}


---

* [HBASE-3534](https://issues.apache.org/jira/browse/HBASE-3534) | *Major* | **Action should not store or serialize regionName**

regionName is no longer carried by Action class.


---

* [HBASE-4016](https://issues.apache.org/jira/browse/HBASE-4016) | *Major* | **HRegion.incrementColumnValue() doesn't have a consistent behavior when the field that we are incrementing is less than 8 bytes long**

Throws IOException if you attempt to increment a column that isn't exactly 8 bytes long. Includes test for this.


---

* [HBASE-4079](https://issues.apache.org/jira/browse/HBASE-4079) | *Minor* | **HTableUtil - helper class for loading data**

HTableUtil provides the following helper methods:
{code}
public static void bucketRsPut(HTable htable, List\<Put\> puts) throws IOException
{code}
It processes a List of Puts and writes them to an HTable instance in RegionServer buckets via the htable.put method.
{code}
public static void bucketRsBatch(HTable htable, List\<Row\> rows) throws IOException
{code}
Processes a List of Rows (Put, Delete) and writes them to an HTable instance in RegionServer buckets via the htable.batch method.


---

* [HBASE-4017](https://issues.apache.org/jira/browse/HBASE-4017) | *Major* | **BlockCache interface should be truly modular**

Adds metrics fields to BlockCache interface, modularizes BlockCache. Gets rid of (LruBlockCache) casts.


---

* [HBASE-451](https://issues.apache.org/jira/browse/HBASE-451) | *Critical* | **Remove HTableDescriptor from HRegionInfo**

Removes HTableDescriptor from HRegionInfo.  Runs a migration of catalog tables on startup.


---

* [HBASE-3465](https://issues.apache.org/jira/browse/HBASE-3465) | *Major* | **Hbase should use a HADOOP\_HOME environment variable if available.**

If HADOOP\_HOME is defined, we'll use this hadoop over whats in HBASE\_HOME/lib


---

* [HBASE-3065](https://issues.apache.org/jira/browse/HBASE-3065) | *Blocker* | **Retry all 'retryable' zk operations; e.g. connection loss**

Adds recovery of 'recoverable' zk operations.


---

* [HBASE-3857](https://issues.apache.org/jira/browse/HBASE-3857) | *Major* | **Change the HFile Format**

HFile format version 2, multi-level block indexes, and compound Bloom filters.


---

* [HBASE-4179](https://issues.apache.org/jira/browse/HBASE-4179) | *Major* | **Failed to run RowCounter on top of Hadoop branch-0.22**

**WARNING: No release note provided for this change.**


---

* [HBASE-4181](https://issues.apache.org/jira/browse/HBASE-4181) | *Critical* | **HConnectionManager can't find cached HRegionInterface which makes client very slow**

Use the host and port string as the key of the Map\<String, HRegionInterface\> servers to avoid cache misses caused by different format of String returned by InetSocketAddress .


---

* [HBASE-4081](https://issues.apache.org/jira/browse/HBASE-4081) | *Major* | **Issues with HRegion.compactStores methods**

The fix has been checked in.


---

* [HBASE-4176](https://issues.apache.org/jira/browse/HBASE-4176) | *Minor* | **Exposing HBase Filters to the Thrift API**

Means of specifying filters in thrift (and in shell) by passing a string specification


---

* [HBASE-4227](https://issues.apache.org/jira/browse/HBASE-4227) | *Minor* | **Modify the webUI so that default values of column families are not shown**

This patch addresses the following: 
1. On the master web UI, the table description lists out only column families with non-default values. 
2. A details link through which the complete table description is available.


---

* [HBASE-4197](https://issues.apache.org/jira/browse/HBASE-4197) | *Major* | **RegionServer expects all scanner to be subclasses of HRegion.RegionScanner**

RegionScanner is now an interface which extends InternalScanner.


---

* [HBASE-4233](https://issues.apache.org/jira/browse/HBASE-4233) | *Blocker* | **Update protobuf dependency to 2.4.0a**

The protobuf dependency has been updated to 2.4.0a. If your application uses protocol buffers and includes HBase's dependencies on the classpath, you may have to resolve this dependency change.


---

* [HBASE-4071](https://issues.apache.org/jira/browse/HBASE-4071) | *Major* | **Data GC: Remove all versions \> TTL EXCEPT the last written version**

Even if older than TTL, keep N versions; e.g. if N is 1, we'll purge all versions but the most recent written even if this one version is older than TTL.


---

* [HBASE-4027](https://issues.apache.org/jira/browse/HBASE-4027) | *Minor* | **Enable direct byte buffers LruBlockCache**

Setting hbase.offheapcachesize in hbase-site.xml and -XX:MaxDirectMemorySize in hbase-env.sh to enable this feature. The file already has a line you can uncomment and you need to set the size of the direct memory (your total memory - size allocated to memstores - size allocated to the normal block cache - and some head room for the other functionalities).


---

* [HBASE-4117](https://issues.apache.org/jira/browse/HBASE-4117) | *Minor* | **Slow Query Log**

Exposes JSON-parseable fingerprint and details for queries that take longer than a configurable threshold time. The exposure is currently to the main regionserver log, along with a (queryTooSlow) tag which allows it to be grepped out and easily aggregated and/or monitored in adminstrator scripts.

The patch also provides a standard way to extract fingerprint and detail information of interest by requiring each "DatabaseCommand" to provide a fingerprint map and a details map, which will be a superset of the fingerprint.


---

* [HBASE-3900](https://issues.apache.org/jira/browse/HBASE-3900) | *Major* | **Expose progress of a major compaction in UI and/or in shell**

Expose counts of KVs compacted to UI.


---

* [HBASE-4292](https://issues.apache.org/jira/browse/HBASE-4292) | *Major* | **Add a debugging dump servlet to the master and regionserver**

The master and region server web UIs expose a new servlet at '/dump' which contains a debug dump containing useful information about their state.


---

* [HBASE-4299](https://issues.apache.org/jira/browse/HBASE-4299) | *Major* | **Upgrade to Avro 1.5.3 & use Avro Maven plugin to generate Avro classes**

Upgraded the Avro dependency to 1.5.3. Those using both Avro and HBase may want to double check their dependencies are aligned.


---

* [HBASE-4327](https://issues.apache.org/jira/browse/HBASE-4327) | *Major* | **Compile HBase against hadoop 0.22**

To compile against a version of hadoop other than 0.20, set hadoop.profile. When -Dhadoop.profile=22 is specified, HBase will build against hadoop 0.22.  When -Dhadoop.profile=23 is specified, HBase will build against hadoop 0.23. This is a change in behavior, previously used to be -Dhadoop23. When nothing is specified, then HBase will build against 0.20


---

* [HBASE-4260](https://issues.apache.org/jira/browse/HBASE-4260) | *Major* | **Expose a command to manually trigger an HLog roll**

Add an hlog\_roll \<SERVERNAME\> to shell.  Rolls wal logs on named server.


---

* [HBASE-4195](https://issues.apache.org/jira/browse/HBASE-4195) | *Critical* | **Possible inconsistency in a memstore read after a reseek, possible performance improvement**

This fixes the regression (identified by a random failure of test TestHRegion#testWritesWhileGetting) introduced by HBASE-3855. In production, the failure could occur purely randomly depending on the size of the MemStore list, or during a parallel execution of a scanner#next and a memstore flush. The fix improves the scanner reseek performance as well. The parameter "hbase.hregion.memstore.reseek.maxkeys" is not used anymore.


---

* [HBASE-4369](https://issues.apache.org/jira/browse/HBASE-4369) | *Critical* | **Deprecate HConnection#getZookeeperWatcher in prep for HBASE-1762**

**WARNING: No release note provided for this change.**


---

* [HBASE-4419](https://issues.apache.org/jira/browse/HBASE-4419) | *Trivial* | **Resolve build warning messages**

small fixes in pom.xml to resolve some maven warnings


---

* [HBASE-4247](https://issues.apache.org/jira/browse/HBASE-4247) | *Minor* | **Add isAborted method to the Abortable interface**

Add isAbortable to Abortable Interface.


---

* [HBASE-3130](https://issues.apache.org/jira/browse/HBASE-3130) | *Major* | **[replication] ReplicationSource can't recover from session expired on remote clusters**

ReplicationPeer is now the abortable for the sink's ZK and can be told to reconnect if the session expires.


---

* [HBASE-4499](https://issues.apache.org/jira/browse/HBASE-4499) | *Minor* | **[replication] Source shouldn't update ZK if it didn't progress**

ReplicationSource keeps track of its previous location and won't update ZK if it doesn't need to.


---

* [HBASE-2794](https://issues.apache.org/jira/browse/HBASE-2794) | *Major* | **Utilize ROWCOL bloom filter if multiple columns within same family are requested in a Get**

Resolving (the patch has been committed).


---

* [HBASE-4422](https://issues.apache.org/jira/browse/HBASE-4422) | *Major* | **Move block cache parameters and references into single CacheConf class**

Relocates all cache configuration options and constants into a new CacheConfig class.  Modifies lots of constructors from Store/StoreFile down to HFile.


---

* [HBASE-3417](https://issues.apache.org/jira/browse/HBASE-3417) | *Critical* | **CacheOnWrite is using the temporary output path for block names, need to use a more consistent block naming scheme**

StoreFile naming changes from random ascii longs to [0-9a-f] uuids.  The same name is used in the tmp and perm location.  This name is what gets used for the block name in the cache.

This change is a backwards compatible slow migration, all new files will be named with the new scheme, old files will still be readable.  However, once you have new files created in the new scheme, previous installations will fail.


---

* [HBASE-3446](https://issues.apache.org/jira/browse/HBASE-3446) | *Blocker* | **ProcessServerShutdown fails if META moves, orphaning lots of regions**

Makes catalog/\* classes retry: e.g. MetaEditor, MetaReader and CatalogTracker.  Previously they would try once and unless successful, fail.  Retrying is courtesy of HTable instances.


---

* [HBASE-4589](https://issues.apache.org/jira/browse/HBASE-4589) | *Critical* | **CacheOnWrite broken in some cases because it can conflict with evictOnClose**

EvictOnClose can be turned on/off on a per-file-close basis


---

* [HBASE-4579](https://issues.apache.org/jira/browse/HBASE-4579) | *Critical* | **CST.requestCompaction semantics changed, logs are now spammed when too many store files**

MemStoreFlusher will now request only 1 compaction when waiting because there are too many store files, instead of one per check


---

* [HBASE-3581](https://issues.apache.org/jira/browse/HBASE-3581) | *Critical* | **hbase rpc should send size of response**

Adds a length to the rpc reponse


---

* [HBASE-4437](https://issues.apache.org/jira/browse/HBASE-4437) | *Major* | **Update hadoop in 0.92 (0.20.205?)**

We ship with hadoop 0.20.205.0 now.  Make sure you have dfs.support.append enabled everywhere on your cluster.


---

* [HBASE-4374](https://issues.apache.org/jira/browse/HBASE-4374) | *Blocker* | **Up default regions size from 256M to 1G**

Upped default split size to 1G from 256M and the flush size from 64M to 128M.


---

* [HBASE-4648](https://issues.apache.org/jira/browse/HBASE-4648) | *Major* | **Bytes.toBigDecimal() doesn't use offset**

**WARNING: No release note provided for this change.**


---

* [HBASE-4552](https://issues.apache.org/jira/browse/HBASE-4552) | *Major* | **multi-CF bulk load is not atomic across column families**

HRegion.bulkLoadHFile() has been removed in 0.92 and TRUNK.
HRegion.bulkLoadHFiles() is introduced for multi-family bulk load.


---

* [HBASE-3939](https://issues.apache.org/jira/browse/HBASE-3939) | *Critical* | **Some crossports of Hadoop IPC fixes**

VersionedProtocol and ProtocolSignature are pulled from hadoop into HBase.


---

* [HBASE-4740](https://issues.apache.org/jira/browse/HBASE-4740) | *Blocker* | **[bulk load]  the HBASE-4552 API can't tell if errors on region server are recoverable**

Default value for hbase.bulkload.retries.number is 0, meaning bulk load would never give up.


---

* [HBASE-3433](https://issues.apache.org/jira/browse/HBASE-3433) | *Critical* | **Remove the KV copy of every KV in Scan; introduced by HBASE-3232**

**WARNING: No release note provided for this change.**


---

* [HBASE-3025](https://issues.apache.org/jira/browse/HBASE-3025) | *Critical* | **Coprocessor based simple access control**

This is part of an overall implementation of security features for HBase.  This issue adds a new AccessController coprocessor which, when enabled, performs authorization checks on all cluster operations, using stored access control lists.


---

* [HBASE-2418](https://issues.apache.org/jira/browse/HBASE-2418) | *Critical* | **add support for ZooKeeper authentication**

This adds support for protecting the state of HBase znodes on a multi-tenant ZooKeeper cluster. This support requires ZK 3.4.0. It is a companion patch to HBASE-2742 (secure RPC), and HBASE-3025 (Coprocessor based access control).

SASL authentication of ZooKeeper clients with the quorum is handled in the ZK client independently of HBase concerns. To enable strong ZK authentication, one must create a suitable JaaS configuration, for example:

  Server {
    com.sun.security.auth.module.Krb5LoginModule required
    useKeyTab=true
    keyTab="/etc/hbase/conf/hbase.keytab"
    storeKey=true
    useTicketCache=false
    principal="zookeeper/$HOSTNAME";
  };
  Client {
    com.sun.security.auth.module.Krb5LoginModule required
    useKeyTab=true
    useTicketCache=false
    keyTab="/etc/hbase/conf/hbase.keytab"
    principal="hbase/$HOSTNAME";
  };

and then configure both the client and server processes to use it, for example in hbase-site.xml:

  HBASE\_OPTS="${HBASE\_OPTS} -Djava.security.auth.login.config=/etc/hbase/conf/jaas.conf"
  HBASE\_OPTS="${HBASE\_OPTS} -Dzookeeper.kerberos.removeHostFromPrincipal=true"
  HBASE\_OPTS="${HBASE\_OPTS} -Dzookeeper.kerberos.removeRealmFromPrincipal=true"

HBase will then secure all znodes but for a few world-readable read-only ones needed for clients to look up region locations. All internal cluster operations will be protected from unauthenticated ZK clients, or clients not authenticated to the HBase principal. Presumably the only ZK clients authenticated to the HBase principal will be those embedded in the master and regionservers.

We will pull in a Hadoop artifact patched with HADOOP-7070 if building under the security profile (-P security). 0.20.205 does not yet include HADOOP-7070. Without it, the JAAS configuration required for secure operation of the ZooKeeper client will be ignored.


---

* [HBASE-4960](https://issues.apache.org/jira/browse/HBASE-4960) | *Major* | **Document mutual authentication between HBase and Zookeeper using SASL**

adds content to src/docbkx/configuration.xml regarding Zookeeper/HBase mutual authentication, including Kerberos-related content.


---

* [HBASE-5006](https://issues.apache.org/jira/browse/HBASE-5006) | *Major* | **Move hbase 0.92RC1 on to hadoop 1.0.0RC2**

Packages hadoop 1.0.0rc2.


---

* [HBASE-5017](https://issues.apache.org/jira/browse/HBASE-5017) | *Blocker* | **Bump the default hfile.block.cache.size because of HFileV2**

The default percentage of heap space allocated to the block cache has been increased from 20% to 25%. However, index caching is now accounted for in the block cache, so total heap usage should be minimally affected.


---

* [HBASE-5055](https://issues.apache.org/jira/browse/HBASE-5055) | *Blocker* | **Build against hadoop 0.22 broken**

Changes pom so we build against 0.22.0 release.


---

* [HBASE-5087](https://issues.apache.org/jira/browse/HBASE-5087) | *Major* | **Up the 0.92RC zk to 3.4.1RC0**

**WARNING: No release note provided for this change.**


---

* [HBASE-5204](https://issues.apache.org/jira/browse/HBASE-5204) | *Blocker* | **Backward compatibility fixes for 0.92**

**WARNING: No release note provided for this change.**


---

* [HBASE-4187](https://issues.apache.org/jira/browse/HBASE-4187) | *Major* | **Add Thrift Column Start/Stop Read/Scan Capability**

Filters now support an offset,limit support to limit the reads to a definable col/chunk size.


---

* [HBASE-4298](https://issues.apache.org/jira/browse/HBASE-4298) | *Critical* | **Support to drain RS nodes through ZK**

Just as HDFS currently has a way to exclude certain datanodes and prevent them from getting new blocks, this feature adds marking regionservers so they will not get new regions if you add a regionserver to the draining nodes directory in zk.  These draining znodes look exactly the same as the corresponding nodes in /rs, except they live under /draining.  This patch adds watching of /draining and the blocking of region assignment to draining nodes; it does not provide means of writing the draining znode (use zkcli).



