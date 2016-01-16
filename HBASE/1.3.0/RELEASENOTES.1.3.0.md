
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
# Apache HBase  1.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-15073](https://issues.apache.org/jira/browse/HBASE-15073) | *Major* | **Finer grained control over normalization actions for RegionNormalizer**

The NORMALIZATION\_ENABLED\_KEY attribute for table has been renamed NORMALIZATION\_MODE whose value represents the types of action allowed for normalization.
To enable normalization for the table, you can specify 'M' for merging, 'S' for splitting or "MS" for splitting / merging.
Leave empty to disable normalization.


---

* [HBASE-15018](https://issues.apache.org/jira/browse/HBASE-15018) | *Major* | **Inconsistent way of handling TimeoutException in the rpc client implementations**

When using the new AsyncRpcClient introduced in HBase 1.1.0 (HBASE-12684), time outs now result in an IOException wrapped around a CallTimeoutException instead of a bare CallTimeoutException. This change makes the AsyncRpcClient behave the same as the default HBase 1.y RPC client implementation.


---

* [HBASE-14984](https://issues.apache.org/jira/browse/HBASE-14984) | *Major* | **Allow memcached block cache to set optimze to false**

Setting hbase.cache.memcached.spy.optimze to true will allow the spy memcached client to try and optimize for the number of requests outstanding. This can increase throughput but can also increase variance for request times.

Setting it to true will help when round trip times are longer.
Setting it to false ( the default ) will help ensure a more even distribution of response times.


---

* [HBASE-14978](https://issues.apache.org/jira/browse/HBASE-14978) | *Blocker* | **Don't allow Multi to retain too many blocks**

Limiting the amount of memory resident for any one request allows the server to handle concurrent requests smoothly. To this end we added the ability to limit the size of responses to a multi request. That worked well however it correctly represent the amount of memory resident. So this issue adds on a an approximation of the number of blocks held for a request.

All clients before 1.2.0 will not get this multi request chunking based upon blocks kept. All clients 1.2.0 and after will.


---

* [HBASE-14976](https://issues.apache.org/jira/browse/HBASE-14976) | *Minor* | **Add RPC call queues to the web ui**

Adds column displaying current aggregated call queues size in region server queues tab UI.


---

* [HBASE-14960](https://issues.apache.org/jira/browse/HBASE-14960) | *Major* | **Fallback to using default RPCControllerFactory if class cannot be loaded**

If the configured RPC controller factory (via hbase.rpc.controllerfactory.class) cannot be found in the classpath or loaded, we fall back to using the default RPC controller factory in HBase.


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

* [HBASE-14946](https://issues.apache.org/jira/browse/HBASE-14946) | *Critical* | **Don't allow multi's to over run the max result size.**

The HBase region server will now send a chunk of get responses to a client if the total response size is too large. This will only be done for clients 1.2.0 and beyond. Older clients by default will have the old behavior.

This patch is for the case where the basic flow is like this:

I want to get a single column from lots of rows. So I create a list of gets. Then I send them to table.get(List\<Get\>). If the regions for that table are spread out then those requests get chunked out to all the region servers. No one regionserver gets too many. However if one region server contains lots of regions for that table then a multi action can contain lots of gets. No single get is too onerous. However the regionserver won't return until every get is complete. So if there are thousands of gets that are sent in one multi then the regionserver can retain lots of data in one thread.


---

* [HBASE-14926](https://issues.apache.org/jira/browse/HBASE-14926) | *Major* | **Hung ThriftServer; no timeout on read from client; if client crashes, worker thread gets stuck reading**

Adds a timeout to server read from clients. Adds new configs hbase.thrift.server.socket.read.timeout for setting read timeout on server socket in milliseconds. Default is 60000;


---

* [HBASE-14822](https://issues.apache.org/jira/browse/HBASE-14822) | *Major* | **Renewing leases of scanners doesn't work**

And 1.1, 1.0, and 0.98.


---

* [HBASE-14821](https://issues.apache.org/jira/browse/HBASE-14821) | *Major* | **CopyTable should allow overriding more config properties for peer cluster**

Configuration properties for org.apache.hadoop.hbase.mapreduce.TableOutputFormat can now be overridden by prefixing the property keys with "hbase.mapred.output.".  When the configuration is applied to TableOutputFormat, these entries will be rewritten with the prefix removed -- ie. "hbase.mapred.output.hbase.security.authentication" becomes "hbase.security.authentication".  This can be useful when directing output to a peer cluster with different security configuration, for example.


---

* [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | *Critical* | **Commons-collections object deserialization remote command execution vulnerability**

This issue resolves a potential security vulnerability. For all versions we update our commons-collections dependency to the release that fixes the reported vulnerability in that library. In 0.98 we additionally disable by default a feature of code carried from 0.94 for backwards compatibility that is not needed.


---

* [HBASE-14793](https://issues.apache.org/jira/browse/HBASE-14793) | *Major* | **Allow limiting size of block into L1 block cache.**

Very large blocks can fragment the heap and cause bad issues for the garbage collector, especially the G1GC. Now there is a maximum size that a block can be and still stick in the LruBlockCache. That size defaults to 16mb but can be controlled by changing "hbase.lru.max.block.size"


---

* [HBASE-14745](https://issues.apache.org/jira/browse/HBASE-14745) | *Blocker* | **Shade the last few dependencies in hbase-shaded-client**

Previously some dependencies in hbase-shaded-client were still leaking into the un-shaded namespace. This should now be fixed.

Additionally the rat checking on generated intermediate files from shading should be skipped.


---

* [HBASE-14655](https://issues.apache.org/jira/browse/HBASE-14655) | *Blocker* | **Narrow the scope of doAs() calls to region observer notifications for compaction**

Region observer notifications w.r.t. compaction request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14631](https://issues.apache.org/jira/browse/HBASE-14631) | *Blocker* | **Region merge request should be audited with request user through proper scope of doAs() calls to region observer notifications**

Region observer notifications w.r.t. merge request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14605](https://issues.apache.org/jira/browse/HBASE-14605) | *Blocker* | **Split fails due to 'No valid credentials' error when SecureBulkLoadEndpoint#start tries to access hdfs**

When split is requested by non-super user, split related notifications for Coprocessor are executed using the login of the request user.
Previously the notifications were carried out as super user.


---

* [HBASE-14544](https://issues.apache.org/jira/browse/HBASE-14544) | *Major* | **Allow HConnectionImpl to not refresh the dns on errors**

By setting hbase.resolve.hostnames.on.failure to false you can reduce the number of dns name resolutions that a client will do. However if machines leave and come back with different ip's the changes will not be noticed by the clients. So only set hbase.resolve.hostnames.on.failure to false if your cluster dns is not changing while clients are connected.


---

* [HBASE-14529](https://issues.apache.org/jira/browse/HBASE-14529) | *Major* | **Respond to SIGHUP to reload config**

HBase daemons can now be signaled to reload their config by sending SIGHUP to the java process. Not all config parameters can be reloaded.

In order for this new feature to work the hbase-daemon.sh script was changed to use disown rather than nohup. Functionally this shouldn't change anything but the processes will have a different parent when being run from a connected login shell.


---

* [HBASE-14517](https://issues.apache.org/jira/browse/HBASE-14517) | *Minor* | **Show regionserver's version in master status page**

Adds server version to the listing of regionservers on the master home page


---

* [HBASE-14502](https://issues.apache.org/jira/browse/HBASE-14502) | *Major* | **Purge use of jmock and remove as dependency**

HBASE-14502 Purge use of jmock and remove as dependency


---

* [HBASE-14475](https://issues.apache.org/jira/browse/HBASE-14475) | *Major* | **Region split requests are always audited with "hbase" user rather than request user**

Region observer notifications w.r.t. split request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14468](https://issues.apache.org/jira/browse/HBASE-14468) | *Major* | **Compaction improvements: FIFO compaction policy**

FIFO compaction policy selects only files which have all cells expired. The column family MUST have non-default TTL. 
Essentially, FIFO compactor does only one job: collects expired store files. 

Because we do not do any real compaction, we do not use CPU and IO (disk and network), we do not evict hot data from a block cache. The result: improved throughput and latency both write and read.
See: https://github.com/facebook/rocksdb/wiki/FIFO-compaction-style


---

* [HBASE-14465](https://issues.apache.org/jira/browse/HBASE-14465) | *Major* | **Backport 'Allow rowlock to be reader/write' to branch-1**

Locks on row are now reader/writer rather than exclusive. 

Moves sequenceid out of HRegion and into MVCC class; MVCC is now in charge. A WAL append is still stamped in same way (we pass MVCC context in a few places where we previously we did not). 

MVCC methods cleaned up. Make a bit more sense now. Less of them. 

Simplifies our update of MemStore/WAL. Now we update memstore AFTER we add to WAL (but before we sync). This fixes possible dataloss when two edits came in with same coordinates; we could order the edits in memstore differently to how they arrived in the WAL. 

Marked as an incompatible change because it breaks Distributed Log Replay, a feature we'd determined already was unreliable and to be removed (See http://search-hadoop.com/m/YGbbhTJpoal8GD1).


---

* [HBASE-14433](https://issues.apache.org/jira/browse/HBASE-14433) | *Major* | **Set down the client executor core thread count from 256 in tests**

Tests run with client executors that have core thread count of 4 and a keepalive of 3 seconds. They used to default to 256 core threads and 60 seconds  for keepalive.


---

* [HBASE-14400](https://issues.apache.org/jira/browse/HBASE-14400) | *Critical* | **Fix HBase RPC protection documentation**

To use rpc protection in HBase, set the value of 'hbase.rpc.protection' to:
'authentication' : simple authentication using kerberos
'integrity' : authentication and integrity
'privacy' : authentication and confidentiality

Earlier, HBase reference guide erroneously mentioned in some places to set the value to 'auth-conf'. This patch fixes the guide and adds temporary support for erroneously recommended values.


---

* [HBASE-14387](https://issues.apache.org/jira/browse/HBASE-14387) | *Major* | **Compaction improvements: Maximum off-peak compaction size**

New configuration option: hbase.hstore.compaction.max.size.offpeak - maximum selection size eligible for minor compaction during off peak hours.
hbase.hstore.compaction.max.size - this is default maximum if no off-peak hours are defined or if no maximum off-peak maximum size is defined.


---

* [HBASE-14367](https://issues.apache.org/jira/browse/HBASE-14367) | *Major* | **Add normalization support to shell**

This patch adds shell support for region normalizer.

3 commands have been added to hbase shell 'tools' command group:

 - 'normalizer\_enabled' checks whether region normalizer is turned on
 - 'normalizer\_switch' allows user to turn normalizer on and off
 - 'normalize' runs region normalizer if it's turned on.

Also 'ater' command has been extended to allow user to enable/disable region normalization per table (disabled by default). Use it as 

alter 'testtable', {NORMALIZATION\_ENABLED =\> 'true'}


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

* [HBASE-14313](https://issues.apache.org/jira/browse/HBASE-14313) | *Critical* | **After a Connection sees ConnectionClosingException it never recovers**

HConnection could get stuck when talking to a host that went down and then returned. This has been fixed by closing the connection in all paths.


---

* [HBASE-14309](https://issues.apache.org/jira/browse/HBASE-14309) | *Major* | **Allow load balancer to operate when there is region in transition by adding force flag**

This issue adds boolean parameter, force, to 'balancer' command so that admin can force region balancing even when there is region (other than hbase:meta) in transition - assuming RIT being transient.
If hbase:meta is in transition, balancer command returns false.

WARNING: For experts only. Forcing a balance may do more damage than repair when assignment is confused
Note: enclose the force parameter in double quotes


---

* [HBASE-14306](https://issues.apache.org/jira/browse/HBASE-14306) | *Major* | **Refine RegionGroupingProvider: fix issues and make it more scalable**

In HBASE-14306 we've changed default strategy of RegionGroupingProvider from "identify" to "bounded", so it's required to explicitly set "hbase.wal.regiongrouping.strategy" to "identify" if user still wants to use one WAL per region

Please also notice that in the new framework there will be one WAL per group, and the region-group mapping is decided by RegionGroupingStrategy. Accordingly, we've removed BoundedRegionGroupingProvider and added BoundedRegionGroupingStrategy as a replacement. If you already have a customized class for hbase.wal.regiongrouping.strategy, please check the new logic and make updates if necessary.


---

* [HBASE-14280](https://issues.apache.org/jira/browse/HBASE-14280) | *Minor* | **Bulk Upload from HA cluster to remote HA hbase cluster fails**

Patch will effectively work with Hadoop version 2.6 or greater with a launch of "internal.nameservices".
There will be no change in versions older than 2.6.


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

* [HBASE-14257](https://issues.apache.org/jira/browse/HBASE-14257) | *Major* | **Periodic flusher only handles hbase:meta, not other system tables**

Memstore periodic flusher used to flush META table every 5 minutes but not any other system tables. This jira extends it to flush all system tables within this time period.


---

* [HBASE-14230](https://issues.apache.org/jira/browse/HBASE-14230) | *Minor* | **replace reflection in FSHlog with HdfsDataOutputStream#getCurrentBlockReplication()**

Remove calling getNumCurrentReplicas on HdfsDataOutputStream via reflection. getNumCurrentReplicas showed up in hadoop 1+ and hadoop 0.2x. In hadoop-2 it was deprecated.


---

* [HBASE-14224](https://issues.apache.org/jira/browse/HBASE-14224) | *Critical* | **Fix coprocessor handling of duplicate classes**

Prevent Coprocessors being doubly-loaded; a particular coprocessor can only be loaded once.


---

* [HBASE-14205](https://issues.apache.org/jira/browse/HBASE-14205) | *Critical* | **RegionCoprocessorHost System.nanoTime() performance bottleneck**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-14148](https://issues.apache.org/jira/browse/HBASE-14148) | *Major* | **Web UI Framable Page**

Security fix: Adds protection from clickjacking using X-Frame-Options header.
This will prevent use of HBase UI in frames. To disable this feature, set the configuration 'hbase.http.filter.xframeoptions.mode' to 'ALLOW' (default is 'DENY').


---

* [HBASE-14054](https://issues.apache.org/jira/browse/HBASE-14054) | *Major* | **Acknowledged writes may get lost if regionserver clock is set backwards**

In {{checkAndPut}} write path use max(max timestamp for the row, System.currentTimeMillis()) in the, instead of blindly taking System.currentTimeMillis() to ensure that checkAndPut() cannot do writes which is already eclipsed. This is similar to what has been done in HBASE-12449 for increment and append.


---

* [HBASE-14045](https://issues.apache.org/jira/browse/HBASE-14045) | *Major* | **Bumping thrift version to 0.9.2.**

This changes upgrades thrift dependency of HBase to 0.9.2. Though this doesn't break any HBase compatibility promises, it might impact any downstream projects that share thrift dependency with HBase.


---

* [HBASE-13985](https://issues.apache.org/jira/browse/HBASE-13985) | *Minor* | **Add configuration to skip validating HFile format when bulk loading**

A new config, hbase.loadincremental.validate.hfile , is introduced - default to true
When set to false, checking hfile format is skipped during bulkloading.


---

* [HBASE-13966](https://issues.apache.org/jira/browse/HBASE-13966) | *Minor* | **Limit column width in table.jsp**

Wraps region, start key, end key columns if too long.


---

* [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | *Critical* | **avoid leaking jdk.tools**

HBase now ensures that the JDK tools jar used during the build process is not exposed to downstream clients as a transitive dependency of hbase-annotations.

If you need to have the JDK tools jar in your classpath, you should add a system dependency on it. See the hbase-annotations pom for an example of the necessary pom additions.


---

* [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | *Critical* | **Region splitting uses a single thread in most common cases**

The performance of region splitting has been improved by using a thread pool to split the store files concurrently. Prior to this change, the store files were always split sequentially in a single thread, so a region with multiple store files ended up taking several seconds. The thread pool is sized dynamically with the aim of getting maximum concurrency, without exceeding the number of cores available for HBase Java process. A lower limit for the thread pool can be explicitly set using the property hbase.regionserver.region.split.threads.max.


---

* [HBASE-13906](https://issues.apache.org/jira/browse/HBASE-13906) | *Major* | **Improve handling of NeedUnmanagedConnectionException**

With this patch NeedUnmanagedConnectionException is effectively treated as non-retryable exception, but for backwards compatibility purposes we don't throw it directly, but instead wrap into DoNotRetryIOException when we return error to the caller.


---

* [HBASE-13881](https://issues.apache.org/jira/browse/HBASE-13881) | *Major* | **Bug in HTable#incrementColumnValue implementation**

HBASE-13881 Correct HTable incrementColumnValue implementation


---

* [HBASE-13865](https://issues.apache.org/jira/browse/HBASE-13865) | *Trivial* | **Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 (part 2)**

Increase default hbase.hregion.memstore.block.multiplier from 2 to 4 in the code to match the default value in the config files.


---

* [HBASE-13819](https://issues.apache.org/jira/browse/HBASE-13819) | *Major* | **Make RPC layer CellBlock buffer a DirectByteBuffer**

For master branch(2.0 version), the BoundedByteBufferPool always create Direct (off heap) ByteBuffers and return that.
For branch-1(1.3 version), byte default the buffers returned will be off heap. This can be changed to return on heap ByteBuffers by configuring 'hbase.ipc.server.reservoir.direct.buffer' to false.


---

* [HBASE-13706](https://issues.apache.org/jira/browse/HBASE-13706) | *Minor* | **CoprocessorClassLoader should not exempt Hive classes**

Starting from HBase 2.0, CoprocessorClassLoader will not exempt hadoop classes or zookeeper classes.  This means that if the custom coprocessor jar contains hadoop or zookeeper packages and classes, they will be loaded by the CoprocessorClassLoader.  Only hbase packages and classes  are exempted from the CoprocessorClassLoader. They (and their dependencies) are loaded by the parent server class loader.


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

* [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | *Major* | **[ergonomics] add region size balancing as a feature of master**

This patch adds optional ability for HMaster to normalize regions in size (disabled by default, change hbase.normalizer.enabled property to true to turn it on). If enabled, HMaster periodically (every 30 minutes by default) monitors tables for which normalization is enabled in table configuration and performs splits/merges as seems appropriate. Users may implement their own normalization strategies by implementing RegionNormalizer interface and configuring it in hbase-site.xml.


---

* [HBASE-12911](https://issues.apache.org/jira/browse/HBASE-12911) | *Major* | **Client-side metrics**

Introduces collection and reporting of various client-perceived metrics. Metrics are exposed via JMX under "org.apache.hadoop.hbase.client.MetricsConnection". Metrics are scoped according to connection instance, so multiple connection objects (ie, to different clusters) will report their metrics separately. Metrics are disabled by default, must be enabled by configuring "hbase.client.metrics.enable=true".


---

* [HBASE-10844](https://issues.apache.org/jira/browse/HBASE-10844) | *Major* | **Coprocessor failure during batchmutation leaves the memstore datastructs in an inconsistent state**

Promotes an -ea assert to logged FATAL and RS abort when memstore is found to be in an inconsistent state.


---

* [HBASE-7171](https://issues.apache.org/jira/browse/HBASE-7171) | *Major* | **Initial web UI for region/memstore/storefiles details**

HBASE-7171 adds 2 new pages to the region server Web UI to ease debugging and provide greater insight into the physical data layout.

Region names in UI table listing all regions (on the RS status page) are now hyperlinks leading to region detail page which shows some aggregate memstore information (currently just memory used) along with the list of all Store Files (HFiles) in the region. Names of Store Files are also hyperlinks leading to Store File detail page, which currently runs 'hbase hfile' command behind the scene and displays statistics about store file.


---

* [HBASE-6617](https://issues.apache.org/jira/browse/HBASE-6617) | *Major* | **ReplicationSourceManager should be able to track multiple WAL paths**

ReplicationSourceManager now could track multiple wal paths. Notice that although most changes are internal and all metrics names remain the same, signature of below methods in MetricsSource are changed:

1. refreshAgeOfLastShippedOp now requires a String parameter which indicates the wal group id of the reporter
2. setAgeOfLastShippedOp also adds a String parameter for wal group id



