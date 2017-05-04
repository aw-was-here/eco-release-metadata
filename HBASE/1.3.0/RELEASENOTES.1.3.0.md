
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

* [HBASE-12133](https://issues.apache.org/jira/browse/HBASE-12133) | *Minor* | **Add FastLongHistogram for metric computation**

Adds Histogram and AtomicLong Utils


---

* [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | *Major* | **[ergonomics] add region size balancing as a feature of master**

This patch adds optional ability for HMaster to normalize regions in size (disabled by default, change hbase.normalizer.enabled property to true to turn it on). If enabled, HMaster periodically (every 30 minutes by default) monitors tables for which normalization is enabled in table configuration and performs splits/merges as seems appropriate. Users may implement their own normalization strategies by implementing RegionNormalizer interface and configuring it in hbase-site.xml.


---

* [HBASE-13906](https://issues.apache.org/jira/browse/HBASE-13906) | *Major* | **Improve handling of NeedUnmanagedConnectionException**

With this patch NeedUnmanagedConnectionException is effectively treated as non-retryable exception, but for backwards compatibility purposes we don't throw it directly, but instead wrap into DoNotRetryIOException when we return error to the caller.


---

* [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | *Major* | **Deletes done during the region merge transaction may get eclipsed**

Use the master's timestamp when sending hbase:meta edits on region merge to ensure proper ordering of new region addition and old region deletes.


---

* [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | *Critical* | **Region splitting uses a single thread in most common cases**

The performance of region splitting has been improved by using a thread pool to split the store files concurrently. Prior to this change, the store files were always split sequentially in a single thread, so a region with multiple store files ended up taking several seconds. The thread pool is sized dynamically with the aim of getting maximum concurrency, without exceeding the number of cores available for HBase Java process. A lower limit for the thread pool can be explicitly set using the property hbase.regionserver.region.split.threads.max.


---

* [HBASE-14045](https://issues.apache.org/jira/browse/HBASE-14045) | *Major* | **Bumping thrift version to 0.9.2.**

This changes upgrades thrift dependency of HBase to 0.9.2. Though this doesn't break any HBase compatibility promises, it might impact any downstream projects that share thrift dependency with HBase.


---

* [HBASE-13881](https://issues.apache.org/jira/browse/HBASE-13881) | *Major* | **Bug in HTable#incrementColumnValue implementation**

HBASE-13881 Correct HTable incrementColumnValue implementation


---

* [HBASE-13865](https://issues.apache.org/jira/browse/HBASE-13865) | *Trivial* | **Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 (part 2)**

Increase default hbase.hregion.memstore.block.multiplier from 2 to 4 in the code to match the default value in the config files.


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

* [HBASE-14280](https://issues.apache.org/jira/browse/HBASE-14280) | *Minor* | **Bulk Upload from HA cluster to remote HA hbase cluster fails**

Patch will effectively work with Hadoop version 2.6 or greater with a launch of "internal.nameservices".
There will be no change in versions older than 2.6.


---

* [HBASE-14230](https://issues.apache.org/jira/browse/HBASE-14230) | *Minor* | **replace reflection in FSHlog with HdfsDataOutputStream#getCurrentBlockReplication()**

Remove calling getNumCurrentReplicas on HdfsDataOutputStream via reflection. getNumCurrentReplicas showed up in hadoop 1+ and hadoop 0.2x. In hadoop-2 it was deprecated.


---

* [HBASE-14465](https://issues.apache.org/jira/browse/HBASE-14465) | *Major* | **Backport 'Allow rowlock to be reader/write' to branch-1**

Locks on row are now reader/writer rather than exclusive. 

Moves sequenceid out of HRegion and into MVCC class; MVCC is now in charge. A WAL append is still stamped in same way (we pass MVCC context in a few places where we previously we did not). 

MVCC methods cleaned up. Make a bit more sense now. Less of them. 

Simplifies our update of MemStore/WAL. Now we update memstore AFTER we add to WAL (but before we sync). This fixes possible dataloss when two edits came in with same coordinates; we could order the edits in memstore differently to how they arrived in the WAL. 

Marked as an incompatible change because it breaks Distributed Log Replay, a feature we'd determined already was unreliable and to be removed (See http://search-hadoop.com/m/YGbbhTJpoal8GD1).


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

* [HBASE-14658](https://issues.apache.org/jira/browse/HBASE-14658) | *Major* | **Allow loading a MonkeyFactory by class name**

You can specify one of the predefined set of Monkeys when you run Integration Tests by passing the -m\|--monkey arguments on the command line; e.g -m CALM or -m SLOW\_DETERMINISTIC

This patch  makes it so you can pass the name of a class as the monkey to run: e.g. -m org.example.KingKong


---

* [HBASE-14257](https://issues.apache.org/jira/browse/HBASE-14257) | *Major* | **Periodic flusher only handles hbase:meta, not other system tables**

Memstore periodic flusher used to flush META table every 5 minutes but not any other system tables. This jira extends it to flush all system tables within this time period.


---

* [HBASE-14387](https://issues.apache.org/jira/browse/HBASE-14387) | *Major* | **Compaction improvements: Maximum off-peak compaction size**

New configuration option: hbase.hstore.compaction.max.size.offpeak - maximum selection size eligible for minor compaction during off peak hours.
hbase.hstore.compaction.max.size - this is default maximum if no off-peak hours are defined or if no maximum off-peak maximum size is defined.


---

* [HBASE-14793](https://issues.apache.org/jira/browse/HBASE-14793) | *Major* | **Allow limiting size of block into L1 block cache.**

Very large blocks can fragment the heap and cause bad issues for the garbage collector, especially the G1GC. Now there is a maximum size that a block can be and still stick in the LruBlockCache. That size defaults to 16mb but can be controlled by changing "hbase.lru.max.block.size"


---

* [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | *Critical* | **Commons-collections object deserialization remote command execution vulnerability**

This issue resolves a potential security vulnerability. For all versions we update our commons-collections dependency to the release that fixes the reported vulnerability in that library. In 0.98 we additionally disable by default a feature of code carried from 0.94 for backwards compatibility that is not needed.


---

* [HBASE-14821](https://issues.apache.org/jira/browse/HBASE-14821) | *Major* | **CopyTable should allow overriding more config properties for peer cluster**

Configuration properties for org.apache.hadoop.hbase.mapreduce.TableOutputFormat can now be overridden by prefixing the property keys with "hbase.mapred.output.".  When the configuration is applied to TableOutputFormat, these entries will be rewritten with the prefix removed -- ie. "hbase.mapred.output.hbase.security.authentication" becomes "hbase.security.authentication".  This can be useful when directing output to a peer cluster with different security configuration, for example.


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

* [HBASE-14976](https://issues.apache.org/jira/browse/HBASE-14976) | *Minor* | **Add RPC call queues to the web ui**

Adds column displaying current aggregated call queues size in region server queues tab UI.


---

* [HBASE-15018](https://issues.apache.org/jira/browse/HBASE-15018) | *Major* | **Inconsistent way of handling TimeoutException in the rpc client implementations**

When using the new AsyncRpcClient introduced in HBase 1.1.0 (HBASE-12684), time outs now result in an IOException wrapped around a CallTimeoutException instead of a bare CallTimeoutException. This change makes the AsyncRpcClient behave the same as the default HBase 1.y RPC client implementation.


---

* [HBASE-14468](https://issues.apache.org/jira/browse/HBASE-14468) | *Major* | **Compaction improvements: FIFO compaction policy**

FIFO compaction policy selects only files which have all cells expired. The column family MUST have non-default TTL. 
Essentially, FIFO compactor does only one job: collects expired store files. 

Because we do not do any real compaction, we do not use CPU and IO (disk and network), we do not evict hot data from a block cache. The result: improved throughput and latency both write and read.
See: https://github.com/facebook/rocksdb/wiki/FIFO-compaction-style


---

* [HBASE-15111](https://issues.apache.org/jira/browse/HBASE-15111) | *Trivial* | **"hbase version" should write to stdout**

The \`hbase version\` command now outputs directly to stdout rather than to a logger. This change allows the version information to be output consistently regardless of logger configuration. Naturally, this also means the command output ignores all logger configuration. Furthermore, the move from loggers to direct output changes the output of the command to omit metadata commonly included in logger ouput such as a timestamp, log level, and logger name.


---

* [HBASE-15098](https://issues.apache.org/jira/browse/HBASE-15098) | *Blocker* | **Normalizer switch in configuration is not used**

The config parameter, hbase.normalizer.enabled, has been dropped since it is not used in the code base.


---

* [HBASE-15091](https://issues.apache.org/jira/browse/HBASE-15091) | *Blocker* | **Forward-port to 1.2+ HBASE-15031 "Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments"**

UPDATE: This forward port was not necessary. hbase-1.2.0 as it happens does not suffer the performance regression. HBASE-12751 which was added to hbase-1.2.0, actually fixed the performance regression in increment and append too. Ignore the below!!!! 

Increments can be 10x slower (or more) when there is high concurrency since HBase 1.0.0 (HBASE-8763). 

This 'fix' adds back a fast increment but speed is achieved by relaxing row-level consistency for Increments (only). The default remains the old, slow, consistent Increment behavior. 

Set "hbase.increment.fast.but.narrow.consistency" to true in hbase-site.xml to enable 'fast' increments and then rolling restart your cluster. This is a setting the server-side needs to read. 

Intermixing fast increment with other Mutations will give indeterminate results; e.g. a Put and Increment against the same Cell will not always give you the result you expect. Fast Increments are consistent unto themselves. A Get with {@link IsolationLevel#READ\_UNCOMMITTED} will return the latest increment value or an Increment of an amount zero will do the same (beware doing Get on a cell that has not been incremented yet -- this will return no results). 

The difference between fastAndNarrowConsistencyIncrement and slowButConsistentIncrement is that the former holds the row lock until the WAL sync completes; this allows us to reason that there are no other writers afoot when we read the current increment value. In this case we do not need to wait on mvcc reads to catch up to writes before we proceed with the read of the current Increment value, the root of the slowdown seen in HBASE-14460. The fast-path also does not wait on mvcc to complete before returning to the client (but the write has been synced and put into memstore before we return). 

Also adds a simple performance test tool that will run against existing cluster. It expects the table to be already created (by default it expects the table 'tableName' with a column family 'columnFamilyName'): 

{code} 
$ ./bin/hbase org.apache.hadoop.hbase.IncrementPerformanceTest 
{code] 

Configure it by passing -D options. Here are the set below: 

2015-12-23 19:33:36,941 INFO [main] hbase.IncrementPerformanceTest: Running test with hbase.zookeeper.quorum=localhost, tableName=tableName, columnFamilyName=columnFamilyName, threadCount=80, incrementCount=10000 

... so to set the tableName pass -DtableName=SOME\_TABLENAME 

Here is an example use of the test tool: 

{code} 
$ time ./bin/hbase --config ~/conf\_hbase org.apache.hadoop.hbase.IncrementPerformanceTest -DincrementCount=50000 
{code}


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

* [HBASE-14460](https://issues.apache.org/jira/browse/HBASE-14460) | *Critical* | **[Perf Regression] Merge of MVCC and SequenceId (HBASE-8763) slowed Increments, CheckAndPuts, batch operations**

This release note tries to tell the general story. Dive into sub-tasks for more specific release noting.

Increments, appends, checkAnd\* have been slow since hbase-.1.0.0. The unification of mvcc and sequence id done by HBASE-8763 was responsible.

A ‘fast-path’ workaround was added by HBASE-15031 “Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments”. It became available in 1.0.3 and 1.1.3. To enable the fast path, set "hbase.increment.fast.but.narrow.consistency" and then rolling restart. The workaround was for increments only (appends, checkAndPut, etc., were not addressed. See HBASE-15031 release note for more detail).

Subsequently, the regression was properly identified and fixed in HBASE-15213 and the fix applied to branch-1.0 and branch-1.1. As it happens, hbase-1.2.0 does not suffer from the performance regression (though the thought was that it did -- and so it got the fast-path patch too via HBASE-15092) nor does the master branch. HBASE-15213 identified that HBASE-12751 (as a side effect) had cured the regression.

hbase-1.0.4 (if it is ever released -- 1.0 has been end-of-lifed) and hbase-1.1.4 will have the HBASE-15213 fix.  If you are suffering from the increment regression and you are on 1.0.3 or 1.1.3, you can enable the work around to get back your increment performance but you should upgrade.


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

* [HBASE-15376](https://issues.apache.org/jira/browse/HBASE-15376) | *Major* | **ScanNext metric is size-based while every other per-operation metric is time based**

Removed ScanNext histogram metrics as regionserver level and per-region level metrics since the semantics is not compatible with other similar metrics (size histogram vs latency histogram). 

Instead, this patch adds ScanTime and ScanSize histogram metrics at the regionserver and per-region level.


---

* [HBASE-15354](https://issues.apache.org/jira/browse/HBASE-15354) | *Major* | **Use same criteria for clearing meta cache for all operations**

This patch fixes some issues when MetaCache (region location cache) gets unnecessarily dropped on the client.

On master branch we now in RegionServerCallable and RegionServerAdminCallable pass the actual exception down to Connection#updateCachedLocation, so we could check there if the exception is "meta-clearing" or not.

on branch-1, branch-1.2 and branch 1.3 we now check if the exception is meta-clearing or not in AsyncProcess (this check was there on master, but not on earlier branches)


---

* [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | *Critical* | **avoid leaking jdk.tools**

HBase now ensures that the JDK tools jar used during the build process is not exposed to downstream clients as a transitive dependency of hbase-annotations.

If you need to have the JDK tools jar in your classpath, you should add a system dependency on it. See the hbase-annotations pom for an example of the necessary pom additions.


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

* [HBASE-15481](https://issues.apache.org/jira/browse/HBASE-15481) | *Trivial* | **Add pre/post roll to WALObserver**

<!-- markdown -->

WALObserver coprocessors now can receive notifications of WAL rolling via the new methods `preWALRoll` and `postWALRoll`.

This change is incompatible due to the addition of these methods to the `WALObserver` interface. Downstream users are encouraged to instead extend the `BaseWALObserver` class, which remains compatible through this change.


---

* [HBASE-13372](https://issues.apache.org/jira/browse/HBASE-13372) | *Major* | **Unit tests for SplitTransaction and RegionMergeTransaction listeners**

HBASE-13372 Add unit tests for SplitTransaction and RegionMergeTransaction listeners


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

* [HBASE-14970](https://issues.apache.org/jira/browse/HBASE-14970) | *Major* | **Backport HBASE-13082 and its sub-jira to branch-1**

After this JIRA we will not be doing any scanner reset after compaction during a course of a scan. The files that were compacted will still be continued to be used in the scan process. The compacted files will be archived by a background thread that runs every 2 mins by default only when there are no active scanners on those comapcted files.

'hbase.hfile.compaction.discharger.interval' describes the interval after which the compaction discharger chore service should run. 
The property 'hbase.hfile.compaction.discharger.thread.count' describes the thread count that does the compaction discharge work. 

The CompactedHFilesDischarger is a chore service now started as part of the RegionServer and this chore service iterates over all the onlineRegions in that RS and uses the RegionServer's executor service to launch a set of threads that does this job of compaction files clean up.


---

* [HBASE-15551](https://issues.apache.org/jira/browse/HBASE-15551) | *Minor* | **Make call queue too big exception use servername**

Fixes issue when CallQueueTooBig exception returned to the client could print useless address info (like 0.0.0.0) if RPC server is listening on something other than the host name, making troubleshooting inconvenient.


---

* [HBASE-15281](https://issues.apache.org/jira/browse/HBASE-15281) | *Major* | **Allow the FileSystem inside HFileSystem to be wrapped**

This patch adds new configuration property - hbase.fs.wrapper. If provided, it should be fully qualified class name of the class used as a pluggable wrapper for HFileSystem. This may be useful for specific debugging/tracing needs.


---

* [HBASE-15703](https://issues.apache.org/jira/browse/HBASE-15703) | *Critical* | **Deadline scheduler needs to return to the client info about skipped calls, not just drop them**

With previous deadline mode of RPC scheduling (the implementation in SimpleRpcScheduler, which is basically a FIFO except that long-running scans are de-prioritized) and FIFO-based RPC scheduler clients are getting CallQueueTooBigException when RPC call queue is full.

With this patch and when hbase.ipc.server.callqueue.type property is set to "codel" mode, clients will also be getting CallDroppedException, which means that the request was discarded by the server as it considers itself to be overloaded and starts to drop requests to avoid going down under the load. The clients will retry upon receiving this exception. It doesn't clear MetaCache with region locations.


---

* [HBASE-15720](https://issues.apache.org/jira/browse/HBASE-15720) | *Major* | **Print row locks at the debug dump page**

Adds a section to the debug dump page listing current row locks held.


---

* [HBASE-15773](https://issues.apache.org/jira/browse/HBASE-15773) | *Major* | **CellCounter improvements**

The CellCounter map reduce job now supports additional configuration options on the Scan instance it creates, using the org.apache.hadoop.hbase.mapreduce.TableInputFormat defined property names.  For a full list of the options, run ./hbase org.apache.hadoop.hbase.mapreduce.CellCounter with no arguments.

CellCounter also no longer creates job counters for per-rowkey and per-rowkey/qualifier cell counts.  For most tables, these counters would cause the job to fail due to mapreduce job counter limits.


---

* [HBASE-15740](https://issues.apache.org/jira/browse/HBASE-15740) | *Major* | **Replication source.shippedKBs metric is undercounting because it is in KB**

Deprecated Replication source.shippedKBs metric in favor of source.shippedBytes


---

* [HBASE-15801](https://issues.apache.org/jira/browse/HBASE-15801) | *Major* | **Upgrade checkstyle for all branches**

All active branches now use maven-checkstyle-plugin 2.17 and checkstyle 6.18.


---

* [HBASE-15811](https://issues.apache.org/jira/browse/HBASE-15811) | *Blocker* | **Batch Get after batch Put does not fetch all Cells**

We were not waiting on all executors in a batch to complete which meant a read-your-own-writes could sometimes fail -- especially if client is loaded; i.e. putting to multiple machines in a cluster. The test for no-more-executors was damaged by the 0.99/0.98.4 fix "HBASE-11403 Fix race conditions around Object#notify"


---

* [HBASE-15780](https://issues.apache.org/jira/browse/HBASE-15780) | *Critical* | **Expose AuthUtil as IA.Public**

Downstream users with long lived applications that need to communicate with secure HBase instances can now rely on the AuthUtil class to handle authenticating via keytab.

For more information, see the javadoc for the org.apache.hadoop.hbase.AuthUtil class.


---

* [HBASE-15593](https://issues.apache.org/jira/browse/HBASE-15593) | *Major* | **Time limit of scanning should be offered by client**

Add a new configuration: hbase.ipc.min.client.request.timeout
Minimum allowable timeout (in milliseconds) in rpc request's header. This configuration exists to prevent the rpc service regarding this request as timeout immediately.


---

* [HBASE-15856](https://issues.apache.org/jira/browse/HBASE-15856) | *Critical* | **Cached Connection instances can wind up with addresses never resolved**

During periods where DNS resolution was not available or not working correctly, we could previously cache unresolved hostnames forever, in some cases preventing further connections to these hosts even when DNS service was restored.  With this change, unresolved hostnames will no longer be cached, and will instead throw an UnknownHostException during connection setup.


---

* [HBASE-15876](https://issues.apache.org/jira/browse/HBASE-15876) | *Blocker* | **Remove doBulkLoad(Path hfofDir, final HTable table) though it has not been through a full deprecation cycle**

Removes a doBulkLoad method though it has not been through a full deprecation cycle (but it is 'damaged' because it has a parameter that has been properly deprecated). Use the alternative {code}public void doBulkLoad(Path hfofDir, final Admin admin, Table table, RegionLocator regionLocator){code}

See http://mail-archives.apache.org/mod\_mbox/hbase-dev/201605.mbox/%3CCAMUu0w-ZiLoLBLO3D76=n3AjUr=VMtTUeYA28weLHYeq8+e3bQ@mail.gmail.com%3E for NOTICE on this 'premature' removal.


---

* [HBASE-15890](https://issues.apache.org/jira/browse/HBASE-15890) | *Major* | **Allow thrift to set/unset "cacheBlocks" for Scans**

Adds cacheBlocks to Scan


---

* [HBASE-15920](https://issues.apache.org/jira/browse/HBASE-15920) | *Minor* | **Backport submit-patch.py to branch-1 and earlier branches.**

See HBASE-1582 and HBASE-15909 release notes.


---

* [HBASE-15931](https://issues.apache.org/jira/browse/HBASE-15931) | *Critical* | **Add log for long-running tasks in AsyncProcess**

After HBASE-15931, we will log more details for long-running tasks in AsyncProcess#waitForMaximumCurrentTasks every 10 seconds, including:
1. Table name will be included in the tasks status log
2. On which regionserver(s) the tasks are runnning will be logged when less than hbase.client.threshold.log.details tasks left, by default 10.
3. Against which regions the tasks are running will be logged when less than 2 tasks left.


---

* [HBASE-15971](https://issues.apache.org/jira/browse/HBASE-15971) | *Critical* | **Regression: Random Read/WorkloadC slower in 1.x than 0.98**

Change the default rpc scheduler from 'deadline' to 'fifo' instead so it is the same as in branch 0.98. 'deadline' was of questionable benefit but with a high cost scheduling. To re-enable 'deadline', set hbase.ipc.server.callqueue.type to 'deadline' in your hbase-site.xml.


---

* [HBASE-16023](https://issues.apache.org/jira/browse/HBASE-16023) | *Major* | **Fastpath for the FIFO rpcscheduler**

Adds a 'fastpath' when using the default FIFO rpc scheduler ('fifo'). Does direct handoff from Reader thread to Handler if there is one ready and willing. Will shine best when high random read workload (YCSB workloadc for instance)


---

* [HBASE-15224](https://issues.apache.org/jira/browse/HBASE-15224) | *Major* | **Undo  "hbase.increment.fast.but.narrow.consistency" option; it is not necessary since HBASE-15213**

HBASE-15031 “Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments” and HBASE-15091 ‘Forward-port to 1.2+ HBASE-15031 "Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments"’ added a workaround ‘fast-path’ to restore an increment performance regression that came into hbase 1.0 when we unified mvcc and sequence id in HBASE-8763. The workaround became available in hbase-1.0.3 and hbase-1.1.3. The workaround involved setting the flag  "hbase.increment.fast.but.narrow.consistency"  in your configuration and restarting.

Subsequently, the regression was fixed in HBASE-15213. The fix will be available in hbase-1.0.4 and hbase-1.1.4 when they are released. hbase-1.2.0 has the flag but as it turns out, it is not needed; there is no regression in 1.2.0.

This issue removes the fast-path flag. If set, it will just be ignored.


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

* [HBASE-16140](https://issues.apache.org/jira/browse/HBASE-16140) | *Major* | **bump owasp.esapi from 2.1.0 to 2.1.0.1**

The dependency owasp.esapi had a compatible change from 2.1.0 to 2.1.0.1. As a result, the transitive dependency commons-fileupload had a change from 1.2 to 1.3.1, which has some minor class changes that impact binary compatibility. Interested users should check the release notes of commons-fileupload to see if any of the incompatible changes impact them.

http://commons.apache.org/proper/commons-fileupload/changes-report.html


---

* [HBASE-15925](https://issues.apache.org/jira/browse/HBASE-15925) | *Blocker* | **compat-module maven variable not evaluated**

Downstream users of HBase dependencies that do not properly activate Maven profiles should now see a correct transitive dependency on the default hadoop-compatibility-module.


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

* [HBASE-16289](https://issues.apache.org/jira/browse/HBASE-16289) | *Critical* | **AsyncProcess stuck messages need to print region/server**

Adds logging of region and server. Helpful debugging. Logging now looks like this:
{code}
2016-06-23 17:07:18,759 INFO  [Thread-1] client.AsyncProcess$AsyncRequestFutureImpl(1601): #1, waiting for 1  actions to finish on table: DUMMY\_TABLE
2016-06-23 17:07:18,759 INFO  [Thread-1] client.AsyncProcess(1720): Left over 1 task(s) are processed on server(s): [s1:1,1,1]
2016-06-23 17:07:18,759 INFO  [Thread-1] client.AsyncProcess(1728): Regions against which left over task(s) are processed: [DUMMY\_TABLE,DUMMY\_BYTES\_1,1.3fd12ea80b4df621fb15497ba75f7368.,DUMMY\_TABLE,DUMMY\_BYTES\_2,2.924207e242e313d2e5491c625e0a296e.]
{code}


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

* [HBASE-16450](https://issues.apache.org/jira/browse/HBASE-16450) | *Major* | **Shell tool to dump replication queues**

New tool to dump existing replication peers, configurations and queues when using HBase Replication. The tool provides two flags:

 --distributed  This flag will poll each RS for information about the replication queues being processed on this RS.
By default this is not enabled and the information about the replication queues and configuration will be obtained from ZooKeeper.
 --hdfs   When --distributed is used, this flag will attempt to calculate the total size of the WAL files used by the replication queues. Since its possible that multiple peers can be configured this value can be overestimated.


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

* [HBASE-16294](https://issues.apache.org/jira/browse/HBASE-16294) | *Minor* | **hbck reporting "No HDFS region dir found" for replicas**

Fixed warning error message displayed for region directory not found for non-default/ non-primary replicas in hbck


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

* [HBASE-16765](https://issues.apache.org/jira/browse/HBASE-16765) | *Critical* | **New SteppingRegionSplitPolicy, avoid too aggressive spread of regions for small tables.**

Introduces a new split policy: SteppingSplitPolicy
This will use a simple step function to split a region at (by default) 2  xflushSize when no other region of the same table is seen on the region server, or max-file-size when one or more other regions of the same table is seen.

In HBase 2.0 this is going to be the default. In previous versions it can be configured.


---

* [HBASE-16972](https://issues.apache.org/jira/browse/HBASE-16972) | *Major* | **Log more details for Scan#next request when responseTooSlow**

**WARNING: No release note provided for this change.**


---

* [HBASE-17017](https://issues.apache.org/jira/browse/HBASE-17017) | *Major* | **Remove the current per-region latency histogram metrics**

Removes per-region level (get size, get time, scan size and scan time histogram) metrics that was exposed before. Per-region histogram metrics with 1000+ regions causes millions of objects to be allocated on heap. The patch introduces getCount and scanCount as counters rather than histograms. Other per-region level metrics are kept as they are.


---

* [HBASE-9899](https://issues.apache.org/jira/browse/HBASE-9899) | *Major* | **for idempotent operation dups, return the result instead of throwing conflict exception**

Non-idempotent operations (increment/append/checkAndPut/...) may throw OperationConflictException even though the increment/append succeeded. For example (client rpc retries number set to 3):

1. first increment rpc request success
2. client timeout and send second rpc request, but nonce is same and save in server. The server found that it has already succeed, so return a OperationConflictException to make sure that increment operation only be applied once in server.

This patch will solve this problem by read the previous result when receive a duplicate rpc request.
1. Store the mvcc to OperationContext. When first rpc request succeed, store the mvcc for this operation nonce.
2. When there are duplicate rpc request, convert to read result by the mvcc.



