
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
# Apache HBase  0.95.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-5525](https://issues.apache.org/jira/browse/HBASE-5525) | *Major* | **Truncate and preserve region boundaries option**

Adds 'truncate\_preserve' to shell; removes all data but preserves region count and region boundaries


---

* [HBASE-7842](https://issues.apache.org/jira/browse/HBASE-7842) | *Major* | **Add compaction policy that explores more storefile groups**

Default compaction policy has been changed to a new policy that will explore more groups of files and is more strict about enforcing the size ratio requirements.


---

* [HBASE-1936](https://issues.apache.org/jira/browse/HBASE-1936) | *Major* | **ClassLoader that loads from hdfs; useful adding filters to classpath without having to restart services**

With this patch, customer filters can be dropped into a pre-configured folder (hbase.dynamic.jars.dir), which can be in hdfs. Region servers can pick them up dynamically, no need to restart the cluster for the new filters to take effect.

However, if a filter class is already loaded, it won't be un-loaded. Therefore, we can't load a new version of an existing class.  Users have to have a proper way to do filter class versioning.


---

* [HBASE-7801](https://issues.apache.org/jira/browse/HBASE-7801) | *Major* | **Allow a deferred sync option per Mutation.**

HBase clients from 0.94.7 going forward support the following new API for Mutations (Put/Delete/Append/Increment).
Mutation.setDurability(Durability). Possible durability settings are: USE\_DEFAULT (use whatever the table has been configured with), SKIP\_WAL (do not write anything to the WAL), ASYNC\_WAL (write to the WAL asynchronously), SYNC (write to the WAL synchrously), FSYNC (write to the WAL synchronously and force to disc everywhere - currently not supported).

Regionservers prior to 0.94.7 with ignore anything but SKIP\_WAL and assume USE\_DEFAULT.


---

* [HBASE-7828](https://issues.apache.org/jira/browse/HBASE-7828) | *Minor* | **Expose HBase Scan object's "batch" property for intra-row batching in Thrift API**

Scanning in Thrift now supports the same functionality as Scan.setBatch


---

* [HBASE-8352](https://issues.apache.org/jira/browse/HBASE-8352) | *Blocker* | **Rename '.snapshot' directory**

In order to avoid name collision with hdfs snapshot, ".snapshot" under HBase root directory must be renamed as ".hbase-snapshot" before deployment of 0.94.7 or later release is started.

Don't do rolling upgrade between 0.94.6.1 and 0.94.7 if there're on-going snapshots activities.
Sequence of actions should be:

1. make sure all on-going snapshots activities have completed
2. shutdown all the masters
3. rename ".snapshot" under HBase root directory as ".hbase-snapshot"
4. upgrade the masters to 0.94.7+ release (You now can perform clone or restore, but not taking snapshots)
5. upgrade the region servers
(You should not take snapshots until all the regions server are aligned to 0.94.7+ release)

If you take a snapshot during the RS upgrades nothing critical happens. The ".snapshot" folder would appear again and the snapshot will fail since half of the data will be in ".hbase-snapshot" and the other half in ".snapshot"


---

* [HBASE-7704](https://issues.apache.org/jira/browse/HBASE-7704) | *Blocker* | **migration tool that checks presence of HFile V1 files**

Adds tool to check if any v1 hfiles present under hbase.rootdir.  Run this tool before you move to hbase 0.95/0.96 because hfile v1 files are no longer supported in the newer versions of hbase (If an hfile v1 is found, run a major compaction on the offending, containing region and that should purge the v1 file).

Here is what the usage for the tool looks like:


{code}
bin/hbase org.apache.hadoop.hbase.util.HFileV1Detector -h
usage: HFileV1Detector [-h] [-n \<arg\>] [-p \<arg\>]
 -h,--help                    Help
 -n,--numberOfThreads \<arg\>   Number of threads to use while processing
                              HFiles.
 -p,--path \<arg\>              Path to a table, or hbase installation
In case no option is provided, it processes hbase.rootdir using 10 threads.
Example:
 To detect any HFileV1 in a given hbase installation '/myhbase':
 $ $HBASE\_HOME/bin/hbase org.apache.hadoop.hbase.util.HFileV1Detector -p /myhbase
{code}


---

* [HBASE-7838](https://issues.apache.org/jira/browse/HBASE-7838) | *Major* | **HBase regionserver never stops when running `hbase-daemon.sh stop regionserver`**

Add timeout (default 1200 seconds) on stopping services with hbase-daemon.sh. The timeout is configurable with the environment variable HBASE\_STOP\_TIMEOUT.


---

* [HBASE-7167](https://issues.apache.org/jira/browse/HBASE-7167) | *Major* | **Thrift's deleteMultiple() raises exception instead of returning list of failed deletes**

Updated documentation to reflect that Thrift2 API deleteMultiple() throws a TIOError if any delete fails.


---

* [HBASE-8214](https://issues.apache.org/jira/browse/HBASE-8214) | *Major* | **Remove proxy and engine, rely directly on pb generated Service**

Take on the protobuf Service model.   Undoes two layers of rpc -- a proxy that did reflection to hook up methods and an 'engine' layer that was put in place to support secure/insecure and Writables vs Protobuf rpc'ing.


---

* [HBASE-8272](https://issues.apache.org/jira/browse/HBASE-8272) | *Minor* | **make compaction checker frequency configurable per table/cf**

hbase.server.compactchecker.interval.multiplier configuration setting was added to enable one to make more frequent compaction checks in the cluster, or in specific regions. See hbase-default.xml for details.


---

* [HBASE-7897](https://issues.apache.org/jira/browse/HBASE-7897) | *Critical* | **Add support for tags to Cell Interface**

Added below to Cell Interface:

{code}
+  /\*\*
+   \* @return the tags byte array
+   \*/
+  byte[] getTagsArray();

+  /\*\*
+   \* @return the first offset where the tags start in the Cell
+   \*/
+  int getTagsOffset();
+
+  /\*\*
+   \* @return the total length of the tags in the Cell.
+   \*/
+  int getTagsLength();
{code}


---

* [HBASE-7932](https://issues.apache.org/jira/browse/HBASE-7932) | *Critical* | **Do the necessary plumbing for the region locations in META table and send the info to the RegionServers**

Introduces "favored nodes" for region files. Has an implementation of LoadBalancer that assigns favored nodes for each region. There is a Primary RegionServer that hosts the region, and then there is Secondary and Tertiary RegionServers. Currently, the favored nodes information is used in creating HDFS files - the Primary RegionServer passes the primary, secondary, tertiary node addresses as hints to the DistributedFileSystem API for creating files on the filesystem. These nodes are treated as hints by the HDFS to place the blocks of the file (this will be complete when HBASE-7942 is addressed). This alleviates the problem to do with reading from remote nodes (since we can make the Secondary RegionServer as the new Primary RegionServer) after a region is recovered. This should help provide consistent read latencies for the regions even when their primary region servers die. The implementation of the balancer is not complete as of this issue.


---

* [HBASE-7006](https://issues.apache.org/jira/browse/HBASE-7006) | *Critical* | **[MTTR] Improve Region Server Recovery Time - Distributed Log Replay**

Distributed Log Replay Description:

After a region server fails, we firstly assign a failed region to another region server with recovering state marked in ZooKeeper. Then a SplitLogWorker directly replays edits from WAL(Write-Ahead-Log)s of the failed region server to the region after it's re-opened in the new location. When a region is in recovering state, it can also accept writes but no reads(including Append and Increment), region split or merge. 

The feature piggybacks on existing distributed log splitting framework and directly replay WAL edits to another region server instead of creating recovered.edits files.

The advantages over existing log splitting recovered edits implementation:
1) Eliminate the steps to write and read recovered.edits files. There could be thousands of recovered.edits files are created and written concurrently during a region server recovery. Many small random writes could degrade the overall system performance.
2) Allow writes even when a region is in recovering state. It only takes seconds for a failed over region to accept writes again. 

The feature can be enabled by setting hbase.master.distributed.log.replay to true (by default is false)


---

* [HBASE-5930](https://issues.apache.org/jira/browse/HBASE-5930) | *Major* | **Limits the amount of time an edit can live in the memstore.**

This feature limits the time that unflushed data will stay in the memstore.
By default a memstore will flush if data older than 1h (3600000ms) is present.

This can be configured via hbase.regionserver.optionalcacheflushinterval (default value is 3600000).


---

* [HBASE-8355](https://issues.apache.org/jira/browse/HBASE-8355) | *Major* | **BaseRegionObserver#pre(Compact\|Flush\|Store)ScannerOpen returns null**

As pointed out in https://github.com/forcedotcom/phoenix/pull/131, BaseRegionObserver#preCompactScannerOpen returns null by default, which hoses any coprocessors down the line, making override of this method mandatory in all subclasses of BaseRegionObserver, when there are multiple levels of coprocessor stacking - this same behavior is present in preFlushScannerOpen and preStoreScannerOpen. 

Instead, we default to returning the passed scanner so earlier coprocessor changes are preserved and still support the default "no custom scanner" by returning null (default scanner passed to each hook).


---

* [HBASE-8450](https://issues.apache.org/jira/browse/HBASE-8450) | *Critical* | **Update hbase-default.xml and general recommendations to better suit current hw, h2, experience, etc.**

Changed defaults:

+ max versions now 1 instead of 3
+ row blooms on by default (except on .META. table)
+ handlers 30 instead of 10
+ upped memstore lower limit from .35 to .38
+ zookeeper timeout default is 90seconds instead of 180
+ client pause is 100ms instead of 1000ms
+ retries are now 20 instead of 10 (so overall we still wait same amount of time)
+ bulkload retries is 10 instead of infinite
+ major compactions are now once a week instead of once every 24 hours; they are staggered so all regionservers do not start compacting at the same time
+ blockingstorefiles is 10 instead of 7
+ block cache is 0.4 instead of 0.25
+ Previous, default for hbase.rootdir was /tmp/hbase-${user.name}.  Now it is ${java.io.tmpdir}/hbase-${user.name} which is usually the same location but may not be (on macos, it points to /var/tmp....).


---

* [HBASE-8420](https://issues.apache.org/jira/browse/HBASE-8420) | *Major* | **Port  HBASE-6874  Implement prefetching for scanners from 0.89-fb**

By default, prefetching is enabled in the trunk version (0.95.2 and 0.98).  To disable it, users have to set prefetching off in the Scan object.

This patch introduced a configuration hbase.hregionserver.prefetcher.resultsize.max to control how much data we can prefetch.  By default, it is 256MB.  If there is already more than that much data prefetched, no new prefetching will be scheduled until some prefetched results are retrieved by clients, so there is room again for new prefetching.


---

* [HBASE-8583](https://issues.apache.org/jira/browse/HBASE-8583) | *Major* | **Create a new IntegrationTestBigLinkedListWithChaosMonkey**

New hbase-it integration test, IntegrationTestBigLinkedListWithChaosMonkey


---

* [HBASE-5050](https://issues.apache.org/jira/browse/HBASE-5050) | *Major* | **[rest] SPNEGO-based authentication**

A new configuration "hbase.rest.authentication" is added to enable authentication. Currently, only "kerberos" is supported.  You also need to specify the SPNEGO principal with configuration "hbase.rest.kerberos.spnego.principal".  The keytab configured with "hbase.rest.keytab.file" should have a key for this SPNEGO principal besides the REST server principal.



