
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
# Apache HBase  1.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-7767](https://issues.apache.org/jira/browse/HBASE-7767) | *Major* | **Get rid of ZKTable, and table enable/disable state in ZK**

Keeps table enabled/disabled state in HDFS rather than up in ZooKeeper.  Auto-migrates any existing zk state.


---

* [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | *Minor* | **Move Jira-attached file precommit definition from script in Jenkins config to dev-support**

The Jira Precommit job (https://builds.apache.org/job/PreCommit-HBASE-Build/) will now look for a file within the source tree (dev-support/jenkins\_precommit\_jira\_yetus.sh) instead of depending on a script section embedded in the job.


---

* [HBASE-24032](https://issues.apache.org/jira/browse/HBASE-24032) | *Major* | **[RSGroup] Assign created tables to respective rsgroup automatically instead of manual operations**

Admin can determine which tables go to which rsgroup by script  (setting hbase.rsgroup.table.mapping.script with local filystem path) on Master side which aims to lighten the burden of admin operations.  Note, since HBase 3+, rsgroup can be specified in TableDescriptor as well, if clients specify this, master will skip the determination from script.

Here is a simple example of script:
{code}
# Input consists of two string, 1st is the namespace of the table, 2nd is the table name of the table
#!/bin/bash
namespace=$1
tablename=$2
if [[ $namespace == test ]]; then
  echo test
elif [[ $tablename == \*foo\* ]]; then
  echo other
else
  echo default
fi
{code}


---

* [HBASE-8868](https://issues.apache.org/jira/browse/HBASE-8868) | *Minor* | **add metric to report client shortcircuit reads**

Expose file system level read metrics for RegionServer.

If the HBase RS runs on top of HDFS, calculate the aggregation of
ReadStatistics of each HdfsFileInputStream. These metrics include:
(1) total number of bytes read from HDFS.
(2) total number of bytes read from local DataNode.
(3) total number of bytes read locally through short-circuit read.
(4) total number of bytes read locally through zero-copy read.

Because HDFS ReadStatistics is calculated per input stream, it is not
feasible to update the aggregated number in real time. Instead, the
metrics are updated when an input stream is closed.


---

* [HBASE-23678](https://issues.apache.org/jira/browse/HBASE-23678) | *Major* | **Literate builder API for version management in schema**

ColumnFamilyDescriptor new builder API:

    /\*\*
     \* Retain all versions for a given TTL(retentionInterval), and then only a specific number
     \* of versions(versionAfterInterval) after that interval elapses.
     \*
     \* @param retentionInterval Retain all versions for this interval
     \* @param versionAfterInterval Retain no of versions to retain after retentionInterval
     \*/
    public ModifyableColumnFamilyDescriptor setVersionsWithTimeToLive(
        final int retentionInterval, final int versionAfterInterval)


---

* [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | *Major* | **Use a fair ReentrantReadWriteLock for the region close lock**

This change modifies the default acquisition policy for the region's close lock in order to prevent observed starvation of close requests. The new boolean configuration parameter 'hbase.regionserver.fair.region.close.lock' controls the lock acquisition policy: if true, the lock is created in fair mode (default); if false, the lock is created in nonfair mode (the old default).


---

* [HBASE-24121](https://issues.apache.org/jira/browse/HBASE-24121) | *Major* | **[Authorization] ServiceAuthorizationManager isn't dynamically updatable. And it should be.**

Master & RegionService now support refresh policy authorization defined in hbase-policy.xml without restarting service. To refresh policy, please execute hbase shell command: update\_config or update\_config\_all after policy file updated and synced on all nodes.


---

* [HBASE-24112](https://issues.apache.org/jira/browse/HBASE-24112) | *Major* | **[RSGroup] Support renaming rsgroup**

Support RSGroup renaming in core codebase. New API Admin#renameRSGroup(String, String) is introduced in 3.0.0.


---

* [HBASE-24218](https://issues.apache.org/jira/browse/HBASE-24218) | *Major* | **Add hadoop 3.2.x in hadoop check**

Add hadoop-3.2.0 and hadoop-3.2.1 in hadoop check and when '--quick-hadoopcheck' we will only check hadoop-3.2.1.

Notice that, for aligning the personality scripts across all the active branches, we will commit the patch to all active branches, but the hadoop-3.2.x support in hadoopcheck is only applied to branch-2.2+.


---

* [HBASE-24196](https://issues.apache.org/jira/browse/HBASE-24196) | *Major* | **[Shell] Add rename rsgroup command in hbase shell**

user or admin can now use
hbase shell \> rename\_rsgroup 'oldname', 'newname'
to rename rsgroup.


---

* [HBASE-24139](https://issues.apache.org/jira/browse/HBASE-24139) | *Critical* | **Balancer should avoid leaving idle region servers**

StochasticLoadBalancer functional improvement:

StochasticLoadBalancer would rebalance the cluster if there are any idle RegionServers in the cluster (RegionServer having no region), while other RegionServers have at least 1 region available.


---

* [HBASE-24024](https://issues.apache.org/jira/browse/HBASE-24024) | *Major* | **Optionally reject multi() requests with very high no of rows**

New Config: hbase.rpc.rows.size.threshold.reject
-----------------------------------------------------------------------

Default value: false
Description:
If value is true, RegionServer will abort batch requests of Put/Delete with number of rows in a batch operation exceeding threshold defined by value of config: hbase.rpc.rows.warning.threshold.


---

* [HBASE-24271](https://issues.apache.org/jira/browse/HBASE-24271) | *Major* | **Set values in \`conf/hbase-site.xml\` that enable running on \`LocalFileSystem\` out of the box**

<!-- markdown -->
HBASE-24271 makes changes the the default `conf/hbase-site.xml` such that `bin/hbase` will run directly out of the binary tarball or a compiled source tree without any configuration modifications vs. Hadoop 2.8+. This changes our long-standing history of shipping no configured values in `conf/hbase-site.xml`, so existing processes that assume this file is empty of configuration properties may require attention.


---

* [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | *Major* | **Relocate test-only REST "client" from src/ to test/ and mark Private**

Relocate test-only REST RemoteHTable and RemoteAdmin from src/ to test/. And mark them as InterfaceAudience.Private.


---

* [HBASE-24603](https://issues.apache.org/jira/browse/HBASE-24603) | *Critical* | **Zookeeper sync() call is async**

<!-- markdown -->

Fixes a couple of bugs in ZooKeeper interaction. Firstly, zk sync() call that is used to sync the lagging followers with leader so that the client sees a consistent snapshot state was actually asynchronous under the hood. We make it synchronous for correctness. Second, zookeeper events are now processed in a separate thread rather than doing it in the thread context of zookeeper client connection. This decoupling frees up client connection quickly and avoids deadlocks.


---

* [HBASE-24578](https://issues.apache.org/jira/browse/HBASE-24578) | *Major* | **[WAL] Add a parameter to config RingBufferEventHandler's SyncFuture count**

Introduce a new parameter "hbase.regionserver.wal.sync.batch.count" to control the wal sync batch size which is equals to "hbase.regionserver.handler.count" by default. It should work well if you use default wal provider---one wal per regionserver. But if you use read/write separated handlers, you can set "hbase.regionserver.wal.sync.batch.count" to the number of write handlers. And if you use wal-per-groups or wal-per-region, you can consider lower "hbase.regionserver.wal.sync.batch.count", the default number will be too big and consume more memories as the number of wals grows.


---

* [HBASE-24704](https://issues.apache.org/jira/browse/HBASE-24704) | *Major* | **Make the Table Schema easier to view even there are multiple families**

Improve the layout of column family from vertical to horizontal in table UI.


---

* [HBASE-24805](https://issues.apache.org/jira/browse/HBASE-24805) | *Major* | **HBaseTestingUtility.getConnection should be threadsafe**

<!-- markdown -->
Users of `HBaseTestingUtility` can now safely call the `getConnection` method from multiple threads.

As a consequence of refactoring to improve the thread safety of the HBase testing classes, the protected `conf` member of the  `HBaseCommonTestingUtility` class has been marked final. Downstream users who extend from the class hierarchy rooted at this class will need to pass the Configuration instance they want used to their super constructor rather than overwriting the instance variable.


---

* [HBASE-24994](https://issues.apache.org/jira/browse/HBASE-24994) | *Minor* | **Add hedgedReadOpsInCurThread metric**

Expose Hadoop hedgedReadOpsInCurThread metric to HBase.
This metric counts the number of times the hedged reads service executor rejected a read task, falling back to the current thread.
This will help determine the proper size of the thread pool (dfs.client.hedged.read.threadpool.size).


---

* [HBASE-24764](https://issues.apache.org/jira/browse/HBASE-24764) | *Minor* | **Add support of adding base peer configs via hbase-site.xml for all replication peers.**

<!-- markdown -->

Adds a new configuration parameter "hbase.replication.peer.base.config" which accepts a semi-colon separated key=CSV pairs (example: k1=v1;k2=v2_1,v3...). When this configuration is set on the server side, these kv pairs are added to every peer configuration if not already set. Peer specific configuration overrides have precedence over the above default configuration. This is useful in cases when some configuration has to be set for all the peers by default and one does not want to add to every peer definition.


---

* [HBASE-24956](https://issues.apache.org/jira/browse/HBASE-24956) | *Major* | **ConnectionManager#locateRegionInMeta waits for user region lock indefinitely.**

<!-- markdown -->

Without this fix there are situations in which locateRegionInMeta() on a client is not bound by a timeout. This happens because of a global lock whose acquisition was not under any lock scope. This affects client facing API calls that rely on this method to locate a table region in meta. This fix brings the lock acquisition under the scope of "hbase.client.meta.operation.timeout" and that guarantees a bounded wait time.


---

* [HBASE-25154](https://issues.apache.org/jira/browse/HBASE-25154) | *Major* | **Set java.io.tmpdir to project build directory to avoid writing std\*deferred files to /tmp**

Change the java.io.tmpdir to project.build.directory in surefire-maven-plugin, to avoid writing std\*deferred files to /tmp which may blow up the /tmp disk on our jenkins build node.


---

* [HBASE-25163](https://issues.apache.org/jira/browse/HBASE-25163) | *Major* | **Increase the timeout value for nightly jobs**

Increase timeout value for nightly jobs to 16 hours since the new build machines are dedicated to hbase project, so we are allowed to use it all the time.


---

* [HBASE-25212](https://issues.apache.org/jira/browse/HBASE-25212) | *Major* | **Optionally abort requests in progress after deciding a region should close**

If hbase.regionserver.close.wait.abort is set to true, interrupt RPC handler threads holding the region close lock. 

Until requests in progress can be aborted, wait on the region close lock for a configurable interval (specified by hbase.regionserver.close.wait.time.ms, default 60000 (1 minute)). If we have failed to acquire the close lock after this interval elapses, if allowed (also specified by hbase.regionserver.close.wait.abort), abort the regionserver.

We will attempt to interrupt any running handlers every hbase.regionserver.close.wait.interval.ms (default 10000 (10 seconds)) until either the close lock is acquired or we reach the maximum wait time.



