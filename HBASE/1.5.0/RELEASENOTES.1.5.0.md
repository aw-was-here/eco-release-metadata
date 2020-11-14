
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

* [HBASE-17314](https://issues.apache.org/jira/browse/HBASE-17314) | *Major* | **Limit total buffered size for all replication sources**

Add a conf "replication.total.buffer.quota" to limit total size of buffered entries in all replication peers. It will prevent server getting OOM if there are many peers. Default value is 256MB.


---

* [HBASE-18517](https://issues.apache.org/jira/browse/HBASE-18517) | *Major* | **limit max log message width in log4j**

Sets a log length max of 1000 characters.


---

* [HBASE-19673](https://issues.apache.org/jira/browse/HBASE-19673) | *Major* | **Backport " Periodically ensure records are not buffered too long by BufferedMutator" to branch-1**

The BufferedMutator now supports two settings that are used to ensure records do not stay too long in the buffer of a BufferedMutator. For periodically flushing the BufferedMutator there is now a "Timeout": "How old may the oldest record in the buffer be before we force a flush" and a "TimerTick": How often do we check if the timeout has been exceeded. Using these settings you can make the BufferedMutator automatically flush the write buffer if after the specified number of milliseconds no flush has occurred.

This is mainly useful in streaming scenarios (i.e. writing data into HBase using Apache Flink/Beam/Storm) where it is common (especially in a test/development situation) to see small unpredictable bursts of data that need to be written into HBase. When using the BufferedMutator till now the effect was that records would remain in the write buffer until the buffer was full or an explicit flush was triggered. In practice this would mean that the 'last few records' of a burst would remain in the write buffer until the next burst arrives filling the buffer to capacity and thus triggering a flush.


---

* [HBASE-19528](https://issues.apache.org/jira/browse/HBASE-19528) | *Major* | **Major Compaction Tool**

Tool allows you to compact a cluster with given concurrency of regionservers compacting at a given time.  If tool completes successfully everything requested for compaction will be compacted, regardless of region moves, splits and merges.


---

* [HBASE-20048](https://issues.apache.org/jira/browse/HBASE-20048) | *Blocker* | **Revert serial replication feature**

Revert the serial replication feature from all branches. Plan to reimplement it soon and land onto 2.1 release line.


---

* [HBASE-20087](https://issues.apache.org/jira/browse/HBASE-20087) | *Major* | **Periodically attempt redeploy of regions in FAILED\_OPEN state**

The AssignmentManager will attempt to assign regions in FAILED\_OPEN state at an interval specified by the configuration setting "hbase.assignment.failed.open.retry.period", defaulting to 300000 (5 minutes). If a transient condition leads a region to repeatedly fail to open sufficient to transition into FAILED\_OPEN state, such as the temporary inability to satisfy a RSGroups assignment constraint after server failures, the retries may automatically redeploy the region without operator intervention. Set to 0 to disable and keep the old behavior where regions in FAILED\_OPEN state are left to operators to manually reassign.


---

* [HBASE-19024](https://issues.apache.org/jira/browse/HBASE-19024) | *Critical* | **Configurable default durability for synchronous WAL**

The default durability setting for the synchronous WAL is Durability.SYNC\_WAL, which triggers HDFS hflush() to flush edits to the datanodes. We also support Durability.FSYNC\_WAL, which instead triggers HDFS hsync() to flush \_and\_ fsync edits. This change introduces the new configuration setting "hbase.wal.hsync", defaulting to FALSE, that if set to TRUE changes the default durability setting for the synchronous WAL to  FSYNC\_WAL.


---

* [HBASE-16499](https://issues.apache.org/jira/browse/HBASE-16499) | *Critical* | **slow replication for small HBase clusters**

Changed the default value for replication.source.ratio from 0.1 to 0.5. Which means now by default 50% of the total RegionServers in peer cluster(s) will participate in replication.


---

* [HBASE-20406](https://issues.apache.org/jira/browse/HBASE-20406) | *Major* | **HBase Thrift HTTP - Shouldn't handle TRACE/OPTIONS methods**

<!-- markdown -->
When configured to do thrift-over-http, the HBase Thrift API Server no longer accepts the HTTP methods TRACE nor OPTIONS.


---

* [HBASE-20493](https://issues.apache.org/jira/browse/HBASE-20493) | *Minor* | **Port HBASE-19994 (Create a new class for RPC throttling exception, make it retryable) to branch-1**

Before this change when RPC quotas are exceeded the server will throw ThrottlingException to the client, which is unfriendly, because ThrottlingException is derived from DoNotRetryIOException. The application must specially handle error conditions caused by throttling. With this change we introduce a new exception type for RPC quotas, RpcThrottlingException, which is retryable. If the configuration parameter 'hbase.quota.retryable.throttlingexception' (default: 'false') is set to 'true' the server will throw RpcThrottlingException back to the client instead, and the client will handle this exception like any other transient condition, retrying using the configured retry policy until exhausted. The application will still need to handle the case where, because of throttling, all retries have been exhausted, but this is the normal RetriesExhaustedException that applications have to deal with anyway. Throttling will no longer demand special handling.


---

* [HBASE-20501](https://issues.apache.org/jira/browse/HBASE-20501) | *Blocker* | **Change the Hadoop minimum version to 2.7.1**

<!-- markdown -->
HBase is no longer able to maintain compatibility with Apache Hadoop versions that are no longer receiving updates. This release raises the minimum supported version to Hadoop 2.7.1. Downstream users are strongly advised to upgrade to the latest Hadoop 2.7 maintenance release.

Downstream users of earlier HBase versions are similarly advised to upgrade to Hadoop 2.7.1+. When doing so, it is especially important to follow the guidance from [the HBase Reference Guide's Hadoop section](http://hbase.apache.org/book.html#hadoop) on replacing the Hadoop artifacts bundled with HBase.


---

* [HBASE-18116](https://issues.apache.org/jira/browse/HBASE-18116) | *Major* | **Replication source in-memory accounting should not include bulk transfer hfiles**

Before this change we would incorrectly include the size of enqueued store files for bulk replication in the calculation for determining whether or not to rate limit the transfer of WAL edits. Because bulk replication uses a separate and asynchronous mechanism for file transfer this could incorrectly limit the batch sizes for WAL replication if bulk replication in progress, with negative impact on latency and throughput.


---

* [HBASE-20691](https://issues.apache.org/jira/browse/HBASE-20691) | *Blocker* | **Storage policy should allow deferring to HDFS**

After HBASE-20691 we have changed the default setting of hbase.wal.storage.policy from "HOT" back to "NONE" which means we defer the policy to HDFS. This fixes the problem of release 2.0.0 that the storage policy of WAL directory will defer to HDFS and may not be "HOT" even if you explicitly set hbase.wal.storage.policy to "HOT"


---

* [HBASE-20446](https://issues.apache.org/jira/browse/HBASE-20446) | *Minor* | **Allow building HBase 1.x against Hadoop 3.1.x**

Finally committed this.


---

* [HBASE-21021](https://issues.apache.org/jira/browse/HBASE-21021) | *Major* | **Result returned by Append operation should be ordered**

This change ensures Append operations are assembled into the expected order.


---

* [HBASE-21325](https://issues.apache.org/jira/browse/HBASE-21325) | *Major* | **Force to terminate regionserver when abort hang in somewhere**

Add two new config hbase.regionserver.abort.timeout and hbase.regionserver.abort.timeout.task. If regionserver abort timeout, it will schedule an abort timeout task to run. The default abort task is SystemExitWhenAbortTimeout, which will force to terminate region server when abort timeout. And you can config a special abort timeout task by hbase.regionserver.abort.timeout.task.


---

* [HBASE-21283](https://issues.apache.org/jira/browse/HBASE-21283) | *Minor* | **Add new shell command 'rit' for listing regions in transition**

<!-- markdown -->

The HBase `shell` now includes a command to list regions currently in transition.

```
HBase Shell
Use "help" to get list of supported commands.
Use "exit" to quit this interactive shell.
Version 1.5.0-SNAPSHOT, r9bb6d2fa8b760f16cd046657240ebd4ad91cb6de, Mon Oct  8 21:05:50 UTC 2018

hbase(main):001:0> help 'rit'
List all regions in transition.
Examples:
  hbase> rit

hbase(main):002:0> create ...
0 row(s) in 2.5150 seconds
=> Hbase::Table - IntegrationTestBigLinkedList

hbase(main):003:0> rit
0 row(s) in 0.0340 seconds

hbase(main):004:0> unassign '56f0c38c81ae453d19906ce156a2d6a1'
0 row(s) in 0.0540 seconds

hbase(main):005:0> rit 
IntegrationTestBigLinkedList,L\xCC\xCC\xCC\xCC\xCC\xCC\xCB,1539117183224.56f0c38c81ae453d19906ce156a2d6a1. state=PENDING_CLOSE, ts=Tue Oct 09 20:33:34 UTC 2018 (0s ago), server=null                                                                                                                                                                                   
1 row(s) in 0.0170 seconds
```


---

* [HBASE-21659](https://issues.apache.org/jira/browse/HBASE-21659) | *Minor* | **Avoid to load duplicate coprocessors in system config and table descriptor**

Add a new configuration "hbase.skip.load.duplicate.table.coprocessor". The default value is false to keep compatible with the old behavior. Config it true to skip load duplicate table coprocessor.


---

* [HBASE-21595](https://issues.apache.org/jira/browse/HBASE-21595) | *Minor* | **Print thread's information and stack traces when RS is aborting forcibly**

Does thread dump on stdout on abort.


---

* [HBASE-21791](https://issues.apache.org/jira/browse/HBASE-21791) | *Blocker* | **Upgrade thrift dependency to 0.12.0**

IMPORTANT: Due to security issues, all users who use hbase thrift should avoid using releases which do not have this fix.

The effect releases are:
2.1.x: 2.1.2 and below
2.0.x: 2.0.4 and below
1.x: 1.4.x and below

If you are using the effect releases above, please consider upgrading to a newer release ASAP.


---

* [HBASE-21727](https://issues.apache.org/jira/browse/HBASE-21727) | *Minor* | **Simplify documentation around client timeout**

Deprecated HBaseConfiguration#getInt(Configuration, String, String, int) method and removed it from 3.0.0 version.


---

* [HBASE-21838](https://issues.apache.org/jira/browse/HBASE-21838) | *Major* | **Create a special ReplicationEndpoint just for verifying the WAL entries are fine**

Introduce a VerifyWALEntriesReplicationEndpoint which replicates nothing but only verifies if all the cells are valid.
It can be used to capture bugs for writing WAL, as most times we will not read the WALs again after writing it if there are no region server crashes.


---

* [HBASE-21810](https://issues.apache.org/jira/browse/HBASE-21810) | *Major* | **bulkload  support set hfile compression on client**

bulkload (HFileOutputFormat2)  support config the compression on client ,you can set the job configuration "hbase.mapreduce.hfileoutputformat.compression"  override the auto-detection of the target table's compression


---

* [HBASE-21796](https://issues.apache.org/jira/browse/HBASE-21796) | *Major* | **RecoverableZooKeeper indefinitely retries a client stuck in AUTH\_FAILED**

Introduces retry logic when observing the AUTH\_FAILED state from ZooKeeper. The number of retries can be controlled by "hbase.zookeeper.authfailed.retries.number" (default 15) and
the pause between retries controlled by "hbase.zookeeper.authfailed.pause" (default 100ms).


---

* [HBASE-22044](https://issues.apache.org/jira/browse/HBASE-22044) | *Major* | **ByteBufferUtils should not be IA.Public API**

<!-- markdown -->

As of HBase 3.0, the ByteBufferUtils class is now marked as a Private API for internal project use only. Downstream users are advised that it no longer has any compatibility promises across releases.

As of earlier HBase release lines the class is now marked as deprecated to call attention to this planned transition.


---

* [HBASE-22057](https://issues.apache.org/jira/browse/HBASE-22057) | *Major* | **Impose upper-bound on size of ZK ops sent in a single multi()**

Exposes a new configuration property "zookeeper.multi.max.size" which dictates the maximum size of deletes that HBase will make to ZooKeeper in a single RPC. This property defaults to 1MB, which should fall beneath the default ZooKeeper limit of 2MB, controlled by "jute.maxbuffer".


---

* [HBASE-21883](https://issues.apache.org/jira/browse/HBASE-21883) | *Minor* | **Enhancements to Major Compaction tool**

MajorCompactorTTL Tool allows to compact all regions in a table that have been TTLed out. This saves space on DFS and is useful for tables which are similar to time series data. This is typically scheduled to run frequently (say via cron) to cleanup old data on an ongoing basis.

RSGroupMajorCompactionTTL tool is similar to MajorCompactorTTL but runs at a region server group level. If multiple tables in an rsgroup are similar to time-series data, then it runs a single command to clean them up. As more tables are added/removed from rsgroup, it's easy to have a single command to take care of all of them.


---

* [HBASE-22301](https://issues.apache.org/jira/browse/HBASE-22301) | *Minor* | **Consider rolling the WAL if the HDFS write pipeline is slow**

This change adds new conditions for rolling the WAL for when syncs on the HDFS writer pipeline are perceived to be slow. 

As before the configuration parameter hbase.regionserver.wal.slowsync.ms sets the slow sync warning threshold. 

If we encounter hbase.regionserver.wal.slowsync.roll.threshold number of slow syncs (default 100) within the interval defined by hbase.regionserver.wal.slowsync.roll.interval.ms (default 1 minute), we will request a WAL roll. 

Or, if the time for any sync exceeds the threshold set by hbase.regionserver.wal.roll.on.sync.ms (default 10 seconds) we will request a WAL roll immediately.

Operators can monitor how often these new thresholds result in a WAL roll by looking at newly added metrics to the WAL related metric group:
\* slowSyncRollRequest - How many times a roll was requested due to sync too slow on the write pipeline.

Additionally, as a part of this change there are also additional metrics for existing reasons for a WAL roll:
\* errorRollRequest - How many times a roll was requested due to I/O or other errors.
\* sizeRollRequest - How many times a roll was requested due to file size roll threshold.


---

* [HBASE-22377](https://issues.apache.org/jira/browse/HBASE-22377) | *Major* | **Provide API to check the existence of a namespace which does not require ADMIN permissions**

This change adds the new method listNamespaces to the Admin interface, which can be used to retrieve a list of the namespaces present in the schema as an unprivileged operation. Formerly the only available method for accomplishing this was listNamespaceDescriptors, which requires GLOBAL CREATE or ADMIN permissions.


---

* [HBASE-22444](https://issues.apache.org/jira/browse/HBASE-22444) | *Major* | **Backport HBASE-19954 to branch-1**

hadoop2.8+ minidfscluster removes all shutdown handlers when the cluster goes down which made this test that does FS-stuff fail (Fix was to break up the test so each test method ran with an unadulterated FS).


---

* [HBASE-22413](https://issues.apache.org/jira/browse/HBASE-22413) | *Major* | **Backport 'HBASE-22399 Change default hadoop-two.version to 2.8.x and remove the 2.7.x hadoop checks' to branch-1**

Drop the support for hadoop 2.7.x and below for 1.5.0 release.


---

* [HBASE-22459](https://issues.apache.org/jira/browse/HBASE-22459) | *Minor* | **Expose store reader reference count**

This change exposes the aggregate count of store reader references for a given store as 'storeRefCount' in region metrics and ClusterStatus.


---

* [HBASE-22596](https://issues.apache.org/jira/browse/HBASE-22596) | *Minor* | **[Chore] Separate the execution period between CompactionChecker and PeriodicMemStoreFlusher**

hbase.regionserver.compaction.check.period is used for controlling how often the compaction checker runs. If unset, will use hbase.server.thread.wakefrequency as default value.

hbase.regionserver.flush.check.period is used for controlling how ofter the flush checker runs. If unset, will use hbase.server.thread.wakefrequency as default value.


---

* [HBASE-22610](https://issues.apache.org/jira/browse/HBASE-22610) | *Trivial* | **[BucketCache] Rename "hbase.offheapcache.minblocksize"**

The config point "hbase.offheapcache.minblocksize" was wrong and is now deprecated. The new config point is "hbase.blockcache.minblocksize".


---

* [HBASE-22648](https://issues.apache.org/jira/browse/HBASE-22648) | *Minor* | **Snapshot TTL**

Feature: Take a Snapshot With TTL for auto-cleanup

Attribute: 
1. TTL
     - Specify TTL in sec while creating snapshot. e.g. snapshot 'mytable', 'snapshot1234', {TTL =\> 86400}  (snapshot to be auto-cleaned after 24 hr)

Configs:
1. Default Snapshot TTL:
     - FOREVER by default
     - User specified Default TTL(sec) with config: hbase.master.snapshot.ttl

2. If Snapshot cleanup is supposed to be stopped due to some snapshot restore activity, disable it with config:
     - hbase.master.cleaner.snapshot.disable: "true"
    With this config, HMaster needs restart just like any other hbase-site config.


For more details, see the section "Take a Snapshot With TTL" in the HBase Reference Guide.


---

* [HBASE-15666](https://issues.apache.org/jira/browse/HBASE-15666) | *Critical* | **shaded dependencies for hbase-testing-util**

New shaded artifact for testing: hbase-shaded-testing-util.


---

* [HBASE-22856](https://issues.apache.org/jira/browse/HBASE-22856) | *Major* | **HBASE-Find-Flaky-Tests fails with pip error**

Update the base docker image to ubuntu 18.04 for the find flaky tests jenkins job.


---

* [HBASE-22728](https://issues.apache.org/jira/browse/HBASE-22728) | *Major* | **Upgrade jackson dependencies in branch-1**

1. Stopped using Jackson1(org.codehaus.jackson\*) in HBase code base. 
2. Upgraded to Jackson2(com.fasterxml.jackson\*) instead. 
3. Stopped exposing vulnerable Jackson1 dependencies (org.codehaus.jackson:jackson-mapper-asl:1.9.13) so that downstreamers would not pull it in from HBase.
4. However, since Hadoop requires this dependency, put vulnerable jackson at compile scope in hbase-assembly module so that HBase tarball contains this mapper jar in lib. Still, downsteam applications can't pull in Jackson1 from HBase.
5. Upgraded maven assembly plugin to 3.1.1.


---

* [HBASE-22833](https://issues.apache.org/jira/browse/HBASE-22833) | *Minor* | **MultiRowRangeFilter should provide a method for creating a filter which is functionally equivalent to multiple prefix filters**

Provide a public method in MultiRowRangeFilter class to speed the requirement of filtering with multiple row prefixes, it will expand the row prefixes as multiple rowkey ranges by MultiRowRangeFilter, it's more efficient.
{code}
public MultiRowRangeFilter(byte[][] rowKeyPrefixes);
{code}


---

* [HBASE-22810](https://issues.apache.org/jira/browse/HBASE-22810) | *Major* | **Initialize an separate ThreadPoolExecutor for taking/restoring snapshot**

Introduced a new config key for the snapshot taking/restoring operations at master side:  hbase.master.executor.snapshot.threads, its default value is 3.  means we can have 3 snapshot operations running at the same time.


---

* [HBASE-22618](https://issues.apache.org/jira/browse/HBASE-22618) | *Major* | **added the possibility to load custom cost functions**

<!-- markdown -->
Extends `StochasticLoadBalancer` to support user-provided cost function. These are loaded in addition to the default set of cost functions. Custom function implementations must extend `StochasticLoadBalancer$CostFunction`. Enable any additional functions by placing them on the master class path and configuring `hbase.master.balancer.stochastic.additionalCostFunctions` with a comma-separated list of fully-qualified class names.


---

* [HBASE-22912](https://issues.apache.org/jira/browse/HBASE-22912) | *Major* | **[Backport] HBASE-22867 to branch-1 to avoid ForkJoinPool to spawn thousands of threads**

Replace the ForkJoinPool in CleanerChore by ThreadPoolExecutor which can limit the spawn thread size and avoid the master GC frequently. The replacement is an internal implementation in CleanerChore, so no config key change, the upstream users can just upgrade the hbase master without any other change.


---

* [HBASE-22760](https://issues.apache.org/jira/browse/HBASE-22760) | *Major* | **Stop/Resume Snapshot Auto-Cleanup activity with shell command**

By default, snapshot auto cleanup based on TTL would be enabled for any new cluster. At any point in time, if snapshot cleanup is supposed to be stopped due to some snapshot restore activity or any other reason, it is advisable to disable it using shell command:
hbase\> snapshot\_cleanup\_switch false

We can re-enable it using:
hbase\> snapshot\_cleanup\_switch true

We can query whether snapshot auto cleanup is enabled for cluster using:
hbase\> snapshot\_cleanup\_enabled


---

* [HBASE-22890](https://issues.apache.org/jira/browse/HBASE-22890) | *Major* | **Verify the files when RegionServer is starting and BucketCache is in file mode**

Verify cache file integrity before BucketCache retrieve from file if the IOEngine is persistent. Prevent inconsistency between backingMap and cache file if cache file has been modified. 

The process of verifying integrity is to compare checksum. The checksum is calculated using java.security.MessageDigest class according to cache files full path, actual size and last modified time. 

The encryption algorithms is configurable and default is MD5. The configuration option is : hbase.bucketcache.persistent.file.integrity.check.algorithm


---

* [HBASE-22975](https://issues.apache.org/jira/browse/HBASE-22975) | *Minor* | **Add read and write QPS metrics at server level and table level**

This issue adds read and write QPS(query per second) metrics at server and table level. The table level QPS metrics aggregation at the per-table for each RegionServer. 

Using DropwizardMeter data structure to calculate QPS. And the metrics can be obtained from JMX.


---

* [HBASE-23015](https://issues.apache.org/jira/browse/HBASE-23015) | *Blocker* | **Replace Jackson with relocated gson everywhere but hbase-rest**

<!-- markdown -->

HBase has stopped including Jackson in the classpath seen by downstream  users except for as a part of running the HBase REST Service or when brought in transitively from Apache Hadoop.

Downstream users who still need Jackson classes should include the dependency themselves.

Moving from Jackson2 to shaded Gson can also expose some additional fields in 
serialized JSON strings. e.g. BucketAllocator JSON used to ignore "indexStatistics", "freeSize" earlier, however, now with Gson converter, these fields would be present in serialized string.


---

* [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | *Critical* | **Define a public interface for Canary and move existing implementation to LimitedPrivate**

<!-- markdown -->
Downstream users who wish to programmatically check the health of their HBase cluster may now rely on a public interface derived from the previously private implementation of the canary cli tool. The interface is named `Canary` and can be found in the user facing javadocs.

Downstream users who previously relied on the invoking the canary via the Java classname (either on the command line or programmatically) will need to change how they do so because the non-public implementation has moved.


---

* [HBASE-23101](https://issues.apache.org/jira/browse/HBASE-23101) | *Blocker* | **Backport HBASE-22380 to branch-1**

Incompatible changes were made to the "Region" public interface to make sure a list of clusterIds can be passed to the "bulkLoadHFiles" function to break circle replication during bulk load.

NOTE: Downstream co-processor authors be aware of the change and use the interface/make the necessary adjustments accordingly.



