
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
# Apache HBase  3.0.0-alpha-1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-13992](https://issues.apache.org/jira/browse/HBASE-13992) | *Major* | **Integrate SparkOnHBase into HBase**

This release includes initial support for running Spark against HBase with a richer feature set than was previously possible with MapReduce bindings:

\* Support for Spark and Spark Streaming against Spark 2.1.1
\* RDD/DStream formation from scan operations
\* convenience methods for interacting with HBase from an HBase backed RDD / DStream instance
\* examples in both the Spark Java API and Spark Scala API
\* support for running against a secure HBase cluster


---

* [HBASE-14849](https://issues.apache.org/jira/browse/HBASE-14849) | *Major* | **Add option to set block cache to false on SparkSQL executions**

For user configurable parameters for HBase datasources. Please refer to org.apache.hadoop.hbase.spark.datasources.HBaseSparkConf for details. 

User can either set them in SparkConf, which will take effect globally, or configure it per table, which will overwrite the value set in SparkConf. If not set, the default value will take effect.

Currently three parameters are supported.
1. spark.hbase.blockcache.enable for blockcache enable/disable. Default is enable,  but note that this potentially may slow down the system.
2. spark.hbase.cacheSize for cache size when performing HBase table scan. Default value is 1000
3. spark.hbase.batchNum for the batch number when performing HBase table scan. Default value is 1000.


---

* [HBASE-15184](https://issues.apache.org/jira/browse/HBASE-15184) | *Critical* | **SparkSQL Scan operation doesn't work on kerberos cluster**

Before this patch, users of the spark HBaseContext would fail due to lack of  privilege exceptions.  

Note: 
\* It is preferred to have spark in spark-on-yarn mode if Kerberos is used. 
\* This is orthogonal to issues with a kerberized spark cluster via InputFormats.


---

* [HBASE-15572](https://issues.apache.org/jira/browse/HBASE-15572) | *Major* | **Adding optional timestamp semantics to HBase-Spark**

Right now the timestamp is always latest. With this patch, users can select timestamps they want.
In this patch, 4 parameters, "timestamp", "minTimestamp", "maxiTimestamp" and "maxVersions" are added to HBaseSparkConf. Users can select a timestamp, they can also select a time range with minimum timestamp and maximum timestamp.


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

* [HBASE-17933](https://issues.apache.org/jira/browse/HBASE-17933) | *Major* | **[hbase-spark]  Support Java api for bulkload**

<!-- markdown -->
The integration module for Apache Spark now includes Java-friendly equivalents for the `bulkLoad` and `bulkLoadThinRows` methods in `JavaHBaseContext`.


---

* [HBASE-18050](https://issues.apache.org/jira/browse/HBASE-18050) | *Critical* | **Add document about the IA.Private classes which appear in IA.LimitedPrivate interfaces**

Adds this qualification to section on Audience annotation: " Notice that, you may find that the classes which are declared as IA.Private are used as parameter or return value for the interfaces which are declared as IA.LimitedPrivate. This is possible. You should treat the IA.Private object as a monolithic object, which means you can use it as a parameter to call other methods, or return it, but you should never try to access its methods or fields."


---

* [HBASE-18175](https://issues.apache.org/jira/browse/HBASE-18175) | *Critical* | **Add hbase-spark integration test into hbase-spark-it**

<!-- markdown -->
HBase now ships with an integration test for our integration with Apache Spark.

You can run this test on a cluster by using an equivalent to the below, e.g. if the version of HBase is 2.0.0-alpha-2

```
spark-submit --class org.apache.hadoop.hbase.spark.IntegrationTestSparkBulkLoad HBASE_HOME/lib/hbase-spark-it-2.0.0-alpha-2-tests.jar -Dhbase.spark.bulkload.chainlength=500000 -m slowDeterministic
```


---

* [HBASE-18646](https://issues.apache.org/jira/browse/HBASE-18646) | *Major* | **[Backup] LogRollMasterProcedureManager: make procedure timeout, thread pool size configurable**

Two configuration parameters have been added:

hbase.backup.logroll.timeout.millis - log roll procedure timeout (default - 60000 )
hbase.backup.logroll.pool.thread.number - thread pool number (default - 8)


---

* [HBASE-18760](https://issues.apache.org/jira/browse/HBASE-18760) | *Blocker* | **Make hbase-shaded-check-invariants part of precommit**

<!-- markdown -->
adds a precommit test named 'shadedjars' to our personality that runs through the maven verify goal for the module `hbase-shaded/hbase-shaded-check-
invariants`.


---

* [HBASE-19397](https://issues.apache.org/jira/browse/HBASE-19397) | *Major* | **Design  procedures for ReplicationManager to notify peer change event from master**

Introduce 5 procedures to do peer modifications:
AddPeerProcedure
RemovePeerProcedure
UpdatePeerConfigProcedure
EnablePeerProcedure
DisablePeerProcedure

The procedures are all executed with the following stage:
1. Call pre CP hook, if an exception is thrown then give up
2. Check whether the operation is valid, if not then give up
3. Update peer storage. Notice that if we have entered this stage, then we can not rollback any more.
4. Schedule sub procedures to refresh the peer config on every RS.
5. Do post cleanup if any.
6. Call post CP hook. The exception thrown will be ignored since we have already done the work.

The procedure will hold an exclusive lock on the peer id, so now there is no concurrent modifications on a single peer.

And now it is guaranteed that once the procedure is done, the peer modification has already taken effect on all RSes.

Abstracte a storage layer for replication peer/queue manangement, and refactored the upper layer to remove zk related naming/code/comment.

Add pre/postExecuteProcedures CP hooks to RegionServerObserver, and add permission check for executeProcedures method which requires the caller to be system user or super user.

On rolling upgrade: just do not do any replication peer modifications during the rolling upgrading. There is no pb/layout changes on the peer/queue storage on zk.


---

* [HBASE-19848](https://issues.apache.org/jira/browse/HBASE-19848) | *Major* | **Zookeeper thread leaks in hbase-spark bulkLoad method**

**WARNING: No release note provided for this change.**


---

* [HBASE-18135](https://issues.apache.org/jira/browse/HBASE-18135) | *Major* | **Track file archival for low latency space quota with snapshots**

Changes the manner in which file space consumption is reported to the Master for the purposes of space quota tracking to reduce the latency in which system space utilization is observed. This will have a positive effect in how quickly HBase will react to changes in filesystem usage related to file archiving.


---

* [HBASE-16179](https://issues.apache.org/jira/browse/HBASE-16179) | *Critical* | **Fix compilation errors when building hbase-spark against Spark 2.0**

As of this JIRA, Spark version is upgraded from 1.6 to 2.1.1


---

* [HBASE-20148](https://issues.apache.org/jira/browse/HBASE-20148) | *Major* | **Make serial replication as a option for a peer instead of a table**

A new method setSerial has been added to the interface ReplicationPeerConfigBuilder which is marked as IA.Public. This interface is not supposed to be implemented by client code, but if you do, this will be an incompatible change as you need to add this method to your implementation too.


---

* [HBASE-19389](https://issues.apache.org/jira/browse/HBASE-19389) | *Critical* | **Limit concurrency of put with dense (hundreds) columns to prevent write handler exhausted**

After HBASE-19389 we introduced a RegionServer self-protection mechanism to prevent write handler getting exhausted by high concurrency put with dense columns, mainly through two new properties: hbase.region.store.parallel.put.limit.min.column.count to decide what kind of put (with how many columns within a single column family) to limit (100 by default) and hbase.region.store.parallel.put.limit to limit the concurrency (10 by default). There's another property for advanced user and please check source and javadoc of StoreHotnessProtector for more details.


---

* [HBASE-19024](https://issues.apache.org/jira/browse/HBASE-19024) | *Critical* | **Configurable default durability for synchronous WAL**

The default durability setting for the synchronous WAL is Durability.SYNC\_WAL, which triggers HDFS hflush() to flush edits to the datanodes. We also support Durability.FSYNC\_WAL, which instead triggers HDFS hsync() to flush \_and\_ fsync edits. This change introduces the new configuration setting "hbase.wal.hsync", defaulting to FALSE, that if set to TRUE changes the default durability setting for the synchronous WAL to  FSYNC\_WAL.


---

* [HBASE-20242](https://issues.apache.org/jira/browse/HBASE-20242) | *Major* | **The open sequence number will grow if we fail to open a region after writing the max sequence id file**

Now when opening a region, we will store the current max sequence id of the region to its max sequence id file instead of the 'next sequence id'. This could avoid the sequence id bumping when we fail to open a region, and also align to the behavior when we close a region.


---

* [HBASE-20159](https://issues.apache.org/jira/browse/HBASE-20159) | *Major* | **Support using separate ZK quorums for client**

After HBASE-20159 we allow client to use different ZK quorums by introducing three new properties: hbase.client.zookeeper.quorum and hbase.client.zookeeper.property.clientPort to specify client zookeeper properties (note that the combination of these two properties should be different from the server ZK quorums), and hbase.client.zookeeper.observer.mode to indicate whether the client ZK nodes are in observer mode (false by default)

HConstants.DEFAULT\_ZOOKEPER\_CLIENT\_PORT has been removed in HBase 3.0 and replaced by the correctly spelled DEFAULT\_ZOOKEEPER\_CLIENT\_PORT.


---

* [HBASE-20046](https://issues.apache.org/jira/browse/HBASE-20046) | *Major* | **Reconsider the implementation for serial replication**

Now in replication we can make sure the order of pushing logs is same as the order of requests from client. Set the serial flag to true for a replication peer to enable this feature.


---

* [HBASE-20406](https://issues.apache.org/jira/browse/HBASE-20406) | *Major* | **HBase Thrift HTTP - Shouldn't handle TRACE/OPTIONS methods**

<!-- markdown -->
When configured to do thrift-over-http, the HBase Thrift API Server no longer accepts the HTTP methods TRACE nor OPTIONS.


---

* [HBASE-20388](https://issues.apache.org/jira/browse/HBASE-20388) | *Major* | **nightly tests running on a feature branch should only comment on that feature branch's jira**

<!-- markdown -->

N.B. this issue only impacts developers working on Apache HBase.

Committers who wish to use a feature branch and do so by creating a fork off of `master` that is named for the umbrella JIRA corresponding to that feature should now automatically get nightly build results posted to said umbrella JIRA. Committers may freely rebase their feature branch as new commits come into `master`. In the past, such rebasing would cause the feature branch's nightly tests to comment on JIRA for each commit that was newly included by the rebase. Now, the nightly test will skip those comments and *only* comment on the feature branch umbrella JIRA.


---

* [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | *Minor* | **The hbase shell clone\_snaphost command returns bad error message**

<!-- markdown -->

When attempting to clone a snapshot but using a namespace that does not exist, the HBase shell will now correctly report the exception as caused by the passed namespace. Previously, the shell would report that the problem was an unknown namespace but it would claim the user provided table name was not found as a namespace. Both before and after this change the shell properly used the passed namespace to attempt to handle the request.


---

* [HBASE-20499](https://issues.apache.org/jira/browse/HBASE-20499) | *Minor* | **Replication/Priority executors can use specific max queue length as default value instead of general maxQueueLength**

Added new config 'hbase.ipc.server.replication.max.callqueue.length'


---

* [HBASE-20327](https://issues.apache.org/jira/browse/HBASE-20327) | *Minor* | **When qualifier is not specified, append and incr operation do not work (shell)**

This change will enable users to perform append and increment operation with null qualifier via hbase-shell.


---

* [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | *Minor* | **Client is not able to execute REST queries in a secure cluster**

Added 'hbase.rest.http.allow.options.method' configuration property to allow user to decide whether Rest Server HTTP should allow OPTIONS method or not. By default it is enabled in HBase 2.1.0+ versions and in other versions it is disabled.
Similarly 'hbase.thrift.http.allow.options.method' is added HBase 1.5, 2.1.0 and 3.0.0 versions. It is disabled by default.


---

* [HBASE-20544](https://issues.apache.org/jira/browse/HBASE-20544) | *Blocker* | **downstream HBaseTestingUtility fails with invalid port**

<!-- markdown -->

HBase now relies on an internal mechanism to determine when it is running a local hbase cluster meant for external interaction vs an encapsulated test. When created via the `HBaseTestingUtility`, ports for Master and RegionServer services and UIs will be set to random ports to allow for multiple parallel uses on a single machine. Normally when running a Standalone HBase Deployment (as described in the HBase Reference Guide) the ports will be picked according to the same defaults used in a full cluster set up. If you wish to instead use the random port assignment set `hbase.localcluster.assign.random.ports` to true.


---

* [HBASE-20530](https://issues.apache.org/jira/browse/HBASE-20530) | *Critical* | **Composition of backup directory containing namespace when restoring is different from the actual hfile location**

There is a directory layout change (tables with default namespace now get additional level in directory structure of the WALPlayer output) for WALPlayer output in WAL - to- HFile conversion mode, but only when multiple tables are specified (this is case only for backup module). The other tools using WALPLayer are not affected (unless they use multiple tables mode introduced by B&R feature).


---

* [HBASE-20601](https://issues.apache.org/jira/browse/HBASE-20601) | *Minor* | **Add multiPut support and other miscellaneous to PE**

1. Add multiPut support
Set --multiPut=number to enable batchput(meanwhile, --autoflush need be set to false)

2. Add Connection Count support
Added a new parameter connCount to PE. set --connCount=2 means all threads will share 2 connections.
oneCon option and connCount option shouldn't be set at the same time.

3. Add avg RT and avg TPS/QPS statstic for all threads

4. Delete some redundant code
Now RandomWriteTest is inherited from SequentialWrite.


---

* [HBASE-20501](https://issues.apache.org/jira/browse/HBASE-20501) | *Blocker* | **Change the Hadoop minimum version to 2.7.1**

<!-- markdown -->
HBase is no longer able to maintain compatibility with Apache Hadoop versions that are no longer receiving updates. This release raises the minimum supported version to Hadoop 2.7.1. Downstream users are strongly advised to upgrade to the latest Hadoop 2.7 maintenance release.

Downstream users of earlier HBase versions are similarly advised to upgrade to Hadoop 2.7.1+. When doing so, it is especially important to follow the guidance from [the HBase Reference Guide's Hadoop section](http://hbase.apache.org/book.html#hadoop) on replacing the Hadoop artifacts bundled with HBase.


---

* [HBASE-20592](https://issues.apache.org/jira/browse/HBASE-20592) | *Minor* | **Create a tool to verify tables do not have prefix tree encoding**

PreUpgradeValidator tool with DataBlockEncoding validator was added to verify cluster is upgradable to HBase 2.


---

* [HBASE-18116](https://issues.apache.org/jira/browse/HBASE-18116) | *Major* | **Replication source in-memory accounting should not include bulk transfer hfiles**

Before this change we would incorrectly include the size of enqueued store files for bulk replication in the calculation for determining whether or not to rate limit the transfer of WAL edits. Because bulk replication uses a separate and asynchronous mechanism for file transfer this could incorrectly limit the batch sizes for WAL replication if bulk replication in progress, with negative impact on latency and throughput.


---

* [HBASE-20579](https://issues.apache.org/jira/browse/HBASE-20579) | *Minor* | **Improve snapshot manifest copy in ExportSnapshot**

This patch adds an FSUtil.copyFilesParallel() to help copy files in parallel, and it will return all the paths of directories and files traversed. Thus when we copy manifest in ExportSnapshot, we can copy reference files concurrently and use the paths it returns to help setOwner and setPermission. 
The size of thread pool is determined by the configuration snapshot.export.copy.references.threads, and its default value is the number of runtime available processors.


---

* [HBASE-20634](https://issues.apache.org/jira/browse/HBASE-20634) | *Critical* | **Reopen region while server crash can cause the procedure to be stuck**

A second attempt at fixing HBASE-20173. Fixes unfinished keeping of server state inside AM (ONLINE=\>SPLITTING=\>OFFLINE=\>null). Concurrent unassigns look at server state to figure if they should wait on SCP to wake them up or not.


---

* [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | *Critical* | **REST Java client is not able to negotiate with the server in the secure mode**

Adds a negotiation logic between a secure java REST client and server. After this jira the Java REST client will start responding to the Negotiate challenge sent by the server. Adds RESTDemoClient which can be used to verify whether the secure Java REST client works against secure REST server or not.


---

* [HBASE-19852](https://issues.apache.org/jira/browse/HBASE-19852) | *Major* | **HBase Thrift 1 server SPNEGO Improvements**

Adds two new properties for hbase-site.xml for THRIFT SPNEGO when in HTTP mode:
\* hbase.thrift.spnego.keytab.file
\* hbase.thrift.spnego.principal


---

* [HBASE-20630](https://issues.apache.org/jira/browse/HBASE-20630) | *Major* | **B&R: Delete command enhancements**

Added two options to Delete command: 
-l - list of backup ids, comma-separeted 
-k N - keep all backups newer than N days 

They are mutually exclusive


---

* [HBASE-20681](https://issues.apache.org/jira/browse/HBASE-20681) | *Major* | **IntegrationTestDriver fails after HADOOP-15406 due to missing hamcrest-core**

<!-- markdown -->

Users of our integration tests on Hadoop 3 can now add all needed dependencies by pointing at jars included in our binary convenience artifact.

Prior to this fix, downstream users on Hadoop 3 would need to get a copy of the Hamcrest v1.3 jar from elsewhere.


---

* [HBASE-20332](https://issues.apache.org/jira/browse/HBASE-20332) | *Critical* | **shaded mapreduce module shouldn't include hadoop**

<!-- markdown -->

The `hbase-shaded-mapreduce` artifact no longer include its own copy of Hadoop classes. Users who make use of the artifact via YARN should be able to get these classes from YARN's classpath without having to make any changes.


---

* [HBASE-20333](https://issues.apache.org/jira/browse/HBASE-20333) | *Critical* | **break up shaded client into one with no Hadoop and one that's standalone**

<!-- markdown -->

Downstream users who need to use both HBase and Hadoop APIs should switch to relying on the new `hbase-shaded-client-byo-hadoop` artifact rather than the existing `hbase-shaded-client` artifact. The new artifact no longer includes and Hadoop classes.

It should work in combination with either the output of `hadoop classpath` or the Hadoop provided client-facing shaded artifacts in Hadoop 3+.


---

* [HBASE-20615](https://issues.apache.org/jira/browse/HBASE-20615) | *Major* | **emphasize use of shaded client jars when they're present in an install**

<!-- markdown -->

HBase's built-in scripts now rely on the downstream facing shaded artifacts where possible. In particular, of interest to downstream users, the `hbase classpath` and `hbase mapredcp` commands now return the relevant shaded client artifact and only those third-party jars needed to make use of them (e.g. slf4j-api, commons-logging, htrace, etc).

Downstream users should note that by default the `hbase classpath` command will treat having `hadoop` on the shell's PATH as an implicit request to include the output of the `hadoop classpath` command in the returned classpath. This long-existing behavior can be opted out of by setting the environment variable `HBASE_DISABLE_HADOOP_CLASSPATH_LOOKUP` to the value "true". For example: `HBASE_DISABLE_HADOOP_CLASSPATH_LOOKUP="true" bin/hbase classpath`.


---

* [HBASE-19735](https://issues.apache.org/jira/browse/HBASE-19735) | *Major* | **Create a minimal "client" tarball installation**

<!-- markdown -->

The HBase convenience binary artifacts now includes a client focused tarball that a) includes more docs and b) does not include scripts or jars only needed for running HBase cluster services.

The new artifact is made as a normal part of the `assembly:single` maven command.


---

* [HBASE-20334](https://issues.apache.org/jira/browse/HBASE-20334) | *Major* | **add a test that expressly uses both our shaded client and the one from hadoop 3**

<!-- markdown -->

HBase now includes a helper script that can be used to run a basic functionality test for a given HBase installation at in `dev_support`. The test can optionally be given an HBase client artifact to rely on and can optionally be given specific Hadoop client artifacts to use.

For usage information see `./dev-support/hbase_nightly_pseudo-distributed-test.sh --help`.

The project nightly tests now make use of this test to check running on top of Hadoop 2, Hadoop 3, and Hadoop 3 with shaded client artifacts.


---

* [HBASE-20708](https://issues.apache.org/jira/browse/HBASE-20708) | *Blocker* | **Remove the usage of RecoverMetaProcedure in master startup**

Introduce an InitMetaProcedure to initialize meta table for a new HBase deploy. Marked RecoverMetaProcedure deprecated and remove the usage of it in the current code base. We still need to keep it in place for compatibility. The code in RecoverMetaProcedure has been moved to ServerCrashProcedure, and SCP will always be enabled and we will rely on it to bring meta region online.

For more on the issue addressed by this commit, see the design doc for overview and plan: https://docs.google.com/document/d/1\_872oHzrhJq4ck7f6zmp1J--zMhsIFvXSZyX1Mxg5MA/edit#heading=h.xy1z4alsq7uy


---

* [HBASE-20642](https://issues.apache.org/jira/browse/HBASE-20642) | *Major* | **IntegrationTestDDLMasterFailover throws 'InvalidFamilyOperationException**

This changes client-side nonce generation to use the same nonce for re-submissions of client RPC DDL operations.


---

* [HBASE-20740](https://issues.apache.org/jira/browse/HBASE-20740) | *Major* | **StochasticLoadBalancer should consider CoprocessorService request factor when computing cost**

Introduce CPRequestCostFunction for StochasticLoadBalancer, which will consider CoprocessorService request count when computing region load cost.
the multiplier can be set by hbase.master.balancer.stochastic.cpRequestCost, default value is 5.


---

* [HBASE-20194](https://issues.apache.org/jira/browse/HBASE-20194) | *Critical* | **Basic Replication WebUI - Master**

After HBASE-20194, we added 2 parts to master's web page. 
One is Peers that shows all replication peers and some of their configurations, like peer id, cluster key, state, bandwidth, and which namespace or table it will replicate.
The other one is replication status of all regionservers, we added a tab to region servers division, then we can check the replication delay of all region servers for any peer. This table shows AgeOfLastShippedOp, SizeOfLogQueue and ReplicationLag for each regionserver and the table is sort by ReplicationLag in descending order. By this way we can easily find the problematic region server. If the replication delay is UNKNOWN, that means this walGroup doesn't start replicate yet and it may get disabled. ReplicationLag will update once this peer start replicate.


---

* [HBASE-20270](https://issues.apache.org/jira/browse/HBASE-20270) | *Major* | **Turn off command help that follows all errors in shell**

<!-- markdown -->
The command help that followed all errors, before, is now no longer available. Erroneous command inputs would now just show error-texts followed by the shell command to try for seeing the help message. It looks like: For usage try 'help “create”’. Operators can copy-paste the command to get the help message.


---

* [HBASE-20357](https://issues.apache.org/jira/browse/HBASE-20357) | *Major* | **AccessControlClient API Enhancement**

This enhances the AccessControlClient APIs to retrieve the permissions based on namespace, table name, family and qualifier for specific user. AccessControlClient can also validate a user whether allowed to perform specified operations on a particular table.
Following APIs have been added,
1) getUserPermissions(Connection connection, String tableRegex, byte[] columnFamily, byte[] columnQualifier, String userName) 
	 Scope of retrieving permission will be same as existing.
2) hasPermission(onnection connection, String tableName, byte[] columnFamily, byte[] columnQualifier, String userName, Permission.Action... actions)
     Scope of validating user privilege,
           User can perform self check without any special privilege but ADMIN privilege will be required to perform check for other users.
           For example, suppose there are two users "userA" & "userB" then there can be below scenarios,
            a. When userA want to check whether userA have privilege to perform mentioned actions
                 userA don't need ADMIN privilege, as it's a self query.
            b. When userA want to check whether userB have privilege to perform mentioned actions,
                 userA must have ADMIN or superuser privilege, as it's trying to query for other user.


---

* [HBASE-20193](https://issues.apache.org/jira/browse/HBASE-20193) | *Critical* | **Basic Replication Web UI - Regionserver**

After HBASE-20193, we add a section to web ui to show the replication status of each wal group. There are 2 parts of this section, they both show the peerId, wal group and current replicating log of each replication source. And one is showing the information of replication log queue, i.e. size of current log, log queue size and replicating offset. The other one is showing the delay of replication, i.e. last shipped age and replication delay.
If the offset shows -1 and replication delay is UNKNOWN, that means replication is not started. This may be caused by this peer is disabled or the replicationEndpoint is sleeping due to some reason.


---

* [HBASE-20244](https://issues.apache.org/jira/browse/HBASE-20244) | *Blocker* | **NoSuchMethodException when retrieving private method decryptEncryptedDataEncryptionKey from DFSClient**

HDFS-12574 made an incompatible change to HdfsKMSUtil with different method signature.
This issue uses reflection to try known method signatures in order to work with hadoop releases with and without HDFS-12574


---

* [HBASE-20839](https://issues.apache.org/jira/browse/HBASE-20839) | *Blocker* | **Fallback to FSHLog if we can not instantiated AsyncFSWAL when user does not specify AsyncFSWAL explicitly**

As we hack into the internal of DFSClient when implementing AsyncFSWAL to get better performance, a patch release of hadoop can make it broken.

So now, if user does not specify a wal provider, then we will first try to use 'asyncfs', i.e, the AsyncFSWALProvider. If we fail due to some compatible issues, we will fallback to 'filesystem', i.e, FSHLog.


---

* [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | *Major* | **Replace usage of our Base64 implementation with java.util.Base64**

Class org.apache.hadoop.hbase.util.Base64 has been removed in it's entirety from HBase 2+. In HBase 1, unused methods have been removed from the class and the audience was changed from  Public to Private. This class was originally intended as an internal utility class that could be used externally but thinking since changed; these classes should not have been advertised as public to end-users.

This represents an incompatible change for users who relied on this implementation. An alternative implementation for affected clients is available at java.util.Base64 when using Java 8 or newer; be aware, it may encode/decode differently. For clients seeking to restore this specific implementation, it is available in the public domain for download at http://iharder.sourceforge.net/current/java/base64/


---

* [HBASE-6028](https://issues.apache.org/jira/browse/HBASE-6028) | *Minor* | **Implement a cancel for in-progress compactions**

Added a new command to the shell to switch on/off compactions called "compaction\_switch". Disabling compactions will interrupt any currently ongoing compactions. This setting will be lost on restart of the server. Added the configuration hbase.regionserver.compaction.enabled so user can enable/disable compactions via hbase-site.xml.


---

* [HBASE-20672](https://issues.apache.org/jira/browse/HBASE-20672) | *Minor* | **New metrics ReadRequestRate and WriteRequestRate**

Exposing 2 new metrics in HBase to provide ReadRequestRate and WriteRequestRate at region server level. These metrics give the rate of request handled by the region server and are reset after every monitoring interval.


---

* [HBASE-20846](https://issues.apache.org/jira/browse/HBASE-20846) | *Major* | **Restore procedure locks when master restarts**

1. Make hasLock method final, and add a locked field in Procedure to record whether we have the lock. We will set it to true in doAcquireLock and to false in doReleaseLock. The sub procedures do not need to manage it any more.

2. Also added a locked field in the proto message. When storing, the field will be set according to the return value of hasLock. And when loading, there is a new field in Procedure called lockedWhenLoading. We will set it to true if the locked field in proto message is true.

3. The reason why we can not set the locked field directly to true by calling doAcquireLock is that, during initialization, most procedures need to wait until master is initialized. So the solution here is that, we introduced a new method called waitInitialized in Procedure, and move the wait master initialized related code from acquireLock to this method. And we added a restoreLock method to Procedure, if lockedWhenLoading is true, we will call the acquireLock to get the lock, but do not set locked to true. And later when we call doAcquireLock and pass the waitInitialized check, we will test lockedWhenLoading, if it is true, when we just set the locked field to true and return, without actually calling the acquireLock method since we have already called it once.


---

* [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | *Critical* | **Upgrade our hadoop versions to 2.7.7 and 3.0.3**

Update hadoop-two.version to 2.7.7 and hadoop-three.version to 3.0.3 due to a JDK issue which is solved by HADOOP-15473.


---

* [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | *Minor* | **PITA having to set WAL provider in two places**

With this change if a WAL's meta provider (hbase.wal.meta\_provider) is not explicitly set, it now defaults to whatever hbase.wal.provider is set to. Previous, the two settings operated independently, each with its own default.

This change is operationally incompatible with previous HBase versions because the default WAL meta provider no longer defaults to AsyncFSWALProvider but to hbase.wal.provider.

The thought is that this is more in line with an operator's expectation, that a change in hbase.wal.provider is sufficient to change how WALs are written, especially given hbase.wal.meta\_provider is an obscure configuration and that the very idea that meta regions would have their own wal provider would likely come as a surprise.


---

* [HBASE-20894](https://issues.apache.org/jira/browse/HBASE-20894) | *Major* | **Move BucketCache from java serialization to protobuf**

For users who have configured hbase.bucketcache.ioengine with either the file:, files:, or mmap: prefix, and configured it to be persistent via the hbase.bucketcache.persistent.path property, the serialization format of the bucket cache has changed between versions. The old state will not be read during startup, and there is currently no migration path. The impact is expected to be minimal, however, since the cache will rebuild over time as access patterns dictate.


---

* [HBASE-20986](https://issues.apache.org/jira/browse/HBASE-20986) | *Major* | **Separate the config of block size when we do log splitting and write Hlog**

After HBASE-20986, we can set different value to block size of WAL and recovered edits. Both of their default value is 2 \* default HDFS blocksize. And hbase.regionserver.recoverededits.blocksize is for block size of recovered edits while hbase.regionserver.hlog.blocksize is for block size of WAL.


---

* [HBASE-20813](https://issues.apache.org/jira/browse/HBASE-20813) | *Minor* | **Remove RPC quotas when the associated table/Namespace is dropped off**

In previous releases, when a Space Quota was configured on a table or namespace and that table or namespace was deleted, the Space Quota was also deleted. This change improves the implementation so that the same is also done for RPC Quotas.


---

* [HBASE-20965](https://issues.apache.org/jira/browse/HBASE-20965) | *Major* | **Separate region server report requests to new handlers**

After HBASE-20965, we can use MasterFifoRpcScheduler in master to separate RegionServerReport requests to indenpedent handler. To use this feature, please set "hbase.master.rpc.scheduler.factory.class" to
 "org.apache.hadoop.hbase.ipc.MasterFifoRpcScheduler". Use "hbase.master.server.report.handler.count" to set RegionServerReport handlers count, the default value is half of "hbase.regionserver.handler.count" value, but at least 1, and the other handlers count in master is "hbase.regionserver.handler.count" value minus RegionServerReport handlers count, but at least 1 too.


---

* [HBASE-21012](https://issues.apache.org/jira/browse/HBASE-21012) | *Critical* | **Revert the change of serializing TimeRangeTracker**

HFiles generated by 2.0.0, 2.0.1, 2.1.0 are not forward compatible to 1.4.6-, 1.3.2.1-, 1.2.6.1-, and other inactive releases. Why HFile lose compatability is hbase in new versions (2.0.0, 2.0.1, 2.1.0) use protobuf to serialize/deserialize TimeRangeTracker (TRT) while old versions use DataInput/DataOutput. To solve this, We have to put HBASE-21012 to 2.x and put HBASE-21013 in 1.x. For more information, please check HBASE-21008.


---

* [HBASE-20881](https://issues.apache.org/jira/browse/HBASE-20881) | *Major* | **Introduce a region transition procedure to handle all the state transition for a region**

Introduced a new TransitRegionStateProcedure to replace the old AssignProcedure/UnassignProcedure/MoveRegionProcedure. In the old code, MRP will not be attached to RegionStateNode, so it can not be interrupted by ServerCrashProcedure, which introduces lots of tricky code to deal with races, and also causes lots of other difficulties on how to prevent scheduling redundant or even conflict procedures for a region.

And now TRSP is the only one procedure which can bring region online or offline. When you want to schedule one, you need to check whether there is already one attached to the RegionStateNode, under the lock of the RegionStateNode. If not just go ahead, and if there is one, then you should do something, for example, give up and fail directly, or tell the TRSP to give up(This is what SCP does). Since the check and attach are both under the lock of RSN, it will greatly reduce the possible races, and make the code much simpler.


---

* [HBASE-21072](https://issues.apache.org/jira/browse/HBASE-21072) | *Major* | **Block out HBCK1 in hbase2**

Fence out hbase-1.x hbck1 instances. Stop them making state changes on an hbase-2.x cluster; they could do damage. We do this by writing the hbck1 lock file into place on hbase-2.x Master start-up.

To disable this new behavior, set hbase.write.hbck1.lock.file to false


---

* [HBASE-21071](https://issues.apache.org/jira/browse/HBASE-21071) | *Major* | **HBaseTestingUtility::startMiniCluster() to use builder pattern**

Cleanup all the cluster start override combos in HBaseTestingUtility by adding a StartMiniClusterOption and Builder.


---

* [HBASE-20941](https://issues.apache.org/jira/browse/HBASE-20941) | *Major* | **Create and implement HbckService in master**

Adds an HBCK Service and a first method to force-change-in-table-state for use by an HBCK client effecting 'repair' to a malfunctioning HBase.


---

* [HBASE-20649](https://issues.apache.org/jira/browse/HBASE-20649) | *Minor* | **Validate HFiles do not have PREFIX\_TREE DataBlockEncoding**

<!-- markdown -->
Users who have previously made use of prefix tree encoding can now check that their existing HFiles no longer contain data that uses it with an additional preupgrade check command.

```
hbase pre-upgrade validate-hfile
```

Please see the "HFile Content validation" section of the ref guide's coverage of the pre-upgrade validator tool for usage details.


---

* [HBASE-20942](https://issues.apache.org/jira/browse/HBASE-20942) | *Major* | **Improve RpcServer TRACE logging**

Allows configuration of the length of RPC messages printed to the log at TRACE level via "hbase.ipc.trace.param.size" in RpcServer.


---

* [HBASE-21153](https://issues.apache.org/jira/browse/HBASE-21153) | *Major* | **Shaded client jars should always build in relevant phase to avoid confusion**

Client facing artifacts are now built whenever Maven is run through the "package" goal. Previously, the client facing artifacts would create placeholder jars that skipped repackaging HBase and third-party dependencies unless the "release" profile was active.

Build times may be noticeably longer depending on your build hardware. For example, the Jenkins worker nodes maintained by ASF Infra take ~14% longer to do a full packaging build. An example portability-focused personal laptop took ~25% longer.


---

* [HBASE-21107](https://issues.apache.org/jira/browse/HBASE-21107) | *Minor* | **add a metrics for netty direct memory**

Add a new nettyDirectMemoryUsage under server's ipc metrics to show direct memory usage for netty rpc server.


---

* [HBASE-21171](https://issues.apache.org/jira/browse/HBASE-21171) | *Major* | **[amv2] Tool to parse a directory of MasterProcWALs standalone**

Make it so can run the WAL parse and load system in isolation. Here is an example:

{code}$ HBASE\_OPTS=" -XX:+UnlockDiagnosticVMOptions -XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:+DebugNonSafepoints" ./bin/hbase org.apache.hadoop.hbase.procedure2.store.wal.WALProcedureStore ~/big\_set\_of\_masterprocwals/
{code}


---

* [HBASE-21021](https://issues.apache.org/jira/browse/HBASE-21021) | *Major* | **Result returned by Append operation should be ordered**

This change ensures Append operations are assembled into the expected order.


---

* [HBASE-21156](https://issues.apache.org/jira/browse/HBASE-21156) | *Critical* | **[hbck2] Queue an assign of hbase:meta and bulk assign/unassign**

Adds 'raw' assigns/unassigns to the Hbck Service. Takes a list of encoded region names and bulk assigns/unassigns. Skirts Master 'state' check and does not invoke Coprocessors. For repair only.

Here is what HBCK2 usage looks like now:

{code}
$ java -cp hbase-hbck2-1.0.0-SNAPSHOT.jar  org.apache.hbase.HBCK2
usage: HBCK2 \<OPTIONS\> COMMAND [\<ARGS\>]

Options:
 -d,--debug                      run with debug output
 -h,--help                       output this help message
    --hbase.zookeeper.peerport   peerport of target hbase ensemble
    --hbase.zookeeper.quorum     ensemble of target hbase
    --zookeeper.znode.parent     parent znode of target hbase

Commands:
 setTableState \<TABLENAME\> \<STATE\>
   Possible table states: ENABLED, DISABLED, DISABLING, ENABLING
   To read current table state, in the hbase shell run:
     hbase\> get 'hbase:meta', '\<TABLENAME\>', 'table:state'
   A value of \\x08\\x00 == ENABLED, \\x08\\x01 == DISABLED, etc.
   An example making table name 'user' ENABLED:
     $ HBCK2 setTableState users ENABLED
   Returns whatever the previous table state was.

 assign \<ENCODED\_REGIONNAME\> ...
   A 'raw' assign that can be used even during Master initialization.
   Skirts Coprocessors. Pass one or more encoded RegionNames:
   e.g. 1588230740 is hard-coded encoding for hbase:meta region and
   de00010733901a05f5a2a3a382e27dd4 is an example of what a random
   user-space encoded Region name looks like. For example:
     $ HBCK2 assign 1588230740 de00010733901a05f5a2a3a382e27dd4
   Returns the pid of the created AssignProcedure or -1 if none.

 unassign \<ENCODED\_REGIONNAME\> ...
   A 'raw' unassign that can be used even during Master initialization.
   Skirts Coprocessors. Pass one or more encoded RegionNames:
   Skirts Coprocessors. Pass one or more encoded RegionNames:
   de00010733901a05f5a2a3a382e27dd4 is an example of what a random
   user-space encoded Region name looks like. For example:
     $ HBCK2 unassign 1588230740 de00010733901a05f5a2a3a382e27dd4
   Returns the pid of the created UnassignProcedure or -1 if none.
{code}


---

* [HBASE-20636](https://issues.apache.org/jira/browse/HBASE-20636) | *Major* | **Introduce two bloom filter type : ROWPREFIX\_FIXED\_LENGTH and ROWPREFIX\_DELIMITED**

Add two bloom filter type : ROWPREFIX\_FIXED\_LENGTH and ROWPREFIX\_DELIMITED
1. ROWPREFIX\_FIXED\_LENGTH: specify the length of the prefix
2. ROWPREFIX\_DELIMITED: specify the delimiter of the prefix
Need to specify parameters for these two types of bloomfilter, otherwise the table will fail to create
Example:
create 't1', {NAME =\> 'f1', BLOOMFILTER =\> 'ROWPREFIX\_FIXED\_LENGTH', CONFIGURATION =\> {'RowPrefixBloomFilter.prefix\_length' =\> '10'}}
create 't1', {NAME =\> 'f1', BLOOMFILTER =\> 'ROWPREFIX\_DELIMITED', CONFIGURATION =\> {'RowPrefixDelimitedBloomFilter.delimiter' =\> '#'}}


---

* [HBASE-21223](https://issues.apache.org/jira/browse/HBASE-21223) | *Critical* | **[amv2] Remove abort\_procedure from shell**

Removed the abort\_procedure command from shell -- dangerous -- and deprecated abortProcedure in Admin API.


---

* [HBASE-21232](https://issues.apache.org/jira/browse/HBASE-21232) | *Major* | **Show table state in Tables view on Master home page**

Add table state column to the tables panel


---

* [HBASE-20727](https://issues.apache.org/jira/browse/HBASE-20727) | *Major* | **Persist FlushedSequenceId to speed up WAL split after cluster restart**

This feature adds capability for HM to persist its data structure of region wise last flushed seqId. The flush will be happening to hbase root FS path \<habse root dir\>/.lastflushedseqids
The flushing interval can be tuned using config 'hbase.master.flushedsequenceid.flusher.interval' which defaults to 3 hrs
This feature can be turned off by making hbase.master.persist.flushedsequenceid.enabled as false.


---

* [HBASE-21280](https://issues.apache.org/jira/browse/HBASE-21280) | *Trivial* | **Add anchors for each heading in UI**

Adds anchors #tables, #tasks, etc.


---

* [HBASE-21287](https://issues.apache.org/jira/browse/HBASE-21287) | *Major* | **JVMClusterUtil Master initialization wait time not configurable**

Local HBase cluster (as used by unit tests) wait times on startup and initialization can be configured via \`hbase.master.start.timeout.localHBaseCluster\` and \`hbase.master.init.timeout.localHBaseCluster\`


---

* [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | *Minor* | **WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes**

This adds two extra features to WALPrettyPrinter tool:

1) Output for each cell combined size of cell descriptors, plus the cell value itself, in a given WAL edit. This is printed on the results as "cell total size sum:" info by default;

2) An optional -g/--goto argument, that allows to seek straight to that specific WAL file position, then sequentially reading the WAL from that point towards its end;


---

* [HBASE-21098](https://issues.apache.org/jira/browse/HBASE-21098) | *Major* | **Improve Snapshot Performance with Temporary Snapshot Directory when rootDir on S3**

It is recommended to place the working directory on-cluster on HDFS as doing so has shown a strong performance increase due to data locality. It is important to note that the working directory should not overlap with any existing directories as the working directory will be cleaned out during the snapshot process. Beyond that, any well-named directory on HDFS should be sufficient.


---

* [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | *Critical* | **Empty qualifier cell should not be returned if it does not match QualifierFilter**

<!-- markdown -->

Scans that make use of `QualifierFilter` previously would erroneously return both columns with an empty qualifier along with those that matched. After this change that behavior has changed to only return those columns that match.


---

* [HBASE-21278](https://issues.apache.org/jira/browse/HBASE-21278) | *Critical* | **Do not rollback successful sub procedures when rolling back a procedure**

For the sub procedures which are successfully finished, do not do rollback. This is a change in rollback behavior.

State changes which are done by sub procedures should be handled by parent procedures when rolling back. For example, when rolling back a MergeTableProcedure, we will schedule new procedures to bring the offline regions online instead of rolling back the original procedures which off-lined the regions (in fact these procedures can not be rolled back...).


---

* [HBASE-21291](https://issues.apache.org/jira/browse/HBASE-21291) | *Major* | **Add a test for bypassing stuck state-machine procedures**

bypass will now throw an Exception if passed a lockWait \<= 0; i.e bypass will prevent an operator getting stuck on an entity lock waiting forever (lockWait == 0)


---

* [HBASE-21335](https://issues.apache.org/jira/browse/HBASE-21335) | *Critical* | **Change the default wait time of HBCK2 tool**

Changed waitTime parameter to lockWait on bypass. Changed default waitTime from 0 -- i.e. wait for ever -- to 1ms so if lock is held, we'll go past it and if override enforce bypass.


---

* [HBASE-21073](https://issues.apache.org/jira/browse/HBASE-21073) | *Major* | **"Maintenance mode" master**

    Instead of being an ephemeral state set by hbck, maintenance mode is now
    an explicit toggle set by either configuration property or environment
    variable. In maintenance mode, master will host system tables and not
    assign any user-space tables to RSs. This gives operators the ability to
    affect repairs to meta table with fewer moving parts.


---

* [HBASE-21338](https://issues.apache.org/jira/browse/HBASE-21338) | *Major* | **[balancer] If balancer is an ill-fit for cluster size, it gives little indication**

The description claims the balancer not dynamically configurable but this is an error; it is http://hbase.apache.org/book.html#dyn\_config

Also, if balancer is seen to be cutting out too soon, try setting "hbase.master.balancer.stochastic.runMaxSteps" to true.

Adds cleaner logging around balancer start.


---

* [HBASE-21372](https://issues.apache.org/jira/browse/HBASE-21372) | *Major* | **Set hbase.assignment.maximum.attempts to Long.MAX**

Retry assigns 'forever' (or until an intervention such as a ServerCrashProcedure).

Previous retry was a maximum of ten times but on failure, handling was an indeterminate.


---

* [HBASE-21215](https://issues.apache.org/jira/browse/HBASE-21215) | *Major* | **Figure how to invoke hbck2; make it easy to find**

Adds to bin/hbase means of invoking hbck2. Pass the new '-j' option on the 'hbck' command with a value of the full path to the HBCK2.jar.

E.g:

$ ./bin/hbase hbck -j ~/checkouts/hbase-operator-tools/hbase-hbck2/target/hbase-hbck2-1.0.0-SNAPSHOT.jar  setTableState x ENABLED


---

* [HBASE-21365](https://issues.apache.org/jira/browse/HBASE-21365) | *Minor* | **Throw exception when user put data with skip wal to a table which may be replicated**

If a table's column family's replication scope is not REPLICATION\_SCOPE\_LOCAL, this table may be replicated to peer cluster. As hbase's replication rely on WAL, if put data with Durability.SKIP\_WAL to this table, the regionserver will throw a new  InvalidMutationDurabilityException to client.


---

* [HBASE-21325](https://issues.apache.org/jira/browse/HBASE-21325) | *Major* | **Force to terminate regionserver when abort hang in somewhere**

Add two new config hbase.regionserver.abort.timeout and hbase.regionserver.abort.timeout.task. If regionserver abort timeout, it will schedule an abort timeout task to run. The default abort task is SystemExitWhenAbortTimeout, which will force to terminate region server when abort timeout. And you can config a special abort timeout task by hbase.regionserver.abort.timeout.task.


---

* [HBASE-21322](https://issues.apache.org/jira/browse/HBASE-21322) | *Critical* | **Add a scheduleServerCrashProcedure() API to HbckService**

Adds scheduleServerCrashProcedure to the HbckService.


---

* [HBASE-21191](https://issues.apache.org/jira/browse/HBASE-21191) | *Major* | **Add a holding-pattern if no assign for meta or namespace (Can happen if masterprocwals have been cleared).**

Puts master startup into holding pattern if meta is not assigned (previous it would exit). To make progress again, operator needs to inject an assign (Caveats and instruction can be found in HBASE-21035).


---

* [HBASE-21417](https://issues.apache.org/jira/browse/HBASE-21417) | *Critical* | **Pre commit build is broken due to surefire plugin crashes**

Add -Djdk.net.URLClassPath.disableClassPathURLCheck=true when executing surefire plugin.


---

* [HBASE-21430](https://issues.apache.org/jira/browse/HBASE-21430) | *Major* | **[hbase-connectors] Move hbase-spark\* modules to hbase-connectors repo**

hbase-spark\* modules have been cloned to https://github.com/apache/hbase-connectors All spark connector dev is to happen in that repo from here on out.

Let me file a subtask to remove hbase-spark\* modules from hbase core.


---

* [HBASE-21443](https://issues.apache.org/jira/browse/HBASE-21443) | *Major* | **[hbase-connectors] Purge hbase-\* modules from core now they've been moved to hbase-connectors**

Parent issue moved hbase-spark\* modules to hbase-connectors. This issue removes hbase-spark\* modules from hbase core repo.


---

* [HBASE-21452](https://issues.apache.org/jira/browse/HBASE-21452) | *Major* | **Illegal character in hbase counters group name**

Changes group name of hbase metrics from "HBase Counters" to "HBaseCounters".


---

* [HBASE-21387](https://issues.apache.org/jira/browse/HBASE-21387) | *Major* | **Race condition surrounding in progress snapshot handling in snapshot cache leads to loss of snapshot files**

To prevent race condition between in progress snapshot (performed by TakeSnapshotHandler) and HFileCleaner which results in data loss, this JIRA introduced mutual exclusion between taking snapshot and running HFileCleaner. That is, at any given moment, either some snapshot can be taken or, HFileCleaner checks hfiles which are not referenced, but not both can be running.


---

* [HBASE-21154](https://issues.apache.org/jira/browse/HBASE-21154) | *Major* | **Remove hbase:namespace table; fold it into hbase:meta**

Add a new family called 'ns' for meta table and store the namespace related information in it instead of in namespace table. When rolling upgrading from a version which has namespace table, we will automatically migrate the data in namespace table to the 'ns' family of meta table, and then disable the namespace table. You can delete the namespace table later via the Admin interface.
The ZKNamespaceManager is also removed, as we never use its pub/sub ability in HBase.


---

* [HBASE-21492](https://issues.apache.org/jira/browse/HBASE-21492) | *Critical* | **CellCodec Written To WAL Before It's Verified**

After HBASE-21492 the return type of WALCellCodec#getWALCellCodecClass has been changed from String to Class


---

* [HBASE-21550](https://issues.apache.org/jira/browse/HBASE-21550) | *Major* | **Add a new method preCreateTableRegionInfos for MasterObserver which allows CPs to modify the TableDescriptor**

Add a new method preCreateTableRegionInfos for MasterObserver, which will be called before creating region infos for the given table,  before the preCreateTable method. It allows you to return a new TableDescritor to override the original one. Returns null or throws exception will stop the creation.


---

* [HBASE-21551](https://issues.apache.org/jira/browse/HBASE-21551) | *Blocker* | **Memory leak when use scan with STREAM at server side**

<!-- markdown -->
### Summary
HBase clusters will experience Region Server failures due to out of memory errors due to a leak given any of the following:

* User initiates Scan operations set to use the STREAM reading type
* User initiates Scan operations set to use the default reading type that read more than 4 * the block size of column families involved in the scan (e.g. by default 4*64KiB)
* Compactions run

### Root cause

When there are long running scans the Region Server process attempts to optimize access by using a different API geared towards sequential access. Due to an error in HBASE-20704 for HBase 2.0+ the Region Server fails to release related resources when those scans finish. That same optimization path is always used for the HBase internal file compaction process.

### Workaround

Impact for this error can be minimized by setting the config value “hbase.storescanner.pread.max.bytes” to MAX_INT to avoid the optimization for default user scans. Clients should also be checked to ensure they do not pass the STREAM read type to the Scan API. This will have a severe impact on performance for long scans.

Compactions always use this sequential optimized reading mechanism so downstream users will need to periodically restart Region Server roles after compactions have happened.


---

* [HBASE-21560](https://issues.apache.org/jira/browse/HBASE-21560) | *Major* | **Return a new TableDescriptor for MasterObserver#preModifyTable to allow coprocessor modify the TableDescriptor**

Incompatible change. Allow MasterObserver#preModifyTable to return a new TableDescriptor. And master will use this returned TableDescriptor to modify table.


---

* [HBASE-21567](https://issues.apache.org/jira/browse/HBASE-21567) | *Major* | **Allow overriding configs starting up the shell**

Allow passing of -Dkey=value option to shell to override hbase-\* configuration: e.g.:

$ ./bin/hbase shell -Dhbase.zookeeper.quorum=ZK0.remote.cluster.example.org,ZK1.remote.cluster.example.org,ZK2.remote.cluster.example.org -Draining=false
...
hbase(main):001:0\> @shell.hbase.configuration.get("hbase.zookeeper.quorum")
=\> "ZK0.remote.cluster.example.org,ZK1.remote.cluster.example.org,ZK2.remote.cluster.example.org"
hbase(main):002:0\> @shell.hbase.configuration.get("raining")
=\> "false"


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

* [HBASE-21453](https://issues.apache.org/jira/browse/HBASE-21453) | *Major* | **Convert ReadOnlyZKClient to DEBUG instead of INFO**

Log level of ReadOnlyZKClient moved to debug.


---

* [HBASE-21549](https://issues.apache.org/jira/browse/HBASE-21549) | *Major* | **Add shell command for serial replication peer**

Add a SERIAL flag for add\_peer command to identifiy whether or not the replication peer is a serial replication peer. The default serial flag is false.


---

* [HBASE-21554](https://issues.apache.org/jira/browse/HBASE-21554) | *Minor* | **Show replication endpoint classname for replication peer on master web UI**

The replication UI on master will show the replication endpoint classname.


---

* [HBASE-21401](https://issues.apache.org/jira/browse/HBASE-21401) | *Critical* | **Sanity check when constructing the KeyValue**

Add a sanity check when constructing KeyValue from a byte[]. we use the constructor when we're reading kv from socket or HFIle or WAL(replication). the santiy check isn't designed for discovering the bits corruption in network transferring or disk IO. It is designed to detect bugs inside HBase in advance. and HBASE-21459 indicated that there's extremely small performance loss for diff kinds of keyvalue.


---

* [HBASE-21635](https://issues.apache.org/jira/browse/HBASE-21635) | *Major* | **Use maven enforcer to ban imports from illegal packages**

Use de.skuzzle.enforcer.restrict-imports-enforcer-rule extension for maven enforcer plugin to ban illegal imports at compile time. Now if you use illegal imports, for example, import com.google.common.\*, there will be a compile error, instead of a checkstyle warning.


---

* [HBASE-21643](https://issues.apache.org/jira/browse/HBASE-21643) | *Major* | **Introduce two new region coprocessor method and deprecated postMutationBeforeWAL**

Deprecated region coprocessor postMutationBeforeWAL and introduce two new region coprocessor postIncrementBeforeWAL and postAppendBeforeWAL instead.


---

* [HBASE-21650](https://issues.apache.org/jira/browse/HBASE-21650) | *Major* | **Add DDL operation and some other miscellaneous to thrift2**

Added DDL operations and some other structure definition to thrift2. Methods added: 
create/modify/addColumnFamily/deleteColumnFamily/modifyColumnFamily/enable/disable/truncate/delete table
create/modify/delete namespace
get(list)TableDescriptor(s)/get(list)NamespaceDescirptor(s)
tableExists/isTableEnabled/isTableDisabled/isTableAvailabe
And some class definitions along with those methods


---

* [HBASE-21659](https://issues.apache.org/jira/browse/HBASE-21659) | *Minor* | **Avoid to load duplicate coprocessors in system config and table descriptor**

Add a new configuration "hbase.skip.load.duplicate.table.coprocessor". The default value is false to keep compatible with the old behavior. Config it true to skip load duplicate table coprocessor.


---

* [HBASE-18569](https://issues.apache.org/jira/browse/HBASE-18569) | *Major* | **Add prefetch support for async region locator**

Add prefetch support for async region locator. The default value is 10. Set 'hbase.client.locate.prefetch.limit' in hbase-site.xml if you want to use another value for it.


---

* [HBASE-21159](https://issues.apache.org/jira/browse/HBASE-21159) | *Major* | **Add shell command to switch throttle on or off**

Support enable or disable rpc throttle when hbase quota is enabled. If hbase quota is enabled, rpc throttle is enabled by default.  When disable rpc throttle, HBase will not throttle any request. Use the following commands to switch rpc throttle : enable\_rpc\_throttle / disable\_rpc\_throttle.


---

* [HBASE-21618](https://issues.apache.org/jira/browse/HBASE-21618) | *Critical* | **Scan with the same startRow(inclusive=true) and stopRow(inclusive=false) returns one result**

There was a bug when scan with the same startRow(inclusive=true) and stopRow(inclusive=false). The old incorrect behavior is return one result. After this fix, the new correct behavior is return nothing.


---

* [HBASE-21661](https://issues.apache.org/jira/browse/HBASE-21661) | *Major* | **Provide Thrift2 implementation of Table/Admin**

ThriftAdmin/ThriftTable are implemented based on Thrift2. With ThriftAdmin/ThriftTable, People can use thrift2 protocol just like HTable/HBaseAdmin. 
Example of using ThriftConnection
Configuration conf = HBaseConfiguration.create();
conf.set(ClusterConnection.HBASE\_CLIENT\_CONNECTION\_IMPL,ThriftConnection.class.getName());
Connection conn = ConnectionFactory.createConnection(conf);
Table table = conn.getTable(tablename)
It is just like a normal Connection, similar use experience with the default ConnectionImplementation


---

* [HBASE-21652](https://issues.apache.org/jira/browse/HBASE-21652) | *Major* | **Refactor ThriftServer making thrift2 server inherited from thrift1 server**

Before this issue, thrift1 server and thrift2 server are totally different servers. If a new feature is added to thrift1 server, thrfit2 server have to make the same change to support it(e.g. authorization). After this issue, thrift2 server is inherited from thrift1, thrift2 server now have all the features thrift1 server has(e.g http support, which thrift2 server doesn't have before).  The way to start thrift1 or thrift2 server remain the same after this issue.


---

* [HBASE-21647](https://issues.apache.org/jira/browse/HBASE-21647) | *Major* | **Add status track for splitting WAL tasks**

Adds task monitor that shows ServerCrashProcedure progress in UI.


---

* [HBASE-21657](https://issues.apache.org/jira/browse/HBASE-21657) | *Major* | **PrivateCellUtil#estimatedSerializedSizeOf has been the bottleneck in 100% scan case.**

In HBASE-21657,  I simplified the path of estimatedSerialiedSize() & estimatedSerialiedSizeOfCell() by moving the general getSerializedSize()
and heapSize() from ExtendedCell to Cell interface. The patch also included some other improvments:

1. For 99%  of case, our cells has no tags, so let the HFileScannerImpl just return the NoTagsByteBufferKeyValue if no tags, which means we can save 
   lots of cpu time when sending no tags cell to rpc because can just return the length instead of getting the serialize size by caculating offset/length 
   of each fields(row/cf/cq..)
2. Move the subclass's getSerializedSize implementation from ExtendedCell to their own class, which mean we did not need to call ExtendedCell's
   getSerialiedSize() firstly, then forward to subclass's getSerializedSize(withTags).
3. Give a estimated result arraylist size for avoiding the frequent list extension when in a big scan, now we estimate the array size as min(scan.rows, 512).
   it's also help a lot.

We gain almost ~40% throughput improvement in 100% scan case for branch-2 (cacheHitRatio~100%)[1], it's a good thing. While it's a incompatible change in 
some case, such as if the upstream user implemented their own Cells, although it's rare but can happen, then their compile will be error.


---

* [HBASE-21712](https://issues.apache.org/jira/browse/HBASE-21712) | *Minor* | **Make submit-patch.py python3 compatible**

Python3 support was added to dev-support/submit-patch.py. To install newly required dependencies run \`pip install -r dev-support/python-requirements.txt\` command.


---

* [HBASE-21732](https://issues.apache.org/jira/browse/HBASE-21732) | *Critical* | **Should call toUpperCase before using Enum.valueOf in some methods for ColumnFamilyDescriptor**

Now all the Enum configs in ColumnFamilyDescriptor can accept lower case config value.


---

* [HBASE-21595](https://issues.apache.org/jira/browse/HBASE-21595) | *Minor* | **Print thread's information and stack traces when RS is aborting forcibly**

Does thread dump on stdout on abort.


---

* [HBASE-21034](https://issues.apache.org/jira/browse/HBASE-21034) | *Major* | **Add new throttle type: read/write capacity unit**

Provides a new throttle type: capacity unit. One read/write/request capacity unit represents that read/write/read+write up to 1K data. If data size is more than 1K, then consume additional capacity units.

Use shell command to set capacity unit(CU):
set\_quota TYPE =\> THROTTLE, THROTTLE\_TYPE =\> WRITE, USER =\> 'u1', LIMIT =\> '10CU/sec'

Use the "hbase.quota.read.capacity.unit" property to set the data size of one read capacity unit in bytes, the default value is 1K. Use the "hbase.quota.write.capacity.unit" property to set the data size of one write capacity unit in bytes, the default value is 1K.


---

* [HBASE-21738](https://issues.apache.org/jira/browse/HBASE-21738) | *Critical* | **Remove all the CSLM#size operation in our memstore because it's an quite time consuming.**

We found the memstore snapshotting would cost much time because of calling the time-consuming ConcurrentSkipListMap#Size, it would make the p999 latency spike happen. So in this issue, we remove all ConcurrentSkipListMap#size in memstore by counting the cellsCount in MemstoreSizeing. As the issue described, the p999 latency spike was mitigated.


---

* [HBASE-21734](https://issues.apache.org/jira/browse/HBASE-21734) | *Major* | **Some optimization in FilterListWithOR**

After HBASE-21620, the filterListWithOR has been a bit slow because we need to merge each sub-filter's RC , while before HBASE-21620, we will skip many RC merging, but the logic was wrong. So here we choose another way to optimaze the performance: removing the KeyValueUtil#toNewKeyCell. 
Anoop Sam John suggested that the KeyValueUtil#toNewKeyCell can save some GC before because if we copy key part of cell into a single byte[], then the block the cell refering won't be refered by the filter list any more, the upper layer can GC the data block quickly. while after HBASE-21620, we will update the prevCellList for every encountered cell now, so the lifecycle of cell in prevCellList for FilterList will be quite shorter. so just use the cell ref for saving cpu.
BTW, we removed all the arrays streams usage in filter list, because it's also quite time-consuming in our test.


---

* [HBASE-17370](https://issues.apache.org/jira/browse/HBASE-17370) | *Major* | **Fix or provide shell scripts to drain and decommission region server**

Adds shell support for the following:
- List decommissioned/draining region servers
- Decommission a list of region servers, optionally offload corresponding regions
- Recommission a region server, optionally load a list of passed regions


---

* [HBASE-21689](https://issues.apache.org/jira/browse/HBASE-21689) | *Minor* | **Make table/namespace specific current quota info available in shell(describe\_namespace & describe)**

In shell commands "describe\_namespace" and "describe", which are used to see the descriptors of the namespaces and tables respectively, quotas set on that particular namespace/table will also be printed along.


---

* [HBASE-21713](https://issues.apache.org/jira/browse/HBASE-21713) | *Major* | **Support set region server throttle quota**

Support set region server rpc throttle quota which represents the read/write ability of region servers and throttles when region server's total requests exceeding the limit. 

Use the following shell command to set RS quota:
set\_quota TYPE =\> THROTTLE, REGIONSERVER =\> 'all', THROTTLE\_TYPE =\> WRITE, LIMIT =\> '20000req/sec'
set\_quota TYPE =\> THROTTLE, REGIONSERVER =\> 'all', LIMIT =\> NONE
"all" represents the throttle quota of all region servers and setting specified region server quota isn't supported currently.


---

* [HBASE-21762](https://issues.apache.org/jira/browse/HBASE-21762) | *Major* | **Move some methods in ClusterConnection to Connection**

Move the two getHbck method from ClusterConnection to Connection, and mark the methods as IA.LimitedPrivate(HBCK), as ClusterConnection is IA.Private and should not be depended by HBCK2.

Add a clearRegionLocationCache method in Connection to clear the region location cache for all the tables. As in RegionLocator, most of the methods have a 'reload' parameter, which implicitly tells user that we have a region location cache, so adding a method to clear the cache is fine.


---

* [HBASE-21782](https://issues.apache.org/jira/browse/HBASE-21782) | *Major* | **LoadIncrementalHFiles should not be IA.Public**

Introduce a BulkLoadHFiles interface which is marked as IA.Public, for doing bulk load programmatically.
Introduce a BulkLoadHFilesTool which extends BulkLoadHFiles, and is marked as IA.LimitedPrivate(TOOLS), for using from command line.
The old LoadIncrementalHFiles is deprecated and will be removed in 3.0.0.


---

* [HBASE-21792](https://issues.apache.org/jira/browse/HBASE-21792) | *Major* | **Mark HTableMultiplexer as deprecated and remove it in 3.0.0**

HTableMultiplexer exposes the implementation class, and it is incomplete, so we mark it as deprecated and remove it in 3.0.0 release.

There is no direct replacement for HTableMultiplexer, please use BufferedMutator if you want to batch mutations to a table.


---

* [HBASE-21791](https://issues.apache.org/jira/browse/HBASE-21791) | *Blocker* | **Upgrade thrift dependency to 0.12.0**

IMPORTANT: Due to security issues, all users who use hbase thrift should avoid using releases which do not have this fix.

The effect releases are:
2.1.x: 2.1.2 and below
2.0.x: 2.0.4 and below
1.x: 1.4.x and below

If you are using the effect releases above, please consider upgrading to a newer release ASAP.


---

* [HBASE-21739](https://issues.apache.org/jira/browse/HBASE-21739) | *Major* | **Move grant/revoke from regionserver to master**

To implement user permission control in Precedure V2, move grant and revoke method from AccessController to master firstly.
Mark AccessController#grant and AccessController#revoke as deprecated and please use Admin#grant and Admin#revoke instead.


---

* [HBASE-21806](https://issues.apache.org/jira/browse/HBASE-21806) | *Major* | **add an option to roll WAL on very slow syncs**

HBase RS will now roll the WAL file upon a slow sync call. hbase.regionserver.hlog.roll.on.sync.ms config has been added to HBase, with the default value of 10000 (10 seconds); if a sync of the WAL takes longer than that the file will be replaced under the assumption that we will get a faster datanode pipeline for a new file. This setting works with an existing timeout setting that will still kick in on very long syncs (5 minutes by default) and fail the operation.


---

* [HBASE-21684](https://issues.apache.org/jira/browse/HBASE-21684) | *Major* | **Throw DNRIOE when connection or rpc client is closed**

Make StoppedRpcClientException extend DoNotRetryIOException.


---

* [HBASE-21764](https://issues.apache.org/jira/browse/HBASE-21764) | *Major* | **Size of in-memory compaction thread pool should be configurable**

Introduced an new config key in this issue: hbase.regionserver.inmemory.compaction.pool.size. the default value would be 10.  you can configure this to set the pool size of in-memory compaction pool. Note that all memstores in one region server will share the same pool, so if you have many regions in one region server,  you need to set this larger to compact faster for better read performance.


---

* [HBASE-21727](https://issues.apache.org/jira/browse/HBASE-21727) | *Minor* | **Simplify documentation around client timeout**

Deprecated HBaseConfiguration#getInt(Configuration, String, String, int) method and removed it from 3.0.0 version.


---

* [HBASE-21779](https://issues.apache.org/jira/browse/HBASE-21779) | *Major* | **Reimplement BulkLoadHFilesTool to use AsyncClusterConnection**

The old LoadIncrementalHFiles are removed, please use BulkLoadHFiles instead if you want to do bulk load in your code. And for doing bulk load from command line, do not reference the LoadIncrementalHFiles directly any more, use './hbase completebulkload xxx' instead.


---

* [HBASE-21838](https://issues.apache.org/jira/browse/HBASE-21838) | *Major* | **Create a special ReplicationEndpoint just for verifying the WAL entries are fine**

Introduce a VerifyWALEntriesReplicationEndpoint which replicates nothing but only verifies if all the cells are valid.
It can be used to capture bugs for writing WAL, as most times we will not read the WALs again after writing it if there are no region server crashes.


---

* [HBASE-21201](https://issues.apache.org/jira/browse/HBASE-21201) | *Major* | **Support to run VerifyReplication MR tool without peerid**

We can specify peerQuorumAddress instead of peerId in VerifyReplication tool. So it no longer requires peerId to be setup when using this tool.

For example:
hbase org.apache.hadoop.hbase.mapreduce.replication.VerifyReplication zk1,zk2,zk3:2181/hbase testTable


---

* [HBASE-21636](https://issues.apache.org/jira/browse/HBASE-21636) | *Major* | **Enhance the shell scan command to support missing scanner specifications like ReadType, IsolationLevel etc.**

Allows shell to set Scan options previously not exposed. See additions as part of the scan help by typing following hbase shell:

hbase\> help 'scan'


---

* [HBASE-21868](https://issues.apache.org/jira/browse/HBASE-21868) | *Major* | **Remove legacy bulk load support**

Remove SecureBulkLoadEndpoint and related classes and tests (Bulk load has been integrated into HBase core and SecureBulkLoadEndpoint has been marked as deprecated since 2.x). Remove the support for non secure bulk load. Notice that the 'secure' here does not mean you need to enable kerberos. For bulk load we will always obtain a 'bulkToken' when calling prepareBulkLoad, even if you do not enable kerberos.


---

* [HBASE-21908](https://issues.apache.org/jira/browse/HBASE-21908) | *Major* | **Remove Scan.getScanMetrics**

Scan.getScanMetrics is removed, as well as Scan.SCAN\_ATTRIBUTES\_METRICS\_ENABLE. Please use Scan.setScanMetricsEnabled to enable scan metrics, and use ResultScanner.getScanMetrics to get the metrics.


---

* [HBASE-17942](https://issues.apache.org/jira/browse/HBASE-17942) | *Major* | **Disable region splits and merges per table**

This patch adds the ability to disable split and/or merge for a table (By default, split and merge are enabled for a table).


---

* [HBASE-21928](https://issues.apache.org/jira/browse/HBASE-21928) | *Major* | **Deprecated HConstants.META\_QOS**

Mark HConstants.META\_QOS as deprecated. It is for internal use only, which is the highest priority. You should not try to set a priority greater than or equal to this value, although it is no harm but also useless.


---

* [HBASE-20587](https://issues.apache.org/jira/browse/HBASE-20587) | *Major* | **Replace Jackson with shaded thirdparty gson**

Remove jackson dependencies from most hbase modules except hbase-rest, use shaded gson instead. The output json will be a bit different since jackson can use getter/setter, but gson will always use the fields.


---

* [HBASE-21783](https://issues.apache.org/jira/browse/HBASE-21783) | *Major* | **Support exceed user/table/ns throttle quota if region server has available quota**

Support enable or disable exceed throttle quota. Exceed throttle quota means, user can over consume user/namespace/table quota if region server has additional available quota because other users don't consume at the same time. 
Use the following shell commands to enable/disable exceed throttle quota: enable\_exceed\_throttle\_quota
disable\_exceed\_throttle\_quota
There are two limits when enable exceed throttle quota: 
1. Must set at least one read and one write region server throttle quota; 
2. All region server throttle quotas must be in seconds time unit. Because once previous requests exceed their quota and consume region server quota, quota in other time units may be refilled in a long time, this may affect later requests.


---

* [HBASE-21922](https://issues.apache.org/jira/browse/HBASE-21922) | *Major* | **BloomContext#sanityCheck may failed when use ROWPREFIX\_DELIMITED bloom filter**

Remove bloom filter type ROWPREFIX\_DELIMITED. May add it back when find a better solution.


---

* [HBASE-21505](https://issues.apache.org/jira/browse/HBASE-21505) | *Major* | **Several inconsistencies on information reported for Replication Sources by hbase shell status 'replication' command.**

This modifies "status 'replication'" output, fixing inconsistencies on the reporting times and ages of last shipped edits, as well as wrong calculation of replication lags. 

It also introduces additional info for each recovery queue, which was not accounted by this command before.

The new output for "status 'replication'" command is explained in details below:
a) Source started, target stopped, no edits arrived on source yet:
...
 SOURCE: PeerID=1
         Normal Queue: 1
           No Ops shipped since last restart, SizeOfLogQueue=1, No edits for this source since it started, Replication Lag=0
...
b) Source started, target stopped, add edit on source:
...
Normal Queue: 1
           No Ops shipped since last restart, SizeOfLogQueue=1, TimeStampOfLastArrivedInSource=Wed Nov 21 07:21:00 GMT 2018, Replication Lag=2459
...
c) Source started, target stopped, edit added on source, restart source:
...
SOURCE: PeerID=1
         Normal Queue: 1
           No Ops shipped since last restart, SizeOfLogQueue=1, No edits for this source since it started, Replication Lag=0
         Recovered Queue: 1-hbase01.home,16020,1542784524057
           No Ops shipped since last restart, SizeOfLogQueue=1, TimeStampOfLastArrivedInSource=Wed Nov 21 07:23:00 GMT 2018, Replication Lag=201495
...
d) Source started, target stopped, add edit on source, restart source, add another edit on source:
...
SOURCE: PeerID=1
         Normal Queue: 1
           No Ops shipped since last restart, SizeOfLogQueue=1, TimeStampOfLastArrivedInSource=Wed Nov 21 07:02:28 GMT 2018, Replication Lag=6349
         Recovered Queue: 1-hbase01.home,16020,1542782758742
           No Ops shipped since last restart, SizeOfLogQueue=0, TimeStampOfLastArrivedInSource=Wed Nov 21 06:53:05 GMT 2018, Replication Lag=569394
...
e) Source started, target stopped, add edit on source, restart source, add another edit on source, start target:
...
       SOURCE: PeerID=1
         Normal Queue: 1
           AgeOfLastShippedOp=30000, TimeStampOfLastShippedOp=Wed Nov 21 07:07:58 GMT 2018, SizeOfLogQueue=1, TimeStampOfLastArrivedInSource=Wed Nov 21 07:02:28 GMT 2018, Replication Lag=0
...
f) Source started, target stopped, add edit on source, restart source, restart target:
...
SOURCE: PeerID=1
         Normal Queue: 1
           No Ops shipped since last restart, SizeOfLogQueue=1, No edits for this source since it started, Replication Lag=0
...


---

* [HBASE-21057](https://issues.apache.org/jira/browse/HBASE-21057) | *Minor* | **upgrade to latest spotbugs**

Change spotbugs version to 3.1.11.


---

* [HBASE-21820](https://issues.apache.org/jira/browse/HBASE-21820) | *Major* | **Implement CLUSTER quota scope**

HBase contains two quota scopes: MACHINE and CLUSTER. Before this patch, set quota operations did not expose scope option to client api and use MACHINE as default, CLUSTER scope can not be set and used. 
Shell commands are as follows:
set\_quota, TYPE =\> THROTTLE, TABLE =\> 't1', LIMIT =\> '10req/sec'

This issue implements CLUSTER scope in a simple way: For user, namespace, user over namespace quota, use [ClusterLimit / RSNum] as machine limit. For table and user over table quota, use [ClusterLimit / TotalTableRegionNum \* MachineTableRegionNum] as machine limit.
After this patch, user can set CLUSTER scope quota, but MACHINE is still default if user ignore scope. 
Shell commands are as follows:
set\_quota, TYPE =\> THROTTLE, TABLE =\> 't1', LIMIT =\> '10req/sec'
set\_quota, TYPE =\> THROTTLE, TABLE =\> 't1', LIMIT =\> '10req/sec', SCOPE =\> MACHINE
set\_quota, TYPE =\> THROTTLE, TABLE =\> 't1', LIMIT =\> '10req/sec', SCOPE =\> CLUSTER


---

* [HBASE-20724](https://issues.apache.org/jira/browse/HBASE-20724) | *Critical* | **Sometimes some compacted storefiles are still opened after region failover**

Problem: This is an old problem since HBASE-2231. The compaction event marker was only writed to WAL. But after flush, the WAL may be archived, which means an useful compaction event marker be deleted, too. So the compacted store files cannot be archived when region open and replay WAL.

Solution: After this jira, the compaction event tracker will be writed to HFile. When region open and load store files, read the compaction evnet tracker from HFile and archive the compacted store files which still exist.


---

* [HBASE-21082](https://issues.apache.org/jira/browse/HBASE-21082) | *Critical* | **Reimplement assign/unassign related procedure metrics**

Now we have four types of RIT procedure metrics, assign, unassign, move, reopen. The meaning of assign/unassign is changed, as we will not increase the unassign metric and then the assign metric when moving a region.
Also introduced two new procedure metrics, open and close, which are used to track the open/close region calls to region server. We may send open/close multiple times to finish a RIT since we may retry multiple times.


---

* [HBASE-21481](https://issues.apache.org/jira/browse/HBASE-21481) | *Major* | **[acl] Superuser's permissions should not be granted or revoked by any non-su global admin**

HBASE-21481 improves the quality of access control, by strengthening the protection of super users's privileges.


---

* [HBASE-20401](https://issues.apache.org/jira/browse/HBASE-20401) | *Minor* | **Make \`MAX\_WAIT\` and \`waitIfNotFinished\` in CleanerContext configurable**

When oldwals (and hfile) cleaner cleans stale wals (and hfiles), it will periodically check and wait the clean results from filesystem, the total wait time will be no more than a max time.

The periodically wait and check configurations are hbase.oldwals.cleaner.thread.check.interval.msec (default is 500 ms) and hbase.regionserver.hfilecleaner.thread.check.interval.msec (default is 1000 ms). 

Meanwhile, The max time configurations are hbase.oldwals.cleaner.thread.timeout.msec and hbase.regionserver.hfilecleaner.thread.timeout.msec, they are set to 60 seconds by default.

All support dynamic configuration.

e.g. in the oldwals cleaning scenario, one may consider tuning hbase.oldwals.cleaner.thread.timeout.msec and hbase.oldwals.cleaner.thread.check.interval.msec 

1. While deleting a oldwal never complete (strange but possible), then delete file task needs to wait for a max of 60 seconds. Here, 60 seconds might be too long, or the opposite way is to increase more than 60 seconds in the use cases of slow file delete. 
2. The check and wait of a file delete is set to default in the period of 500 milliseconds, one might want to tune this checking period to a short interval to check more frequently or to a longer interval to avoid checking too often to manage their delete file task checking period (the longer interval may be use to avoid checking too fast while using a high latency storage).


---

* [HBASE-20734](https://issues.apache.org/jira/browse/HBASE-20734) | *Major* | **Colocate recovered edits directory with hbase.wal.dir**

Previously the recovered.edits directory was under the root directory. This JIRA moves the recovered.edits directory to be under the hbase.wal.dir if set. It also adds a check for any recovered.edits found under the root directory for backwards compatibility. This gives improvements when a faster media(like SSD) or more local FileSystem is used for the hbase.wal.dir than the root dir.


---

* [HBASE-21588](https://issues.apache.org/jira/browse/HBASE-21588) | *Major* | **Procedure v2 wal splitting implementation**

After HBASE-21588, we introduce a new way to do WAL splitting coordination by procedure framework. This can simplify the process of WAL splitting and no need to connect zookeeper any more.
During ServerCrashProcedure, it will create a SplitWALProcedure for each WAL that needs to split. Then each SplitWALProcedure will spawn a SplitWALRemoteProcedure to send the request to regionserver.
At the RegionServer side, whole split process is handled by a SplitWALCallable. It splits the WAL and returns the result to the master.
According to my test, this patch has a better performance as the number of WALs that need to split increase. And it can relieve the pressure on zookeeper.

Set 'hbase.split.wal.zk.coordinated' to false to 'enable'. 'hbase.regionserver.wal.max.splitters' is reused to set how many 'splitters' to run on the RegionServer side.


---

* [HBASE-21410](https://issues.apache.org/jira/browse/HBASE-21410) | *Major* | **A helper page that help find all problematic regions and procedures**

After HBASE-21410, we add a helper page to Master UI. This helper page is mainly to help HBase operator quickly found all regions and pids that are get stuck.
There are 2 entries to get in this page.
One is showing in the Regions in Transition section, it made "num region(s) in transition" a link that you can click and check all regions in transition and their related procedure IDs.
The other one is showing in the table details section, it made the number of CLOSING or OPENING regions a link, which you can click and check regions and related procedure IDs of CLOSING or OPENING regions of a certain table.
In this helper page, not only you can see all regions and related procedures, there are 2 buttons at the top which will show these regions or procedure IDs in text format. This is mainly aim to help operator to easily copy and paste all problematic procedure IDs and encoded region names to HBCK2's command line, by which we HBase operator can bypass these procedures or assign these regions.


---

* [HBASE-20886](https://issues.apache.org/jira/browse/HBASE-20886) | *Critical* | **[Auth] Support keytab login in hbase client**

From 2.2.0, hbase supports client login via keytab. To use this feature, client should specify \`hbase.client.keytab.file\` and \`hbase.client.keytab.principal\` in hbase-site.xml, then the connection will contain the needed credentials which be renewed periodically to communicate with kerberized hbase cluster.


---

* [HBASE-15728](https://issues.apache.org/jira/browse/HBASE-15728) | *Major* | **Add remaining per-table region / store / flush / compaction related metrics**

Adds below flush, split, and compaction metrics

 +  // split related metrics
 +  private MutableFastCounter splitRequest;
 +  private MutableFastCounter splitSuccess;
 +  private MetricHistogram splitTimeHisto;
 +
 +  // flush related metrics
 +  private MetricHistogram flushTimeHisto;
 +  private MetricHistogram flushMemstoreSizeHisto;
 +  private MetricHistogram flushOutputSizeHisto;
 +  private MutableFastCounter flushedMemstoreBytes;
 +  private MutableFastCounter flushedOutputBytes;
 +
 +  // compaction related metrics
 +  private MetricHistogram compactionTimeHisto;
 +  private MetricHistogram compactionInputFileCountHisto;
 +  private MetricHistogram compactionInputSizeHisto;
 +  private MetricHistogram compactionOutputFileCountHisto;
 +  private MetricHistogram compactionOutputSizeHisto;
 +  private MutableFastCounter compactedInputBytes;
 +  private MutableFastCounter compactedOutputBytes;
 +
 +  private MetricHistogram majorCompactionTimeHisto;
 +  private MetricHistogram majorCompactionInputFileCountHisto;
 +  private MetricHistogram majorCompactionInputSizeHisto;
 +  private MetricHistogram majorCompactionOutputFileCountHisto;
 +  private MetricHistogram majorCompactionOutputSizeHisto;
 +  private MutableFastCounter majorCompactedInputBytes;
 +  private MutableFastCounter majorCompactedOutputBytes;


---

* [HBASE-21871](https://issues.apache.org/jira/browse/HBASE-21871) | *Major* | **Support to specify a peer table name in VerifyReplication tool**

After HBASE-21871, we can specify a peer table name with --peerTableName in VerifyReplication tool like the following:
hbase org.apache.hadoop.hbase.mapreduce.replication.VerifyReplication --peerTableName=peerTable 5 TestTable

In addition, we can compare any 2 tables in any remote clusters with specifying both peerId and --peerTableName.

For example:
hbase org.apache.hadoop.hbase.mapreduce.replication.VerifyReplication --peerTableName=peerTable zk1,zk2,zk3:2181/hbase TestTable


---

* [HBASE-20754](https://issues.apache.org/jira/browse/HBASE-20754) | *Major* | **quickstart guide should instruct folks to set JAVA\_HOME to a JDK installation.**

The quickstart guide is updated to instruct users to set JAVA\_HOME to a JDK installation.


---

* [HBASE-22000](https://issues.apache.org/jira/browse/HBASE-22000) | *Major* | **Deprecated isTableAvailable with splitKeys**

Deprecated AsyncTable.isTableAvailable(TableName, byte[][]).


---

* [HBASE-22001](https://issues.apache.org/jira/browse/HBASE-22001) | *Major* | **Polish the Admin interface**

Add a cloneSnapshotAsync method with restoreAcl parameter.
Deprecated restoreSnapshotAsync method as it just ignores the failsafe configuration.
Make snapshotAsync method returns a Future\<Void\>.
Deprecated the snapshot related methods which take a 'byte[]' as the snapshot name.
Use default methods to reduce the code base for implementation classes.


---

* [HBASE-21810](https://issues.apache.org/jira/browse/HBASE-21810) | *Major* | **bulkload  support set hfile compression on client**

bulkload (HFileOutputFormat2)  support config the compression on client ,you can set the job configuration "hbase.mapreduce.hfileoutputformat.compression"  override the auto-detection of the target table's compression


---

* [HBASE-22044](https://issues.apache.org/jira/browse/HBASE-22044) | *Major* | **ByteBufferUtils should not be IA.Public API**

<!-- markdown -->

As of HBase 3.0, the ByteBufferUtils class is now marked as a Private API for internal project use only. Downstream users are advised that it no longer has any compatibility promises across releases.

As of earlier HBase release lines the class is now marked as deprecated to call attention to this planned transition.


---

* [HBASE-22002](https://issues.apache.org/jira/browse/HBASE-22002) | *Major* | **Remove the deprecated methods in Admin interface**

These methods in the Admin interface have been removed:

listTables()
listTables(Pattern)
listTables(String)
listTables(Pattern, boolean)
listTables(String, boolean)
listTableNames(String)
listTableNames(String, boolean)
getTableDescriptor(TableName)
deleteTables(String)
deleteTables(Pattern)
enableTables(String)
enableTables(Pattern)
disableTables(String)
disableTables(Pattern)
isTableAvailable(TableName, byte[][])
getAlterStatus(TableName)
getAlterStatus(byte[])
addColumn(TableName, ColumnFamilyDescriptor)
deleteColumn(TableName, byte[])
modifyColumn(TableName, ColumnFamilyDescriptor)
closeRegion(String, String)
closeRegion(byte[], String)
closeRegionWithEncodedRegionName(String, String)
closeRegion(ServerName, HRegionInfo)
getOnlineRegions(ServerName)
compactRegionServer(ServerName, boolean)
setBalancerRunning(boolean, boolean)
balancer()
balancer(boolean)
setNormalizerRunning(boolean)
enableCatalogJanitor(boolean)
runCatalogScan()
setCleanerChoreRunning(boolean)
mergeRegions(byte[], byte[], boolean)
splitRegion(byte[])
modifyTable(TableName, TableDescriptor)
modifyTableAsync(TableName, TableDescriptor)
getClusterStatus()
listTableDescriptorsByNamespace(String)
getTableRegions(TableName)
getTableDescriptorsByTableName(List)
getTableDescriptors(List)
getMasterCoprocessors()
snapshot(byte[], TableName)
takeSnapshotAsync(SnapshotDescription)
restoreSnapshot(byte[])
restoreSnapshotAsync(String)
restoreSnapshot(byte[], boolean)
cloneSnapshot(byte[], TableName)
execProcedureWithRet(String, String, Map)
listSnapshots(String)
listTableSnapshots(String, String)
deleteSnapshots(String)
deleteTableSnapshots(String, String)
getQuotaRetriever(QuotaFilter)
setSplitOrMergeEnabled(boolean, boolean, MasterSwitchType[])
isSplitOrMergeEnabled(MasterSwitchType)


---

* [HBASE-22039](https://issues.apache.org/jira/browse/HBASE-22039) | *Major* | **Should add the synchronous parameter for the XXXSwitch method in AsyncAdmin**

Add drainXXX parameter for balancerSwitch/splitSwitch/mergeSwitch methods in the AsyncAdmin interface, which has the same meaning with the synchronous parameter for these methods in the Admin interface.


---

* [HBASE-22040](https://issues.apache.org/jira/browse/HBASE-22040) | *Major* | **Add mergeRegionsAsync with a List of region names method in AsyncAdmin**

Add a mergeRegionsAsync(byte[][], boolean) method in the AsyncAdmin interface.

Instead of using assert, now we will throw IllegalArgumentException when you want to merge less than 2 regions at client side. And also, at master side, instead of using assert, now we will throw DoNotRetryIOException if you want merge more than 2 regions, since we only support merging two regions at once for now.


---

* [HBASE-22063](https://issues.apache.org/jira/browse/HBASE-22063) | *Major* | **Deprecated Admin.deleteSnapshot(byte[])**

Deprecate Admin.deleteSnapshot(byte[]), please use the String version instead.


---

* [HBASE-22065](https://issues.apache.org/jira/browse/HBASE-22065) | *Major* | **Add listTableDescriptors(List\<TableName\>) method in AsyncAdmin**

Add a listTableDescriptors(List\<TableName\>) method in the AsyncAdmin interface, to align with the Admin interface.


---

* [HBASE-22064](https://issues.apache.org/jira/browse/HBASE-22064) | *Major* | **Remove Admin.deleteSnapshot(byte[])**

Remove the deprecated Admin.deleteSnapshot(byte[]), use the String version instead.


---

* [HBASE-22052](https://issues.apache.org/jira/browse/HBASE-22052) | *Major* | **pom cleaning; filter out jersey-core in hadoop2 to match hadoop3 and remove redunant version specifications**

<!-- markdown -->
Fixed awkward dependency issue that prevented site building.

#### note specific to HBase 2.1.4
HBase 2.1.4 shipped with an early version of this fix that incorrectly altered the libraries included in our binary assembly for using Apache Hadoop 2.7 (the current build default Hadoop version for 2.1.z). For folks running out of the box against a Hadoop 2.7 cluster (or folks who skip the installation step of [replacing the bundled Hadoop libraries](http://hbase.apache.org/book.html#hadoop)) this will result in a failure at Region Server startup due to a missing class definition. e.g.:
```
2019-03-27 09:02:05,779 ERROR [main] regionserver.HRegionServer: Failed construction RegionServer
java.lang.NoClassDefFoundError: org/apache/htrace/SamplerBuilder
	at org.apache.hadoop.hdfs.DFSClient.<init>(DFSClient.java:644)
	at org.apache.hadoop.hdfs.DFSClient.<init>(DFSClient.java:628)
	at org.apache.hadoop.hdfs.DistributedFileSystem.initialize(DistributedFileSystem.java:149)
	at org.apache.hadoop.fs.FileSystem.createFileSystem(FileSystem.java:2667)
	at org.apache.hadoop.fs.FileSystem.access$200(FileSystem.java:93)
	at org.apache.hadoop.fs.FileSystem$Cache.getInternal(FileSystem.java:2701)
	at org.apache.hadoop.fs.FileSystem$Cache.get(FileSystem.java:2683)
	at org.apache.hadoop.fs.FileSystem.get(FileSystem.java:372)
	at org.apache.hadoop.fs.FileSystem.get(FileSystem.java:171)
	at org.apache.hadoop.fs.FileSystem.get(FileSystem.java:356)
	at org.apache.hadoop.fs.Path.getFileSystem(Path.java:295)
	at org.apache.hadoop.hbase.util.CommonFSUtils.getRootDir(CommonFSUtils.java:362)
	at org.apache.hadoop.hbase.util.CommonFSUtils.isValidWALRootDir(CommonFSUtils.java:411)
	at org.apache.hadoop.hbase.util.CommonFSUtils.getWALRootDir(CommonFSUtils.java:387)
	at org.apache.hadoop.hbase.regionserver.HRegionServer.initializeFileSystem(HRegionServer.java:704)
	at org.apache.hadoop.hbase.regionserver.HRegionServer.<init>(HRegionServer.java:613)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)
	at org.apache.hadoop.hbase.regionserver.HRegionServer.constructRegionServer(HRegionServer.java:3029)
	at org.apache.hadoop.hbase.regionserver.HRegionServerCommandLine.start(HRegionServerCommandLine.java:63)
	at org.apache.hadoop.hbase.regionserver.HRegionServerCommandLine.run(HRegionServerCommandLine.java:87)
	at org.apache.hadoop.util.ToolRunner.run(ToolRunner.java:70)
	at org.apache.hadoop.hbase.util.ServerCommandLine.doMain(ServerCommandLine.java:149)
	at org.apache.hadoop.hbase.regionserver.HRegionServer.main(HRegionServer.java:3047)
Caused by: java.lang.ClassNotFoundException: org.apache.htrace.SamplerBuilder
	at java.net.URLClassLoader.findClass(URLClassLoader.java:381)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:349)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
	... 26 more

```

Workaround via any _one_ of the following:
* If you are running against a Hadoop cluster that is 2.8+, ensure you replace the Hadoop libaries in the default binary assembly with those for your version.
* If you are running against a Hadoop cluster that is 2.8+, build the binary assembly from the source release while specifying your Hadoop version.
* If you are running against a Hadoop cluster that is a supported 2.7 release, ensure the `hadoop` executable is in the `PATH` seen at Region Server startup and that you are not using the `HBASE_DISABLE_HADOOP_CLASSPATH_LOOKUP` bypass.
* For any supported Hadoop version, manually make the Apache HTrace artifact `htrace-core-3.1.0-incubating.jar` available to all Region Servers via the HBASE_CLASSPATH environment variable.
* For any supported Hadoop version, manually make the Apache HTrace artifact `htrace-core-3.1.0-incubating.jar` available to all Region Servers by copying it into the directory `${HBASE_HOME}/lib/client-facing-thirdparty/`.


---

* [HBASE-22102](https://issues.apache.org/jira/browse/HBASE-22102) | *Major* | **Remove AsyncAdmin.isTableAvailable(TableName, byte[][])**

Remove deprecated AsyncAdmin.isTableAvaiable(TableName, byte[][]). Use the one with the splitKeys instead.


---

* [HBASE-22057](https://issues.apache.org/jira/browse/HBASE-22057) | *Major* | **Impose upper-bound on size of ZK ops sent in a single multi()**

Exposes a new configuration property "zookeeper.multi.max.size" which dictates the maximum size of deletes that HBase will make to ZooKeeper in a single RPC. This property defaults to 1MB, which should fall beneath the default ZooKeeper limit of 2MB, controlled by "jute.maxbuffer".


---

* [HBASE-22100](https://issues.apache.org/jira/browse/HBASE-22100) | *Minor* | **False positive for error prone warnings in pre commit job**

Now we will sort the javac WARNING/ERROR before generating diff in pre-commit so we can get a stable output for the error prone. The downside is that we just sort the output lexicographically so the line number will also be sorted lexicographically, which is a bit strange to human.


---

* [HBASE-22123](https://issues.apache.org/jira/browse/HBASE-22123) | *Minor* | **REST gateway reports Insufficient permissions exceptions as 404 Not Found**

When insufficient permissions, you now get:

HTTP/1.1 403 Forbidden

on the HTTP side, and in the message

Forbidden
org.apache.hadoop.hbase.security.AccessDeniedException: org.apache.hadoop.hbase.security.AccessDeniedException: Insufficient permissions for user ‘myuser',action: get, tableName:mytable, family:cf.
at org.apache.ranger.authorization.hbase.RangerAuthorizationCoprocessor.authorizeAccess(RangerAuthorizationCoprocessor.java:547)
and the rest of the ADE stack


---

* [HBASE-22007](https://issues.apache.org/jira/browse/HBASE-22007) | *Major* | **Add restoreSnapshot and cloneSnapshot with acl methods in AsyncAdmin**

Add cloneSnapshot/restoreSnapshot with acl methods in AsyncAdmin.


---

* [HBASE-22152](https://issues.apache.org/jira/browse/HBASE-22152) | *Major* | **Create a jenkins file for yetus to processing GitHub PR**

Add a new jenkins file for running pre commit check for GitHub PR.


---

* [HBASE-22108](https://issues.apache.org/jira/browse/HBASE-22108) | *Major* | **Avoid passing null in Admin methods**

Introduced these methods:
void move(byte[]);
void move(byte[], ServerName);
Future\<Void\> splitRegionAsync(byte[]);

These methods are deprecated:
void move(byte[], byte[])


---

* [HBASE-22178](https://issues.apache.org/jira/browse/HBASE-22178) | *Major* | **Introduce a createTableAsync with TableDescriptor method in Admin**

Introduced

Future\<Void\> createTableAsync(TableDescriptor);


---

* [HBASE-22155](https://issues.apache.org/jira/browse/HBASE-22155) | *Major* | **Move 2.2.0 on to hbase-thirdparty-2.2.0**

 Updates libs used internally by hbase via hbase-thirdparty as follows:

 gson 2.8.1 -\\\> 2.8.5
 guava 22.0 -\\\> 27.1-jre
 pb 3.5.1 -\\\> 3.7.0
 netty 4.1.17 -\\\> 4.1.34
 commons-collections4 4.1 -\\\> 4.3


---

* [HBASE-20934](https://issues.apache.org/jira/browse/HBASE-20934) | *Critical* | **Create an hbase-connectors repository; commit new kafka connect here**

See hbase-connectors sub-project: https://github.com/apache/hbase-connectors


---

* [HBASE-22242](https://issues.apache.org/jira/browse/HBASE-22242) | *Trivial* | **Remove deprecated method in RegionLoadStats**

Removed the deprecated getMemstoreLoad() method in RegionLoadStats.


---

* [HBASE-22243](https://issues.apache.org/jira/browse/HBASE-22243) | *Trivial* | **Remove deprecated methods in Result**

Removed the deprecated isPartial() method from the Result class.


---

* [HBASE-22186](https://issues.apache.org/jira/browse/HBASE-22186) | *Trivial* | **Remove usage of deprecated SnapshotDescriptionUtils fields**

Removed the deprecated fields SNAPSHOT\_TIMEOUT\_MILLIS\_DEFAULT and SNAPSHOT\_TIMEOUT\_MILLIS\_KEY from SnapshotDescriptionUtils.


---

* [HBASE-22248](https://issues.apache.org/jira/browse/HBASE-22248) | *Minor* | **Remove deprecated CollectionUtils**

Removed the deprecated CollectionUtils class and its usages.


---

* [HBASE-22246](https://issues.apache.org/jira/browse/HBASE-22246) | *Trivial* | **Remove deprecated field from MetricsReplicationSourceSource**

Removed the deprecated field SOURCE\_SHIPPED\_KBS from MetricsReplicationSourceSource and its usages.


---

* [HBASE-22199](https://issues.apache.org/jira/browse/HBASE-22199) | *Trivial* | **Replace "UTF-8" with StandardCharsets.UTF\_8 where possible**

Replaced "UTF-8" String with either StandardCharsets.UTF\_8 or Bytes.getBytes, depending if a byte or a string is used.


---

* [HBASE-15560](https://issues.apache.org/jira/browse/HBASE-15560) | *Major* | **TinyLFU-based BlockCache**

LruBlockCache uses the Segmented LRU (SLRU) policy to capture frequency and recency of the working set. It achieves concurrency by using an O(n) background thread to prioritize the entries and evict. Accessing an entry is O(1) by a hash table lookup, recording its logical access time, and setting a frequency flag. A write is performed in O(1) time by updating the hash table and triggering an async eviction thread. This provides ideal concurrency and minimizes the latencies by penalizing the thread instead of the caller. However the policy does not age the frequencies and may not be resilient to various workload patterns. 

This change introduces a new L1 policy, TinyLfuBlockCache, which records the frequency in a counting sketch, ages periodically by halving the counters, and orders entries by SLRU. An entry is discarded by comparing the frequency of the new arrival to the SLRU's victim, and keeping the one with the highest frequency. This allows the operations to be performed in O(1) time and, though the use of a compact sketch, a much larger history is retained beyond the current working set. In a variety of real world traces the policy had near optimal hit rates.

New configuration variable hfile.block.cache.policy sets the eviction policy for the L1 block cache. The default is "LRU" (LruBlockCache). Set to "TinyLFU" to use TinyLfuBlockCache instead.


---

* [HBASE-22259](https://issues.apache.org/jira/browse/HBASE-22259) | *Trivial* | **Removed deprecated method in ReplicationLoadSource**

Removed the deprecated getTimeStampOfLastShippedOp() method from ReplicationLoadSource. Use ReplicationLoadSource#getTimestampOfLastShippedOp() instead.


---

* [HBASE-22276](https://issues.apache.org/jira/browse/HBASE-22276) | *Trivial* | **Remove deprecated UnmodifyableHRegionInfo**

Removed the deprecated and unused class UnmodifyableHRegionInfo.


---

* [HBASE-22260](https://issues.apache.org/jira/browse/HBASE-22260) | *Trivial* | **Remove deprecated methods in ReplicationLoadSink**

Removed the deprecated method getTimeStampsOfLastAppliedOp() in ReplicationLoadSink. Use ReplicationLoadSink#getTimestampsOfLastAppliedOp() instead.


---

* [HBASE-22279](https://issues.apache.org/jira/browse/HBASE-22279) | *Major* | **Add a getRegionLocator method in Table/AsyncTable interface**

Add below method in Table interface:

RegionLocator getRegionLocator() throws IOException;

Add below methods in AsyncTable interface:

AsyncTableRegionLocator getRegionLocator();
CompletableFuture\<TableDescriptor\> getDescriptor();


---

* [HBASE-19222](https://issues.apache.org/jira/browse/HBASE-19222) | *Major* | **update jruby to 9.1.17.0**

<!-- markdown -->

The default version of JRuby shipped with HBase has been updated to the JRuby 9.1.17.0 release.

For details on changes see [the release notes for JRuby 9.1.17.0](https://www.jruby.org/2018/04/23/jruby-9-1-17-0)


---

* [HBASE-22232](https://issues.apache.org/jira/browse/HBASE-22232) | *Minor* | **Remove deprecated methods in CompareFilter**

Removed the following deprecated content from CompareFilter:

- enum CompareOp, use CompareOperator instead.
- constructor CompareFilter(CompareOp, ByteArrayComparable), use other constructor instead.
- method getOperator(), use getCompareOperator() instead.
- method compareRow(CompareOp, ByteArrayComparable, Cell), use compareRow(CompareOperator, ByteArrayComparable, Cell) instead.
- method compareFamily(CompareOp, ByteArrayComparable, Cell), use compareFamily(CompareOperator, ByteArrayComparable, Cell) instead.
- method compareQualifier(CompareOp, ByteArrayComparable, Cell), use compareQualifier(CompareOperator, ByteArrayComparable, Cell) instead.
- method compareValue(CompareOp, ByteArrayComparable, Cell), use compareValue(CompareOperator, ByteArrayComparable, Cell) instead.


---

* [HBASE-22258](https://issues.apache.org/jira/browse/HBASE-22258) | *Trivial* | **Remove deprecated VisibilityClient methods**

Removed the methods in VisibilityClient, which were deprecated by HBASE-13620.

- addLabel(Configuration, String), use addLabel(Connection,String) instead.
- addLabels(Configuration, String[]), use addLabels(Connection,String[]) instead.
- setAuths(Configuration, String[], String), use setAuths(Connection,String[],String) instead.
- getAuths(Configuration, String), use getAuths(Connection,String) instead.
- listLabels(Configuration, String), use listLabels(Connection,String) instead.
- clearAuths(Configuration, String[], String), use clearAuths(Connection,String[],String) instead.


---

* [HBASE-22292](https://issues.apache.org/jira/browse/HBASE-22292) | *Blocker* | **PreemptiveFastFailInterceptor clean repeatedFailuresMap issue**

Adds new configuration hbase.client.failure.map.cleanup.interval which defaults to ten minutes.


---

* [HBASE-22294](https://issues.apache.org/jira/browse/HBASE-22294) | *Minor* | **Remove deprecated method from WALKeyImpl**

Removed WALKeyImpl#getLogSeqNum, which was deprecated in 2.0.0 by HBASE-15158. Use WALKeyImpl#getSequenceId instead.


---

* [HBASE-22307](https://issues.apache.org/jira/browse/HBASE-22307) | *Major* | **Deprecated Preemptive Fail Fast**

Deprecated Preemptive Fail Fast related constants in HConstants, the support of this feature will be removed in 3.0.0 so use these constants will have no effect for 3.0.0+ releases. And the constants will be kept till 4.0.0.

Users can use 'hbase.client.perserver.requests.threshold' to control the number of concurrent requests to the same region server. Please see the release note of HBASE-16388 for more details.


---

* [HBASE-22083](https://issues.apache.org/jira/browse/HBASE-22083) | *Minor* | **move eclipse specific configs into a profile**

<!-- markdown -->
Maven project integration for Eclipse has been isolated into a maven profile to ensure it only is active when in an Eclipse project.

Things should continue to behave the same for Eclipse users. If something should go wrong folks should manually activate the `eclipse-specific` profile.


---

* [HBASE-14789](https://issues.apache.org/jira/browse/HBASE-14789) | *Major* | **Enhance the current spark-hbase connector**

New features in hbase-spark:
\* native type support (short, int, long, float, double),
\* support for Dataframe writes,
\* avro support,
\* catalog can be defined in json.


---

* [HBASE-22054](https://issues.apache.org/jira/browse/HBASE-22054) | *Minor* | **Space Quota: Compaction is not working for super user in case of NO\_WRITES\_COMPACTIONS**

This change allows the system and superusers to initiate compactions, even when a space quota violation policy disallows compactions from happening. The original intent behind disallowing of compactions was to prevent end-user compactions from creating undue I/O load, not disallowing \*any\* compaction in the system.


---

* [HBASE-22277](https://issues.apache.org/jira/browse/HBASE-22277) | *Minor* | **Remove deprecated methods in Get**

Removed the following deprecated functionalities from the Get class:

\* isClosestRowBefore() (deprecated in HBASE-13954)
\* setClosestRowBefore(boolean) (deprecated in HBASE-13954)
\* setTimeStamp(long) (deprecated in HBASE-13300) - Use setTimestamp(long) instead
\* setMaxVersions() (deprecated in HBASE-17125) - Use readAllVersions() instead
\* setMaxVersions(int) (deprecated in HBASE-17125) - Use readVersions(int) instead


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

* [HBASE-20851](https://issues.apache.org/jira/browse/HBASE-20851) | *Minor* | **Change rubocop config for max line length of 100**

The rubocop configuration in the hbase-shell module now allows a line length with 100 characters, instead of 80 as before. For everything before 2.1.5 this change introduces rubocop itself.


---

* [HBASE-22379](https://issues.apache.org/jira/browse/HBASE-22379) | *Minor* | **Fix Markdown for "Voting on Release Candidates" in book**

Fixes the formatting of the "Voting on Release Candidates" to actually show the quote and code formatting of the RAT check.


---

* [HBASE-22358](https://issues.apache.org/jira/browse/HBASE-22358) | *Minor* | **Change rubocop configuration for method length**

The rubocop definition for the maximum method length was set to 75.


---

* [HBASE-20494](https://issues.apache.org/jira/browse/HBASE-20494) | *Major* | **Upgrade com.yammer.metrics dependency**

Updated metrics core from 3.2.1 to 3.2.6.


---

* [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | *Trivial* | **Remove extra/useless +**

Removed extra + in HRegion, HStore and LoadIncrementalHFiles for branch-2 and HRegion and HStore for branch-1.


---

* [HBASE-22399](https://issues.apache.org/jira/browse/HBASE-22399) | *Major* | **Change default hadoop-two.version to 2.8.x and remove the 2.7.x hadoop checks**

Now the default hadoop-two.version has been changed to 2.8.5, and all hadoop versions before 2.8.2(exclude) will not be supported any more.


---

* [HBASE-22377](https://issues.apache.org/jira/browse/HBASE-22377) | *Major* | **Provide API to check the existence of a namespace which does not require ADMIN permissions**

This change adds the new method listNamespaces to the Admin interface, which can be used to retrieve a list of the namespaces present in the schema as an unprivileged operation. Formerly the only available method for accomplishing this was listNamespaceDescriptors, which requires GLOBAL CREATE or ADMIN permissions.


---

* [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | *Minor* | **Formatting issues in administration section of book**

Fixes a formatting issue in the administration section of the book, where listing indentation were a little bit off.


---

* [HBASE-21048](https://issues.apache.org/jira/browse/HBASE-21048) | *Major* | **Get LogLevel is not working from console in secure environment**

Support get\|set LogLevel in secure(kerberized) environment.


---

* [HBASE-21784](https://issues.apache.org/jira/browse/HBASE-21784) | *Major* | **Dump replication queue should show list of wal files ordered chronologically**

The DumpReplicationQueues tool will now list replication queues sorted in chronological order.


---

* [HBASE-20970](https://issues.apache.org/jira/browse/HBASE-20970) | *Major* | **Update hadoop check versions for hadoop3 in hbase-personality**

Add hadoop 3.0.3, 3.1.1 3.1.2 in our hadoop check jobs.


---

* [HBASE-22226](https://issues.apache.org/jira/browse/HBASE-22226) | *Trivial* | **Incorrect level for headings in asciidoc**

Warnings for level headings are corrected in the book for the HBase Incompatibilities section.


---

* [HBASE-21991](https://issues.apache.org/jira/browse/HBASE-21991) | *Major* | **Fix MetaMetrics issues - [Race condition, Faulty remove logic], few improvements**

The class LossyCounting was unintentionally marked Public but was never intended to be part of our public API. This oversight has been corrected and LossyCounting is now marked as Private and going forward may be subject to additional breaking changes or removal without notice. If you have taken a dependency on this class we recommend cloning it locally into your project before upgrading to this release.


---

* [HBASE-20782](https://issues.apache.org/jira/browse/HBASE-20782) | *Minor* | **Fix duplication of TestServletFilter.access**

The access method was used to the HttpServerFunctionalTest class as a common place.


---

* [HBASE-22148](https://issues.apache.org/jira/browse/HBASE-22148) | *Blocker* | **Provide an alternative to CellUtil.setTimestamp**

<!-- markdown -->

The `CellUtil.setTimestamp` method changes to be an API with audience `LimitedPrivate(COPROC)` in HBase 3.0. With that designation the API should remain stable within a given minor release line, but may change between minor releases.

Previously, this method was deprecated in HBase 2.0 for removal in HBase 3.0. Deprecation messages in HBase 2.y releases have been updated to indicate the expected API audience change.


---

* [HBASE-22469](https://issues.apache.org/jira/browse/HBASE-22469) | *Minor* | **replace md5 checksum in saveVersion script with sha512 for hbase version information**

The HBase "source checksum" now uses SHA512 instead of MD5.


---

* [HBASE-22459](https://issues.apache.org/jira/browse/HBASE-22459) | *Minor* | **Expose store reader reference count**

This change exposes the aggregate count of store reader references for a given store as 'storeRefCount' in region metrics and ClusterStatus.


---

* [HBASE-22500](https://issues.apache.org/jira/browse/HBASE-22500) | *Blocker* | **Modify pom and jenkins jobs for hadoop versions**

Change the default hadoop-3 version to 3.1.2. Drop the support for the releases which are effected by CVE-2018-8029, see this email https://lists.apache.org/thread.html/3d6831c3893cd27b6850aea2feff7d536888286d588e703c6ffd2e82@%3Cuser.hadoop.apache.org%3E


---

* [HBASE-21536](https://issues.apache.org/jira/browse/HBASE-21536) | *Trivial* | **Fix completebulkload usage instructions**

Added completebulkload short name for BulkLoadHFilesTool to bin/hbase.


---

* [HBASE-22262](https://issues.apache.org/jira/browse/HBASE-22262) | *Minor* | **Remove deprecated methods from Filter**

Removed filterRowKey(byte[], int, int) from the Filter class. Use filterRowKey(Cell) instead.
Removed filterKeyValue(Cell) from the Filter class. Use filterCell(Cell) instead.


---

* [HBASE-21970](https://issues.apache.org/jira/browse/HBASE-21970) | *Major* | **Document that how to upgrade from 2.0 or 2.1 to 2.2+**

See the document http://hbase.apache.org/book.html#upgrade2.2 about how to upgrade from 2.0 or 2.1 to 2.2+.

HBase 2.2+ uses a new Procedure form assiging/unassigning/moving Regions. It does not process HBase 2.1 and 2.0's Unassign/Assign Procedure types. Upgrade requires that we first drain the Master Procedure Store of old style Procedures before starting the new 2.2 Master. So you need to make sure that before you kill the old version (2.0 or 2.1) Master, there is no region in transition. And once the new version (2.2+) Master is up, you can rolling upgrade RegionServers one by one. 

And there is a more safer way if you are running 2.1.1+ or 2.0.3+ cluster. It need four steps to upgrade Master.

1. Shutdown both active and standby Masters (Your cluster will continue to server reads and writes without interruption).
2. Set the property hbase.procedure.upgrade-to-2-2 to true in hbase-site.xml for the Master, and start only one Master, still using the 2.1.1+ (or 2.0.3+) version.
3. Wait until the Master quits. Confirm that there is a 'READY TO ROLLING UPGRADE' message in the Master log as the cause of the shutdown. The Procedure Store is now empty.
4. Start new Masters with the new 2.2+ version.

Then you can rolling upgrade RegionServers one by one. See HBASE-21075 for more details.


---

* [HBASE-21935](https://issues.apache.org/jira/browse/HBASE-21935) | *Minor* | **Replace make\_rc.sh with customized spark/dev/create-release**

These scripts came originally from spark [1]. They were then modified to suit hbase context. Supercedes the old ../make\_rc.sh script because what is here is more comprehensive doing more steps of the RM process as well as running in a container so the RM build environment can be a constant.

 It:
     \* Tags release
     \* Sets version to the release version
     \* Sets version to next SNAPSHOT version.
     \* Builds, signs, and hashes all artifacts.
     \* Pushes release tgzs to the dev dir in a apache dist.
     \* Pushes to repository.apache.org staging.

 The entry point is the do-release-docker.sh script. Pass -h to see available options. For example, running below will do all steps above using the 'rm' dir under Downloads as workspace:

     $ ./do-release-docker.sh  -d ~/Downloads/rm

1. https://github.com/apache/spark/tree/master/dev/create-release


---

* [HBASE-21953](https://issues.apache.org/jira/browse/HBASE-21953) | *Major* | **Point make\_rc.sh at ./create-release/do-release-docker.sh instead**

Changed make\_rc.sh to point at new create-release script.

$ ./dev-support/make\_rc.sh
Replaced by ./dev-support/create-release/do-release-docker.sh script.
See http://hbase.apache.org/book.html#do-release-docker.sh


---

* [HBASE-22275](https://issues.apache.org/jira/browse/HBASE-22275) | *Major* | **Remove deprecated getRegionInfo in HRegionLocation**

Removed getRegionInfo() from HRegionLocation. Use getRegion() instead.


---

* [HBASE-19303](https://issues.apache.org/jira/browse/HBASE-19303) | *Major* | **Cleanup the usage of deprecated ReplicationAdmin**

Removed org.apache.hadoop.hbase.client.replication.ReplicationAdmin. Use org.apache.hadoop.hbase.client.Admin instead.


---

* [HBASE-22590](https://issues.apache.org/jira/browse/HBASE-22590) | *Major* | **Remove the deprecated methods in Table interface**

The below methods have been removed:
getTableDescriptor()
existsAll(List\<Get\>)
checkAndPut(byte[], byte[], byte[], byte[], Put)
checkAndPut(byte[], byte[], byte[], CompareOperator, byte[], Put)
checkAndDelete(byte[], byte[], byte[], byte[], Delete)
checkAndDelete(byte[], byte[], byte[], CompareOperator, byte[], Delete)
checkAndMutate(byte[], byte[], byte[], CompareOperator, byte[], RowMutations)
getRpcTimeout()
setRpcTimeout(int)
getReadRpcTimeout
setReadRpcTimeout(int)
getWriteRpcTimeout
setWriteRpcTimeout(int)
getOperationTimeout
setOperationTimeout(int)


---

* [HBASE-21512](https://issues.apache.org/jira/browse/HBASE-21512) | *Major* | **Reimplement sync client based on async client**

Reimplement sync client based on async client, the old code for sync client have been purged.

Most public APIs are kept, except:

1. coprocessor related methods in sync client interface have been marked as deprecated. This is because that these methods may reference methods from the BlockingInterface of a protobuf stub, so we have to use a thread pool to execute these methods which are not good. Please use the coprocessor methods in async client interface instead.

2. BufferedMutatorParams.setWriteBufferPeriodicFlushTimerTickMs has been marked as deprecated. It has no effect now, just kept for compatibility. We use a global timer per connection so you can not customize the tick any more.

3. BufferedMutatorParams.implementationClassName has been marked as deprecated. It has no effect now, as we will pass several internal stuff to the constructor when creating the implementation instance, which is not good. We should find another way to do it.

4. The behavior for the two Admin.split methods is changed a bit. Now when the methods return, the split should have been done, while in the past it just means we have send the request out.

5. Now most(non-deprecated) methods in Admin and Table interface do not accept null values any more.

6. LoadIncrementalHFiles has been removed. It was marked as deprecated in 2.2.0 so by default is should only be removed in 4.0.0. But it is an implementation class, neither an interface nor a data structure, it is not a good practice to make it public as it exposes several internal states, and is also easily to be misused in the future, so we just remove it in 3.0.0. Users can use BulkLoadHFiles in your code, and there is no difference when executing bulk load from command line.

And we also introduce a toAsyncConnection method in the Connection interface, and also a toConnection method in the AsyncConnection interface. They are both lightweighted operations, the returned instance will share the same connection to the hbase cluster, so you can easily convert Connection to AsyncConnection and vice visa.

For internal developers, the ClusterConnection has also been purged. Please use the new AsyncClusterConnection instead, and please also see the AsyncRegionServerAdmin, which wraps the call to a region server. There is no sync interface any more, please use FutureUtils.get on the returned Future if you want the sync behavior. And also the ShortCircultConnection has been removed, as now we will use async stub but our RpcServices only implement BlockingInterface.


---

* [HBASE-22588](https://issues.apache.org/jira/browse/HBASE-22588) | *Major* | **Upgrade jaxws-ri dependency to 2.3.2**

<!-- markdown -->

When run with JDK11 HBase now uses more recent version of the jaxws reference implementation (v2.3.2).


---

* [HBASE-22596](https://issues.apache.org/jira/browse/HBASE-22596) | *Minor* | **[Chore] Separate the execution period between CompactionChecker and PeriodicMemStoreFlusher**

hbase.regionserver.compaction.check.period is used for controlling how often the compaction checker runs. If unset, will use hbase.server.thread.wakefrequency as default value.

hbase.regionserver.flush.check.period is used for controlling how ofter the flush checker runs. If unset, will use hbase.server.thread.wakefrequency as default value.


---

* [HBASE-16002](https://issues.apache.org/jira/browse/HBASE-16002) | *Major* | **Many DataType constructors are not public**

DataType classes now have a public constructor and the static defines are deprecated and marked for removal in 4.0.0.


---

* [HBASE-21995](https://issues.apache.org/jira/browse/HBASE-21995) | *Major* | **Add a coprocessor to set HDFS ACL for hbase granted user**

Add a coprocessor to set HDFS acls to make hbase granted users with READ permission have the access to scan snapshots.
To use this feature, please make sure the HDFS config is set:
dfs.namenode.acls.enabled=true
fs.permissions.umask-mode=027

and set the HBase config:
hbase.coprocessor.master.classes="org.apache.hadoop.hbase.security.access.AccessController,org.apache.hadoop.hbase.security.access.SnapshotScannerHDFSAclController"
hbase.user.scan.snapshot.enable=true


---

* [HBASE-22617](https://issues.apache.org/jira/browse/HBASE-22617) | *Blocker* | **Recovered WAL directories not getting cleaned up**

In HBASE-20734 we moved the recovered.edits onto the wal file system but when constructing the directory we missed the BASE\_NAMESPACE\_DIR('data'). So when using the default config, you will find that there are lots of new directories at the same level with the 'data' directory.

In this issue, we add the BASE\_NAMESPACE\_DIR back, and also try our best to clean up the wrong directories. But we can only clean up the region level directories, so if you want a clean fs layout on HDFS you still need to manually delete the empty directories at the same level with 'data'.

The effect versions are 2.2.0, 2.1.[1-5], 1.4.[8-10], 1.3.[3-5].


---

* [HBASE-22673](https://issues.apache.org/jira/browse/HBASE-22673) | *Major* | **Avoid to expose protobuf stuff in Hbck interface**

Mark the Hbck#scheduleServerCrashProcedure(List\<HBaseProtos.ServerName\> serverNames) as deprecated. Use Hbck#scheduleServerCrashProcedures(List\<ServerName\> serverNames) instead.


---

* [HBASE-22690](https://issues.apache.org/jira/browse/HBASE-22690) | *Major* | **Deprecate / Remove OfflineMetaRepair in hbase-2+**

OfflineMetaRepair is no longer supported in HBase-2+. Please refer to https://hbase.apache.org/book.html#HBCK2

This tool is deprecated in 2.x and will be removed in 3.0.


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

* [HBASE-22527](https://issues.apache.org/jira/browse/HBASE-22527) | *Major* | **[hbck2] Add a master web ui to show the problematic regions**

Add a new master web UI to show the potentially problematic opened regions. There are three case:
1. Master thought this region opened, but no regionserver reported it.
2. Master thought this region opened on Server1, but regionserver reported Server2
3. More than one regionservers reported opened this region


---

* [HBASE-22722](https://issues.apache.org/jira/browse/HBASE-22722) | *Blocker* | **Upgrade jackson databind dependencies to 2.9.9.1**

Upgrade jackson databind dependency to 2.9.9.1 due to CVEs

https://nvd.nist.gov/vuln/detail/CVE-2019-12814

https://nvd.nist.gov/vuln/detail/CVE-2019-12384


---

* [HBASE-22578](https://issues.apache.org/jira/browse/HBASE-22578) | *Major* | **HFileCleaner should not delete empty ns/table directories used for user san snapshot feature**

The HFileCleaner will clean the empty directories under archive, but if enable user scan snaphot feature, the user ACLs are set at there directories, so please config the following cleaner to make the directories with user ACLs not be cleaned:
hbase.master.hfilecleaner.plugins=org.apache.hadoop.hbase.security.access.SnapshotScannerHDFSAclCleaner


---

* [HBASE-22709](https://issues.apache.org/jira/browse/HBASE-22709) | *Major* | **Add a chore thread in master to do hbck checking and display results in 'HBCK Report' page**

1. Add a new chore thread in master to do hbck checking
2. Add a new web ui "HBCK Report" page to display checking results.

This feature is enabled by default. And the hbck chore run per 60 minutes by default. You can config "hbase.master.hbck.checker.interval" to a value lesser than or equal to 0 for disabling the chore.

Notice: the config "hbase.master.hbck.checker.interval" was renamed to "hbase.master.hbck.chore.interval" in HBASE-22737.


---

* [HBASE-22745](https://issues.apache.org/jira/browse/HBASE-22745) | *Trivial* | **Remove deprecated methods from Append**

Removed the following, deprecated methods from the Append class:

add(byte[], byte[], byte[]): Use addColumn(byte[], byte[], byte[]) instead.
setFamilyCellMap(NavigableMap): Use Append(byte[], long, NavigableMap) instead.


---

* [HBASE-22580](https://issues.apache.org/jira/browse/HBASE-22580) | *Major* | **Add a table attribute to make user scan snapshot feature configurable for table**

If a table user scan snapshots of the table, please config the following table scheme attribute to make granted users' ACLs are added to hfiles:
alter 't1', CONFIGURATION =\> {'hbase.user.scan.snapshot.enable' =\> 'true'}


---

* [HBASE-22748](https://issues.apache.org/jira/browse/HBASE-22748) | *Trivial* | **Remove deprecated methods from Put**

Removed the following, deprecated methods from the Put class: 

addImmutable(byte[], byte[], byte[]): Use add(Cell) and org.apache.hadoop.hbase.CellBuilder instead.
addImmutable(byte[], byte[], long, byte[]): Use add(Cell) and org.apache.hadoop.hbase.CellBuilder instead.
addImmutable(byte[], ByteBuffer, long, ByteBuffer): Use add(Cell) and org.apache.hadoop.hbase.CellBuilder instead.


---

* [HBASE-22756](https://issues.apache.org/jira/browse/HBASE-22756) | *Trivial* | **Remove deprecated method from SingleColumnValueFilter**

Removed the following, deprecated method from the SingleColumnValueFilter class: 

getOperator(): Use #getCompareOperator() instead.


---

* [HBASE-22754](https://issues.apache.org/jira/browse/HBASE-22754) | *Trivial* | **Remove deprecated methods from Increment**

Removed the following, deprecated methods from the Increment class: 

hashCode(): No replacement.
equals(Object): Use Row.COMPARATOR instead.
setFamilyCellMap(NavigableMap): Use Increment#Increment(byte[], long, NavigableMap) instead.


---

* [HBASE-22746](https://issues.apache.org/jira/browse/HBASE-22746) | *Trivial* | **Remove deprecated methods from Delete**

Removed the following, deprecated methods from the Delete class: 

addDeleteMarker(Cell): Use add(Cell) instead.
setFamilyCellMap(NavigableMap): Use Delete(byte[], long, NavigableMap) instead.


---

* [HBASE-22752](https://issues.apache.org/jira/browse/HBASE-22752) | *Trivial* | **Remove deprecated ImmutableHColumnDescriptor & ImmutableHTableDescriptor**

Removed the private interfaces ImmutableHColumnDescriptor and ImmutableHTableDescriptor.


---

* [HBASE-22714](https://issues.apache.org/jira/browse/HBASE-22714) | *Trivial* | **BuffferedMutatorParams opertationTimeOut() is misspelt**

The misspelled BufferedMutatorParams.opertationTimeout method has been marked as deprecated, and will be removed in 4.0.0. Please use the BufferedMutatorParams.operationTimeout method instead.


---

* [HBASE-22723](https://issues.apache.org/jira/browse/HBASE-22723) | *Major* | **Have CatalogJanitor report holes and overlaps; i.e. problems it sees when doing its regular scan of hbase:meta**

When CatalogJanitor runs, it now checks for holes, overlaps, empty info:regioninfo columns and bad servers. Dumps findings into log. Follow-up adds report to new 'HBCK Report' linked off the Master UI.

NOTE: All features but the badserver check made it into branch-2.1 and branch-2.0 backports.


---

* [HBASE-22741](https://issues.apache.org/jira/browse/HBASE-22741) | *Major* | **Show catalogjanitor consistency complaints in new 'HBCK Report' page**

Adds a "CatalogJanitor hbase:meta Consistency Issues" section to the new 'HBCK Report' page added by HBASE-22709. This section is empty unless the most recent CatalogJanitor scan turned up problems. If so, will show table of issues found.


---

* [HBASE-22753](https://issues.apache.org/jira/browse/HBASE-22753) | *Trivial* | **Remove deprecated ImmutableHRegionInfo**

The private interface ImmutableHRegionInfo was removed.


---

* [HBASE-22737](https://issues.apache.org/jira/browse/HBASE-22737) | *Major* | **Add a new admin method and shell cmd to trigger the hbck chore to run**

Add a new method runHbckChore in Hbck interface and a new shell cmd hbck\_chore\_run to request HBCK chore to run at master side.


---

* [HBASE-22788](https://issues.apache.org/jira/browse/HBASE-22788) | *Minor* | **Remove deprecated methods from Bytes**

Removed the following, deprecated methods from the Bytes class: 

Bytes(ByteString): Removed without a replacement.
getSize(): Use getLength() instead.
toByteString(): Removed without a replacement.
putLongUnsafe(byte[], int, long): Removed without a replacement.
toIntUnsafe(byte[], int): Removed without a replacement.
toShortUnsafe(byte[], int): Removed without a replacement.
toLongUnsafe(byte[], int): Removed without a replacement.
putIntUnsafe(byte[], int, int): Removed without a replacement.
putShortUnsafe(byte[], int, short): Removed without a replacement.
readVLong(byte[], int): Use readAsVLong(byte[],int) instead.
binarySearch(byte[][], byte[], int, int, RawComparator): Use binarySearch(byte[][], byte[], int, int) instead.
binarySearch(byte[][], Cell, RawComparator): Use inarySearch(Cell[], Cell, CellComparator) instead.


---

* [HBASE-22789](https://issues.apache.org/jira/browse/HBASE-22789) | *Trivial* | **Remove deprecated method from ImmutableBytesWritable**

Removed the following, deprecated methods from the ImmutableBytesWritable class: 

getSize(): Use getLength() instead.


---

* [HBASE-22539](https://issues.apache.org/jira/browse/HBASE-22539) | *Blocker* | **WAL corruption due to early DBBs re-use when Durability.ASYNC\_WAL is used**

We found a critical bug which can lead to WAL corruption when Durability.ASYNC\_WAL is used. The reason is that we release a ByteBuffer before actually persist the content into WAL file.

The problem maybe lead to several errors, for example, ArrayIndexOfOutBounds when replaying WAL. This is because that the ByteBuffer is reused by others.

ERROR org.apache.hadoop.hbase.executor.EventHandler: Caught throwable while processing event RS\_LOG\_REPLAY
java.lang.ArrayIndexOutOfBoundsException: 18056
        at org.apache.hadoop.hbase.KeyValue.getFamilyLength(KeyValue.java:1365)
        at org.apache.hadoop.hbase.KeyValue.getFamilyLength(KeyValue.java:1358)
        at org.apache.hadoop.hbase.PrivateCellUtil.matchingFamily(PrivateCellUtil.java:735)
        at org.apache.hadoop.hbase.CellUtil.matchingFamily(CellUtil.java:816)
        at org.apache.hadoop.hbase.wal.WALEdit.isMetaEditFamily(WALEdit.java:143)
        at org.apache.hadoop.hbase.wal.WALEdit.isMetaEdit(WALEdit.java:148)
        at org.apache.hadoop.hbase.wal.WALSplitter.splitLogFile(WALSplitter.java:297)
        at org.apache.hadoop.hbase.wal.WALSplitter.splitLogFile(WALSplitter.java:195)
        at org.apache.hadoop.hbase.regionserver.SplitLogWorker$1.exec(SplitLogWorker.java:100)

And may even cause segmentation fault and crash the JVM directly. You will see a hs\_err\_pidXXX.log file and usually the problem is SIGSEGV. This is usually because that the ByteBuffer has already been returned to the OS and used for other purpose.

The problem has been reported several times in the past and this time Wellington Ramos Chevreuil provided the full logs and deeply analyzed the logs so we can find the root cause. And Lijin Bin figured out that the problem may only happen when Durability.ASYNC\_WAL is used. Thanks to them.

The problem only effects the 2.x releases, all users are highly recommand to upgrade to a release which has this fix in, especially that if you use Durability.ASYNC\_WAL.


---

* [HBASE-22776](https://issues.apache.org/jira/browse/HBASE-22776) | *Major* | **Rename config names in user scan snapshot feature**

After HBASE-22776, the steps to config user scan snapshot feature is as followings:
1. Check HDFS configuration
2. Add master coprocessor:
    hbase.coprocessor.master.classes=
    “org.apache.hadoop.hbase.security.access.AccessController,
org.apache.hadoop.hbase.security.access.SnapshotScannerHDFSAclController”
3. Enable this feature:
    hbase.acl.sync.to.hdfs.enable=true
4. Modify table scheme to enable this feature for a table:
    alter 't1', CONFIGURATION =\> {'hbase.acl.sync.to.hdfs.enable' =\> 'true'}


---

* [HBASE-15666](https://issues.apache.org/jira/browse/HBASE-15666) | *Critical* | **shaded dependencies for hbase-testing-util**

New shaded artifact for testing: hbase-shaded-testing-util.


---

* [HBASE-22777](https://issues.apache.org/jira/browse/HBASE-22777) | *Major* | **Add a multi-region merge (for fixing overlaps, etc.)**

Changes merge so you can merge more than two regions at a time.  Currently only available inside HBase. HBASE-22827, a follow-on, is about exposing the facility in the Admin API (and then via the shell).


---

* [HBASE-22831](https://issues.apache.org/jira/browse/HBASE-22831) | *Trivial* | **Remove deprecated constructor from TableRecordWriter**

The following constructor was removed in TableRecordWriter (due to HBASE-16774):

#TableRecordWriter(BufferedMutator): Use #TableRecordWriter(JobConf) instead.


---

* [HBASE-22832](https://issues.apache.org/jira/browse/HBASE-22832) | *Trivial* | **Remove deprecated method in HFileOutputFormat2**

The following method was removed in HFileOutputFormat2 (due to HBASE-18241):

#getHTableDescriptor(): Use #getTableDescriptor() instead.


---

* [HBASE-22830](https://issues.apache.org/jira/browse/HBASE-22830) | *Trivial* | **Remove deprecated method from StoreFile**

The following method was removed in StoreFile:

#getModificationTimeStamp(): Use #getModificationTimestamp() instead.


---

* [HBASE-22829](https://issues.apache.org/jira/browse/HBASE-22829) | *Trivial* | **Remove deprecated methods from SnapshotDescription**

Removed the following constructors and method (due to HBASE-16892):

#SnapshotDescription(String, String): Use #SnapshotDescription(String, TableName) instead.
#SnapshotDescription(String, String, SnapshotType): Use #SnapshotDescription(String, TableName, SnapshotType) instead.
#SnapshotDescription(String, String, SnapshotType, String): Use #SnapshotDescription(String, TableName, SnapshotType, String) instead.
#SnapshotDescription(String, String, SnapshotType, String, long, int): Use #SnapshotDescription(String, TableName, SnapshotType, String, long, int, Map) instead.
#getTable(): Use #getTableName() or #getTableNameAsString() instead.


---

* [HBASE-22771](https://issues.apache.org/jira/browse/HBASE-22771) | *Major* | **[HBCK2] fixMeta method and server-side support**

Adds a fixMeta method to hbck Service. Fixes holes in hbase:meta. Follow-up to fix overlaps. See HBASE-22567 also.

Follow-on is adding a client-side to hbase-operator-tools that can exploit this new addition (HBASE-22825)


---

* [HBASE-22856](https://issues.apache.org/jira/browse/HBASE-22856) | *Major* | **HBASE-Find-Flaky-Tests fails with pip error**

Update the base docker image to ubuntu 18.04 for the find flaky tests jenkins job.


---

* [HBASE-22833](https://issues.apache.org/jira/browse/HBASE-22833) | *Minor* | **MultiRowRangeFilter should provide a method for creating a filter which is functionally equivalent to multiple prefix filters**

Provide a public method in MultiRowRangeFilter class to speed the requirement of filtering with multiple row prefixes, it will expand the row prefixes as multiple rowkey ranges by MultiRowRangeFilter, it's more efficient.
{code}
public MultiRowRangeFilter(byte[][] rowKeyPrefixes);
{code}


---

* [HBASE-22841](https://issues.apache.org/jira/browse/HBASE-22841) | *Major* | **TimeRange's factory functions do not support ranges, only \`allTime\` and \`at\`**

Add serveral API in TimeRange class for avoiding using the deprecated TimeRange constructor: 
\* TimeRange#from: Represents the time interval [minStamp, Long.MAX\_VALUE)
\* TimeRange#until: Represents the time interval [0, maxStamp)
\* TimeRange#between: Represents the time interval [minStamp, maxStamp)


---

* [HBASE-22863](https://issues.apache.org/jira/browse/HBASE-22863) | *Major* | **Avoid Jackson versions and dependencies with known CVEs**

1. Stopped exposing vulnerable Jackson1 dependencies so that downstreamers would not pull it in from HBase.
2. However, since Hadoop requires some Jackson1 dependencies, put vulnerable Jackson mapper at test scope in some HBase modules and hence, HBase tarball created by hbase-assembly contains Jackson1 mapper jar in lib. Still, downsteam applications can't pull in Jackson1 from HBase.


---

* [HBASE-22810](https://issues.apache.org/jira/browse/HBASE-22810) | *Major* | **Initialize an separate ThreadPoolExecutor for taking/restoring snapshot**

Introduced a new config key for the snapshot taking/restoring operations at master side:  hbase.master.executor.snapshot.threads, its default value is 3.  means we can have 3 snapshot operations running at the same time.


---

* [HBASE-22755](https://issues.apache.org/jira/browse/HBASE-22755) | *Trivial* | **Remove deprecated methods from Mutation**

Removed the following, deprecated methods from the Mutation class: 

setFamilyCellMap(NavigableMap): Use Mutation#Mutation(byte[], long, NavigableMap) instead.
compareTo(Row): Use Row#COMPARATOR instead.
getTimeStamp(): Use #getTimestamp() instead.


---

* [HBASE-22867](https://issues.apache.org/jira/browse/HBASE-22867) | *Critical* | **The ForkJoinPool in CleanerChore will spawn thousands of threads in our cluster with thousands table**

Replace the ForkJoinPool in CleanerChore by ThreadPoolExecutor which can limit the spawn thread size and avoid  the master GC frequently.  The replacement is an internal implementation in CleanerChore,  so no config key change, the upstream users can just upgrade the hbase master without any other change.


---

* [HBASE-22744](https://issues.apache.org/jira/browse/HBASE-22744) | *Major* | **Remove deprecated classes around status and load**

Removed the deprecated classes ClusterStatus (use ClusterMetrics instead), RegionLoad (use RegionMetrics instead) and ServerLoad (use ServerMetrics instead).


---

* [HBASE-22618](https://issues.apache.org/jira/browse/HBASE-22618) | *Major* | **added the possibility to load custom cost functions**

<!-- markdown -->
Extends `StochasticLoadBalancer` to support user-provided cost function. These are loaded in addition to the default set of cost functions. Custom function implementations must extend `StochasticLoadBalancer$CostFunction`. Enable any additional functions by placing them on the master class path and configuring `hbase.master.balancer.stochastic.additionalCostFunctions` with a comma-separated list of fully-qualified class names.


---

* [HBASE-21879](https://issues.apache.org/jira/browse/HBASE-21879) | *Major* | **Read HFile's block to ByteBuffer directly instead of to byte for reducing young gc purpose**

Before this issue, read path was 100% offheap when block is in the BucketCache. But if a cache miss, then the RS needs to read the block via an on-heap API which causes high young-GC pressure.

This issue adds reading the block via offheap even if reading the block from filesystem directly.  It requires hadoop version(\>=2.9.3) but can also work with older hadoop versions (all works but we continue to read block onheap). It also requires HBASE-21946 which is not yet in place as of this writing/hbase-2.3.0.

We have written a careful doc about the implementation, performance and practice here: https://docs.google.com/document/d/1xSy9axGxafoH-Qc17zbD2Bd--rWjjI00xTWQZ8ZwI\_E/edit#heading=h.nch5d72p27ex


---

* [HBASE-11062](https://issues.apache.org/jira/browse/HBASE-11062) | *Major* | **hbtop**

Introduces hbtop that's a real-time monitoring tool for HBase like Unix's top command. See the ref guide for the details: https://hbase.apache.org/book.html#hbtop


---

* [HBASE-22802](https://issues.apache.org/jira/browse/HBASE-22802) | *Major* | **Avoid temp ByteBuffer allocation in FileIOEngine#read**

HBASE-21879 introduces a utility class (org.apache.hadoop.hbase.io.ByteBuffAllocator) used for allocating/freeing ByteBuffers from/to NIO ByteBuffer pool, when BucketCache enabled with file or mmap engine, we will use this ByteBuffer pool to avoid temp ByteBuffer allocation a lot.


---

* [HBASE-21745](https://issues.apache.org/jira/browse/HBASE-21745) | *Critical* | **Make HBCK2 be able to fix issues other than region assignment**

This issue adds via its subtasks:

 \* An 'HBCK Report' page to the Master UI added by HBASE-22527+HBASE-22709+HBASE-22723+ (since 2.1.6, 2.2.1, 2.3.0). Lists consistency or anomalies found via new hbase:meta consistency checking extensions added to CatalogJanitor (holes, overlaps, bad servers) and by a new 'HBCK chore' that runs at a lesser periodicity that will note filesystem orphans and overlaps as well as the following conditions:
 \*\* Master thought this region opened, but no regionserver reported it. 
 \*\* Master thought this region opened on Server1, but regionserver reported Server2 
 \*\* More than one regionservers reported opened this region
 Both chores can be triggered from the shell to regenerate ‘new’ reports.
 \* Means of scheduling a ServerCrashProcedure (HBASE-21393).
 \* An ‘offline’ hbase:meta rebuild (HBASE-22680).
 \* Offline replace of hbase.version and hbase.id
 \* Documentation on how to use completebulkload tool to ‘adopt’ orphaned data found by new HBCK2 ‘filesystem’ check (see below) and ‘HBCK chore’ (HBASE-22859)
 \* A ‘holes’ and ‘overlaps’ fix that runs in the master that uses new bulk-merge facility to collapse many overlaps in the one go.
 \* hbase-operator-tools HBCK2 client tool got a bunch of additions:
 \*\* A specialized 'fix' for the case where operators ran old hbck 'offlinemeta' repair and destroyed their hbase:meta; it ties together holes in meta with orphaned data in the fs (HBASE-22567)
 \*\* A ‘filesystem’ command that reports on orphan data as well as bad references and hlinks with a ‘fix’ for the latter two options (based on hbck1 facility updated).
 \*\* Adds back the ‘replication’ fix facility from hbck1 (HBASE-22717)

The compound result is that hbck2 is now in excess of hbck1 abilities. The provided functionality is disaggregated as per the hbck2 philosophy of providing 'plumbing' rather than 'porcelain' so there is work to do still adding fix-it playbooks, scripting across outages, and automation.


---

* [HBASE-22796](https://issues.apache.org/jira/browse/HBASE-22796) | *Major* | **[HBCK2] Add fix of overlaps to fixMeta hbck Service**

Adds fix of overlaps to the fixMeta hbck service method. Uses the bulk-merge facility. Merges a max of 10 at a time. Set hbase.master.metafixer.max.merge.count to higher if you want to do more than 10 in the one go.


---

* [HBASE-22760](https://issues.apache.org/jira/browse/HBASE-22760) | *Major* | **Stop/Resume Snapshot Auto-Cleanup activity with shell command**

By default, snapshot auto cleanup based on TTL would be enabled for any new cluster. At any point in time, if snapshot cleanup is supposed to be stopped due to some snapshot restore activity or any other reason, it is advisable to disable it using shell command:
hbase\> snapshot\_cleanup\_switch false

We can re-enable it using:
hbase\> snapshot\_cleanup\_switch true

We can query whether snapshot auto cleanup is enabled for cluster using:
hbase\> snapshot\_cleanup\_enabled


---

* [HBASE-21874](https://issues.apache.org/jira/browse/HBASE-21874) | *Major* | **Bucket cache on Persistent memory**

Added a new IOEngine type for Bucket cache ie Persistent memory. In order to use BC over pmem configure IOEngine as 
\<property\>
    \<name\>hbase.bucketcache.ioengine\</name\>
    \<value\> pmem:///path in persistent memory \</value\>
  \</property\>


---

* [HBASE-23040](https://issues.apache.org/jira/browse/HBASE-23040) | *Minor* | **region mover gives NullPointerException instead of saying a host isn't in the cluster**

giving the region mover "unload" command a region server name that isn't recognized by the cluster results in a "I don't know about that host" message instead of a NPE.

set log level to DEBUG if you'd like the region mover to log the set of region server names it got back from the cluster.


---

* [HBASE-23046](https://issues.apache.org/jira/browse/HBASE-23046) | *Minor* | **Remove compatibility case from truncate command**

Remove backward compatibility from \`truncate\` and \`truncate\_preserve\` shell commands. This means that these commands from HBase Clients are not compatible with pre-0.99 HBase clusters.


---

* [HBASE-22975](https://issues.apache.org/jira/browse/HBASE-22975) | *Minor* | **Add read and write QPS metrics at server level and table level**

This issue adds read and write QPS(query per second) metrics at server and table level. The table level QPS metrics aggregation at the per-table for each RegionServer. 

Using DropwizardMeter data structure to calculate QPS. And the metrics can be obtained from JMX.


---

* [HBASE-23035](https://issues.apache.org/jira/browse/HBASE-23035) | *Major* | **Retain region to the last RegionServer make the failover slower**

Since 2.0.0，when one regionserver crashed and back online again, AssignmentManager will retain the region locations and try assign the regions to this regionserver(same host:port with the crashed one) again. But for 1.x.x, the behavior is round-robin assignment for the regions belong to the crashed regionserver. This jira change the "retain" assignment to round-robin assignment, which is same with 1.x.x version. This change will make the failover faster and improve availability.


---

* [HBASE-23118](https://issues.apache.org/jira/browse/HBASE-23118) | *Major* | **[RELEASE SCRIPTS] Allow creating a RC from an existing tag**

Now you could use ./do-release-docker.sh -s build,publish to run build and then publish, and skip the tag step.


---

* [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | *Critical* | **Define a public interface for Canary and move existing implementation to LimitedPrivate**

<!-- markdown -->
Downstream users who wish to programmatically check the health of their HBase cluster may now rely on a public interface derived from the previously private implementation of the canary cli tool. The interface is named `Canary` and can be found in the user facing javadocs.

Downstream users who previously relied on the invoking the canary via the Java classname (either on the command line or programmatically) will need to change how they do so because the non-public implementation has moved.


---

* [HBASE-20626](https://issues.apache.org/jira/browse/HBASE-20626) | *Major* | **Change the value of "Requests Per Second" on WEBUI**

Use 'totalRowActionRequestCount' to calculate QPS on web UI.


---

* [HBASE-23177](https://issues.apache.org/jira/browse/HBASE-23177) | *Major* | **If fail to open reference because FNFE, make it plain it is a Reference**

Changes the message on the FNFE exception thrown when the file a Reference points to is missing; the message now includes detail on Reference as well as pointed-to file so can connect how FNFE relates to region open.


---

* [HBASE-23172](https://issues.apache.org/jira/browse/HBASE-23172) | *Minor* | **HBase Canary region success count metrics reflect column family successes, not region successes**

Added a comment to make clear that read/write success counts are tallying column family success counts, not region success counts. 

Additionally, the region read and write latencies previously only stored the latencies of the last column family of the region reads/writes. This has been fixed by using a map of each region to a list of read and write latency values.


---

* [HBASE-22679](https://issues.apache.org/jira/browse/HBASE-22679) | *Major* | **Remove all deprecated methods of CellUtil**

Removed CellUtil methods deprecated  since hbase 2.0.0.


---

* [HBASE-23203](https://issues.apache.org/jira/browse/HBASE-23203) | *Major* | **NPE in RSGroup info**

Add listTableDescriptors(boolean) to Admin interface to align with AsyncAdmin.


---

* [HBASE-22460](https://issues.apache.org/jira/browse/HBASE-22460) | *Minor* | **Reopen a region if store reader references may have leaked**

Leaked store files can not be removed even after it is invalidated via compaction. A reasonable mitigation for a reader reference leak would be a fast reopen of the region on the same server.

Configs:

1. hbase.master.regions.recovery.check.interval :

Regions Recovery Chore interval in milliseconds. This chore keeps running at this interval to find all regions with configurable max store file ref count and reopens them. Defaults to 20 mins

2. hbase.regions.recovery.store.file.ref.count :

This config represents Store files Ref Count threshold value considered for reopening regions. Any region with store files ref count \> this value would be eligible for reopening by master. Default value -1 indicates this feature is turned off. Only positive integer value should be provided to enable this feature.


---

* [HBASE-23222](https://issues.apache.org/jira/browse/HBASE-23222) | *Critical* | **Better logging and mitigation for MOB compaction failures**

<!-- markdown -->

The MOB compaction process in the HBase Master now logs more about its activity.

In the event that you run into the problems described in HBASE-22075, there is a new HFileCleanerDelegate that will stop all removal of MOB hfiles from the archive area. It can be configured by adding `org.apache.hadoop.hbase.mob.ManualMobMaintHFileCleaner` to the list configured for `hbase.master.hfilecleaner.plugins`. This new cleaner delegate will cause your archive area to grow unbounded; you will have to manually prune files which may be prohibitively complex. Consider if your use case will allow you to mitigate by disabling mob compactions instead.

Caveats:
* Be sure the list of cleaner delegates still includes the default cleaners you will likely need: ttl, snapshot, and hlink.
* Be mindful that if you enable this cleaner delegate then there will be *no* automated process for removing these mob hfiles. You should see a single region per table in `%hbase_root%/archive` that accumulates files over time. You will have to determine which of these files are safe or not to remove.
* You should list this cleaner delegate after the snapshot and hlink delegates so that you can enable sufficient logging to determine when an archived mob hfile is needed by those subsystems. When set to `TRACE` logging, the CleanerChore logger will include archive retention decision justifications.
* If your use case creates a large number of uniquely named tables, this new delegate will cause memory pressure on the master.


---

* [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | *Blocker* | **Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs**

<!-- markdown -->

the Apache HBase REST Proxy now uses Jackson Databind version 2.9.10.1 to address the following CVEs

  - CVE-2019-16942
  - CVE-2019-16943

Users of prior releases with Jackson Databind 2.9.10 are advised to either upgrade to this release or to upgrade their local Jackson Databind jar directly.


---

* [HBASE-23243](https://issues.apache.org/jira/browse/HBASE-23243) | *Major* | **[pv2] Filter out SUCCESS procedures; on decent-sized cluster, plethora overwhelms problems**

The 'Procedures & Locks' tab in Master UI only displays problematic Procedures now (RUNNABLE, WAITING-TIMEOUT, etc.). It no longer notes procedures whose state is SUCCESS.


---

* [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | *Minor* | **Log message about CleanerChore delegate initialization should be at INFO**

CleanerChore delegate initialization is now logged at INFO level instead of DEBUG


---

* [HBASE-19450](https://issues.apache.org/jira/browse/HBASE-19450) | *Minor* | **Add log about average execution time for ScheduledChore**

<!-- markdown -->
HBase internal chores now log a moving average of how long execution of each chore takes at `INFO` level for the logger `org.apache.hadoop.hbase.ScheduledChore`.

Such messages will happen at most once per five minutes.


---

* [HBASE-23282](https://issues.apache.org/jira/browse/HBASE-23282) | *Major* | **HBCKServerCrashProcedure for 'Unknown Servers'**

hbck2 scheduleRecoveries will now run a SCP that also looks in hbase:meta for any references to the scheduled server -- not just consult Master in-memory state -- just in case vestiges of the server are leftover in hbase:meta


---

* [HBASE-23321](https://issues.apache.org/jira/browse/HBASE-23321) | *Minor* | **[hbck2] fixHoles of fixMeta doesn't update in-memory state**

If holes in hbase:meta, hbck2 fixMeta now will update Master in-memory state so you do not need to restart master just so you can assign the new hole-bridging regions.


---

* [HBASE-23322](https://issues.apache.org/jira/browse/HBASE-23322) | *Minor* | **[hbck2] Simplification on HBCKSCP scheduling**

An hbck2 scheduleRecoveries will run a subclass of ServerCrashProcedure which asks Master what Regions were on the dead Server but it will also do a hbase:meta table scan to see if any vestiges of the old Server remain (for the case where an SCP failed mid-point leaving references in place or where Master and hbase:meta deviated in accounting).


---

* [HBASE-23223](https://issues.apache.org/jira/browse/HBASE-23223) | *Major* | **Support the offsetLock of bucketCache to use strong reference**

The offsetLock of bucketCache use soft reference based impl by default,it could reclaim mem when not enough,but a lot of soft reference object would lead to long puase when mixed gc occurs,so if the count of offset is limited and you have enough mem(most of the time it is true),then the strong reference is better choice.

Set hbase.bucketcache.offsetlock.usestrongref=true to enable it.


---

* [HBASE-23234](https://issues.apache.org/jira/browse/HBASE-23234) | *Major* | **Provide .editorconfig based on checkstyle configuration**

Adds a .editorconfig file with configurations populated by IntelliJ, based on our checkstyle configuration. There's lots of IntelliJ-specific configs in here that I assume are not replicated to Eclipse or Netbeans users. Any devs using those tools should push whatever updates they see fit, but please start with the checkstyle configs as the origin of truth.


---

* [HBASE-22969](https://issues.apache.org/jira/browse/HBASE-22969) | *Minor* | **A new binary component comparator(BinaryComponentComparator) to perform comparison of arbitrary length and position**

With BinaryComponentCompartor applications will be able to design diverse and powerful set of filters for rows and columns. See https://issues.apache.org/jira/browse/HBASE-22969 for example. In general, the comparator can be used with any filter taking ByteArrayComparable. As of now, following filters take ByteArrayComparable: 

1. RowFilter
2. ValueFilter
3. QualifierFilter
4. FamilyFilter
5. ColumnValueFilter


---

* [HBASE-23312](https://issues.apache.org/jira/browse/HBASE-23312) | *Major* | **HBase Thrift SPNEGO configs (HBASE-19852) should be backwards compatible**

The newer HBase Thrift SPNEGO configs should not be required. The hbase.thrift.spnego.keytab.file and hbase.thrift.spnego.principal configs will fall back to the hbase.thrift.keytab.file and hbase.thrift.kerberos.principal original configs. The older configs will log a deprecation warning. It is preferred to new the newer SPNEGO configurations.


---

* [HBASE-23293](https://issues.apache.org/jira/browse/HBASE-23293) | *Minor* | **[REPLICATION] make ship edits timeout configurable**

The default rpc timeout for ReplicationSourceShipper#shipEdits is 60s, when bulkload replication enabled, timeout exception may be occurred.
Now we can conf the timeout value through replication.source.shipedits.timeout, and it’s adaptive.


---

* [HBASE-23582](https://issues.apache.org/jira/browse/HBASE-23582) | *Minor* | **Unbalanced braces in string representation of table descriptor**

Fixed unbalanced braces in string representation within HBase shell


---

* [HBASE-23549](https://issues.apache.org/jira/browse/HBASE-23549) | *Minor* | **Document steps to disable MOB for a column family**

The reference guide now includes a walk through of disabling the MOB feature if needed while maintaining availability.


---

* [HBASE-23239](https://issues.apache.org/jira/browse/HBASE-23239) | *Major* | **Reporting on status of backing MOB files from client-facing cells**

<!-- markdown -->

Users of the MOB feature can now use the `mobrefs` utility to get statistics about data in the MOB system and verify the health of backing files on HDFS.

```
HADOOP_CLASSPATH=/etc/hbase/conf:$(hbase mapredcp) yarn jar \
    /some/path/to/hbase-shaded-mapreduce.jar mobrefs mobrefs-report-output some_table foo
```

See javadocs of the class `MobRefReporter` for more details.

the reference guide has added some information about MOB internals and troubleshooting.


---

* [HBASE-23066](https://issues.apache.org/jira/browse/HBASE-23066) | *Minor* | **Create a config that forces to cache blocks on compaction**

The configuration 'hbase.rs.cacheblocksonwrite' was used to enable caching the blocks on write. But purposefully we were not caching the blocks when we do compaction (since it may be very aggressive) as the caching happens as and when the writer completes a block. 
In cloud environments since they have bigger sized caches - though they try to enable 'hbase.rs.prefetchblocksonopen' (non - aggressive way of caching the blocks proactively on reader creation) it does not help them because it takes time to cache the compacted blocks. 
This feature creates a new configuration  'hbase.rs.cachecompactedblocksonwrite' which when set to 'true' will enable the blocks created out of compaction. 
Remember that since it is aggressive caching the user should be having enough cache space - if not it may lead to other active blocks getting evicted.
From the shell this can be enabled by using the option per Column Family also by using the below format
{code}
create 't1', 'f1', {NUMREGIONS =\> 15, SPLITALGO =\> 'HexStringSplit', CONFIGURATION =\> {'hbase.rs.cachecompactedblocksonwrite' =\> 'true'}}
{code}


---

* [HBASE-20461](https://issues.apache.org/jira/browse/HBASE-20461) | *Major* | **Implement fsync for AsyncFSWAL**

Now AsyncFSWAL also supports Durability.FSYNC\_WAL.


---

* [HBASE-23320](https://issues.apache.org/jira/browse/HBASE-23320) | *Major* | **Upgrade surefire plugin to 3.0.0-M4**

Bumped surefire plugin to 3.0.0-M4


---

* [HBASE-23326](https://issues.apache.org/jira/browse/HBASE-23326) | *Critical* | **Implement a ProcedureStore which stores procedures in a HRegion**

Use a region based procedure store to replace the old customized WAL based procedure store. The procedure data migration is done automatically during upgrading. After upgrading, the MasterProcWALs directory will be deleted and a new MasterProc directory will be created. And notice that a region will still write WAL so we still have WAL files and they will be moved to the oldWALs directory. The file name is mostly like a normal WAL file, and the only difference is that it is ended with "$masterproc$".


---

* [HBASE-23617](https://issues.apache.org/jira/browse/HBASE-23617) | *Major* | **Add a stress test tool for region based procedure store**

Use ./hbase org.apache.hadoop.hbase.procedure2.store.region.RegionProcedureStorePerformanceEvaluation to run the tool.


---

* [HBASE-23618](https://issues.apache.org/jira/browse/HBASE-23618) | *Major* | **Add a tool to dump procedure info in the WAL file**

Use ./hbase org.apache.hadoop.hbase.procedure2.store.region.WALProcedurePrettyPrinter to run the tool.


---

* [HBASE-23590](https://issues.apache.org/jira/browse/HBASE-23590) | *Major* | **Update maxStoreFileRefCount to maxCompactedStoreFileRefCount**

RegionsRecoveryChore introduced as part of HBASE-22460 tries to reopen regions based on config: hbase.regions.recovery.store.file.ref.count.
Region reopen needs to take into consideration all compacted away store files that belong to the region and not store files(non-compacted).

Fixed this bug as part of this Jira. 
Updated description for corresponding configs:

1. hbase.master.regions.recovery.check.interval :

Regions Recovery Chore interval in milliseconds. This chore keeps running at this interval to find all regions with configurable max store file ref count and reopens them. Defaults to 20 mins

2. hbase.regions.recovery.store.file.ref.count :

Very large number of ref count on a compacted store file indicates that it is a ref leak on that object(compacted store file). Such files can not be removed after it is invalidated via compaction. Only way to recover in such scenario is to reopen the region which can release all resources, like the refcount, leases, etc. This config represents Store files Ref Count threshold value considered for reopening regions. Any region with compacted store files ref count \> this value would be eligible for reopening by master. Here, we get the max refCount among all refCounts on all compacted away store files that belong to a particular region. Default value -1 indicates this feature is turned off. Only positive integer value should be provided to enable this feature.


---

* [HBASE-23624](https://issues.apache.org/jira/browse/HBASE-23624) | *Major* | **Add a tool to dump the procedure info in HFile**

Use ./hbase org.apache.hadoop.hbase.procedure2.store.region.HFileProcedurePrettyPrinter to run the tool.


---

* [HBASE-23596](https://issues.apache.org/jira/browse/HBASE-23596) | *Major* | **HBCKServerCrashProcedure can double assign**

Makes it so the recently added HBCKServerCrashProcedure -- the SCP that gets invoked when an operator schedules an SCP via hbck2 scheduleRecoveries command -- now works the same as SCP EXCEPT if master knows nothing of the scheduled servername. In this latter case, HBCKSCP will do a full scan of hbase:meta looking for instances of the passed servername. If any found it will attempt cleanup of hbase:meta references by reassigning any found OPEN or OPENING and by closing any in CLOSING state.

Used to fix instances of what the 'HBCK Report' page shows as 'Unknown Servers'.


---

* [HBASE-23369](https://issues.apache.org/jira/browse/HBASE-23369) | *Major* | **Auto-close 'unknown' Regions reported as OPEN on RegionServers**

If a RegionServer reports a Region as OPEN in disagreement with Master's status on the Region, the Master now tells the RegionServer to silently close the Region.


---

* [HBASE-23588](https://issues.apache.org/jira/browse/HBASE-23588) | *Major* | **Cache index blocks and bloom blocks on write if CacheCompactedBlocksOnWrite is enabled**

If cacheOnWrite is enabled during flush or compaction, index and bloom blocks(with data blocks) would be automatically cached during write.


---

* [HBASE-23651](https://issues.apache.org/jira/browse/HBASE-23651) | *Major* | **Region balance throttling can be disabled**

Set hbase.balancer.max.balancing to a int value which \<=0 will disable region balance throttling.


---

* [HBASE-23628](https://issues.apache.org/jira/browse/HBASE-23628) | *Minor* | **Replace Apache Commons Digest Base64 with JDK8 Base64**

From the PR:

"Yes. The two create the same output... I just wrote a small test suite to increase my confidence on that. I generated many tens of millions of random byte patterns and compared the output of the two algorithms. They came back identical every time.

"Just in case any inquiring minds would like to know, there is no longer an encoding required when generating the strings. The JDK implementation specifically specifies that strings returned are StandardCharsets.ISO\_8859\_1. This does not change anything because UTF8 and ISO\_8859 overlap for the limited character set (64 characters) the encoding uses."


---

* [HBASE-23619](https://issues.apache.org/jira/browse/HBASE-23619) | *Trivial* | **Use built-in formatting for logging in hbase-zookeeper**

Changed the logging in hbase-zookeeper to use built-in formatting


---

* [HBASE-23286](https://issues.apache.org/jira/browse/HBASE-23286) | *Major* | **Improve MTTR: Split WAL to HFile**

Add a new feature to improve MTTR which have 3 steps to failover:
1. Read WAL and write HFile to region’s column family’s recovered.hfiles directory.
2. Open region.
3. Bulkload the recovered.hfiles for every column family.

Compared to DLS(distributed log split), this feature will reduce region open time significantly.

Config hbase.wal.split.to.hfile to true to enable this featue.


---

* [HBASE-23679](https://issues.apache.org/jira/browse/HBASE-23679) | *Critical* | **FileSystem instance leaks due to bulk loads with Kerberos enabled**

This issues fixes an issue with Bulk Loading on installations with Kerberos enabled and more than a single RegionServer. When multiple tables are involved in hosting a table's regions which are being bulk-loaded into, all but the RegionServer hosting the table's first Region will "leak" one DistributedFileSystem object onto the heap, never freeing that memory. Eventually, with enough bulk loads, this will create a situation for RegionServers where they have no free heap space and will either spend all time in JVM GC, lose their ZK session, or crash with an OutOfMemoryError.

The only mitigation for this issue is to periodically restart RegionServers. All earlier versions of HBase 2.x are subject to this issue (2.0.x, \<=2.1.8, \<=2.2.3)


---

* [HBASE-23689](https://issues.apache.org/jira/browse/HBASE-23689) | *Minor* | ** Bookmark for github PR to jira redirection**

Docs how-to install a useful javascript bookmark that redirects from GitHub pull requests to the corresponding jira work item. Handy.


---

* [HBASE-23675](https://issues.apache.org/jira/browse/HBASE-23675) | *Minor* | **Move to Apache parent POM version 22**

Updated parent pom to Apache version 22.


---

* [HBASE-23680](https://issues.apache.org/jira/browse/HBASE-23680) | *Major* | **RegionProcedureStore missing cleaning of hfile archive**

Add a new config to hbase-default.xml

  \<property\>
    \<name\>hbase.procedure.store.region.hfilecleaner.plugins\</name\>
    \<value\>org.apache.hadoop.hbase.master.cleaner.TimeToLiveHFileCleaner\</value\>
    \<description\>A comma-separated list of BaseHFileCleanerDelegate invoked by
    the RegionProcedureStore HFileCleaner service. These HFiles cleaners are
    called in order, so put the cleaner that prunes the most files in front. To
    implement your own BaseHFileCleanerDelegate, just put it in HBase's classpath
    and add the fully qualified class name here. Always add the above
    default hfile cleaners in the list as they will be overwritten in
    hbase-site.xml.\</description\>
  \</property\>

It will share the same TTL with other HFileCleaners. And you can also implement your own cleaner and change this property to enable it.


---

* [HBASE-23156](https://issues.apache.org/jira/browse/HBASE-23156) | *Major* | **start-hbase.sh failed with ClassNotFoundException when build with hadoop3**

Introduce a new hbase-assembly/src/main/assembly/hadoop-three-compat.xml for build with hadoop 3.x.


---

* [HBASE-23347](https://issues.apache.org/jira/browse/HBASE-23347) | *Major* | **Pluggable RPC authentication**

This change introduces an internal abstraction layer which allows for new SASL-based authentication mechanisms to be used inside HBase services. All existing SASL-based authentication mechanism were ported to the new abstraction, making no external change in runtime semantics, client API, or RPC serialization format.

Developers familiar with extending HBase can implement authentication mechanism beyond simple Kerberos and DelegationTokens which authenticate HBase users against some other user database. HBase service authentication (Master to/from RegionServer) continue to operate solely over Kerberos.


---

* [HBASE-21065](https://issues.apache.org/jira/browse/HBASE-21065) | *Major* | **Try ROW\_INDEX\_V1 encoding on meta table (fix bloomfilters on meta while we are at it)**

Enables ROW\_INDEX\_V1 encoding on hbase:meta by default. Also enables blooms.

Will NOT enable encoding and blooms on upgrade. Operator will need to do this manually by editing hbase:meta schema (Or we provide a migration script to enable these configs -- out-of-scope for this JIRA).


---

* [HBASE-23686](https://issues.apache.org/jira/browse/HBASE-23686) | *Major* | **Revert binary incompatible change and remove reflection**

- Reverts a binary incompatible binary change for ByteRangeUtils
- Usage of reflection inside CommonFSUtils removed


---

* [HBASE-23069](https://issues.apache.org/jira/browse/HBASE-23069) | *Critical* | **periodic dependency bump for Sep 2019**

caffeine: 2.6.2 =\> 2.8.1
commons-codec: 1.10 =\> 1.13
commons-io: 2.5 =\> 2.6
disrupter: 3.3.6 =\> 3.4.2
httpcore: 4.4.6 =\> 4.4.13
jackson: 2.9.10 =\> 2.10.1
jackson.databind: 2.9.10.1 =\> 2.10.1
jetty: 9.3.27.v20190418 =\> 9.3.28.v20191105
protobuf.plugin: 0.5.0 =\> 0.6.1
zookeeper: 3.4.10 =\> 3.4.14
slf4j: 1.7.25 =\> 1.7.30
rat: 0.12 =\> 0.13
asciidoctor: 1.5.5 =\> 1.5.8
asciidoctor.pdf: 1.5.0-alpha.15 =\> 1.5.0-rc.2
error-prone: 2.3.3 =\> 2.3.4


---

* [HBASE-23647](https://issues.apache.org/jira/browse/HBASE-23647) | *Major* | **Make MasterRegistry the default registry impl**

<!-- markdown -->
Enables master based registry as the default registry used by clients to fetch connection metadata.
Refer to the section "Master Registry" in the client documentation for more details and advantages
of this implementation over the default Zookeeper based registry. 

Configuration parameter that controls the registry in use: `hbase.client.registry.impl`

Where to set this: HBase client configuration (hbase-site.xml)

Possible values:
- `org.apache.hadoop.hbase.client.ZKConnectionRegistry` (For ZK based registry implementation)
- `org.apache.hadoop.hbase.client.MasterRegistry` (New, for master based registry implementation)

Notes on defaults:

- For v3.0.0 and later, MasterRegistry is the default registry
- For all releases in 2.x line, ZK based registry is the default.

This feature has been back ported to 2.3.0 and later releases. MasterRegistry can be enabled by setting the following client configuration.

```
<property>
  <name>hbase.client.registry.impl</name>
  <value>org.apache.hadoop.hbase.client.MasterRegistry</value>
</property>
```


---

* [HBASE-23738](https://issues.apache.org/jira/browse/HBASE-23738) | *Minor* | **Remove deprecated createLocalHRegion from HBaseTestingUtility**

The following method was removed from HBaseTestingUtility (due to HBASE-13893):

- createLocalHRegion(byte[], byte[], byte[], String, Configuration, boolean, Durability, WAL, byte[]...): Use #createLocalHRegion(TableName, byte[], byte[], boolean, Durability, WAL, byte[]...) instead.


---

* [HBASE-23736](https://issues.apache.org/jira/browse/HBASE-23736) | *Minor* | **Remove deprecated getTimeStampOfLastAppliedOp from MetricsSink**

Removed the following deprecated functionality from the MetricsSink class:

- getTimeStampOfLastAppliedOp() (deprecated in HBASE-13300). Use #getTimestampOfLastAppliedOp() instead.


---

* [HBASE-17115](https://issues.apache.org/jira/browse/HBASE-17115) | *Major* | **HMaster/HRegion Info Server does not honour admin.acl**

Implements authorization for the HBase Web UI by limiting access to certain endpoints which could be used to extract sensitive information from HBase.

Access to these restricted endpoints can be limited to a group of administrators, identified either by a list of users (hbase.security.authentication.spnego.admin.users) or by a list of groups
(hbase.security.authentication.spnego.admin.groups).  By default, neither of these values are set which will preserve backwards compatibility (allowing all authenticated users to access all endpoints).

Further, users who have sensitive information in the HBase service configuration can set hbase.security.authentication.ui.config.protected to true which will treat the configuration endpoint as a protected, admin-only resource. By default, all authenticated users may access the configuration endpoint.


---

* [HBASE-23776](https://issues.apache.org/jira/browse/HBASE-23776) | *Minor* | **Remove deprecated createLocalHTU from HBaseTestingUtility**

The following method was removed from HBaseTestingUtility (due to HBASE-19841):

- createLocalHTU(): Use #HBaseTestingUtility() instead.


---

* [HBASE-23777](https://issues.apache.org/jira/browse/HBASE-23777) | *Minor* | **Remove deprecated createTableDescriptor(String, int, int, int, KeepDeletedCells) from HBaseTestingUtility**

The following method was removed from HBaseTestingUtility (due to HBASE-13893):

- createTableDescriptor(String, int, int, int, KeepDeletedCells): Use #createTableDescriptor(TableName, int, int, int, KeepDeletedCells) instead.


---

* [HBASE-23772](https://issues.apache.org/jira/browse/HBASE-23772) | *Minor* | **Remove deprecated getTimeStampOfLastShippedOp from MetricsSource**

Removed the following deprecated functionality from MetricsSource (due to HBASE-13300):

- getTimeStampOfLastShippedOp(). Use #getTimestampOfLastShippedOp() instead.


---

* [HBASE-23350](https://issues.apache.org/jira/browse/HBASE-23350) | *Major* | **Make compaction files cacheonWrite configurable based on threshold**

This JIRA adds a new configuration - \`hbase.rs.cachecompactedblocksonwrite.threshold\`. This configuration is the maximum total size (in bytes) of the compacted files below which the configuration \`hbase.rs.cachecompactedblocksonwrite\` is honoured. If the total size of the compacted fies exceeds this threshold, even when \`hbase.rs.cachecompactedblocksonwrite\` is enabled, the data blocks are not cached. Caching index and bloom blocks is not affected by this configuration (user configuration is always honoured).

Default value of this configuration is Long.MAX\_VALUE. This means whatever the total size of the compacted files, it wil be cached.


---

* [HBASE-23775](https://issues.apache.org/jira/browse/HBASE-23775) | *Minor* | **Remove deprecated createLocalHTU(Configuration) from HBaseTestingUtility**

The following method was removed from HBaseTestingUtility (due to HBASE-19841):

- createLocalHTU(Configuration): Use #HBaseTestingUtility(Configuration) instead.


---

* [HBASE-23554](https://issues.apache.org/jira/browse/HBASE-23554) | *Major* | **Encoded regionname to regionname utility**

    Adds shell command regioninfo:

      hbase(main):001:0\>  regioninfo '0e6aa5c19ae2b2627649dc7708ce27d0'
      {ENCODED =\> 0e6aa5c19ae2b2627649dc7708ce27d0, NAME =\> 'TestTable,,1575941375972.0e6aa5c19ae2b2627649dc7708ce27d0.', STARTKEY =\> '', ENDKEY =\> '00000000000000000000299441'}
      Took 0.4737 seconds


---

* [HBASE-23844](https://issues.apache.org/jira/browse/HBASE-23844) | *Minor* | **Remove deprecated Scan(byte[], Filter) from Scan**

The following method was removed from Scan (due to HBASE-17320):

- Scan(byte[], Filter): Use new Scan().withStartRow(startRow).setFilter(filter) instead.


---

* [HBASE-23865](https://issues.apache.org/jira/browse/HBASE-23865) | *Major* | **Up flakey history from 5 to 10**

Changed flakey list reporting to show 5 rather than 10 items. Also changed the second and first part fort counts to be 1C rather than hardcoded 3.


---

* [HBASE-23781](https://issues.apache.org/jira/browse/HBASE-23781) | *Minor* | **Remove deprecated createTableDescriptor(String) from HBaseTestingUtility**

The following method was removed from HBaseTestingUtility (due to HBASE-13893):

- createTableDescriptor(String): Use #createTableDescriptor(TableName, int, int, int, KeepDeletedCells) instead.


---

* [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | *Minor* | **Move Jira-attached file precommit definition from script in Jenkins config to dev-support**

The Jira Precommit job (https://builds.apache.org/job/PreCommit-HBASE-Build/) will now look for a file within the source tree (dev-support/jenkins\_precommit\_jira\_yetus.sh) instead of depending on a script section embedded in the job.


---

* [HBASE-22514](https://issues.apache.org/jira/browse/HBASE-22514) | *Major* | **Reimplement rsgroup feature and move it into core of HBase**

Moved rs group feature into core. Use this flag 'hbase.balancer.rsgroup.enabled' to enable or disable it.

The coprocessor org.apache.hadoop.hbase.rsgroup.RSGroupAdminEndpoint is deprected, but for compatible, if you want the pre 3.0.0 hbase client/shell to communicate with the new hbase cluster, you still need to add this coprocessor to master. And if this coprocessor is specified, the above flag will be set to true automatically to enable rs group feature.

These methods are added to the Admin/AsyncAdmin interface for managing rs groups. See the javadoc of these methods for more details.

  void addRSGroup(String groupName) throws IOException;
  RSGroupInfo getRSGroup(String groupName) throws IOException;
  RSGroupInfo getRSGroup(Address hostPort) throws IOException;
  RSGroupInfo getRSGroup(TableName tableName) throws IOException;
  List\<RSGroupInfo\> listRSGroups() throws IOException;
  List\<TableName\> listTablesInRSGroup(String groupName) throws IOException;
  Pair\<List\<String\>, List\<TableName\>\> getConfiguredNamespacesAndTablesInRSGroup(String groupName) throws IOException;
  void removeRSGroup(String groupName) throws IOException;
  void removeServersFromRSGroup(Set\<Address\> servers) throws IOException;
  void moveServersToRSGroup(Set\<Address\> servers, String targetGroup) throws IOException;
  void setRSGroup(Set\<TableName\> tables, String groupName) throws IOException;
  boolean balanceRSGroup(String groupName) throws IOException;

The shell commands for rs group are not changed.

The main difference on the implementation is that, now the rs group for a table is stored in TableDescriptor, instead of in RSGroupInfo, so the getTables method of RSGroupInfo has been deprecated. And if you use the above Admin methods to get the RSGroupInfo, its getTables method will always return empty. Of course the behavior for the old RSGroupAdminEndpoint is not changed, we will fill the tables field of the RSGroupInfo before returning, to make it compatible with old hbase client/shell.

When upgrading, the migration between the RSGroupInfo and TableDescriptor will be done automatically. It will take sometime, but it is fine to restart master in the middle, the migration will continue after restart.


---

* [HBASE-23146](https://issues.apache.org/jira/browse/HBASE-23146) | *Major* | **Support CheckAndMutate with multiple conditions**

Add a checkAndMutate(row, filter) method in the AsyncTable interface and the Table interface.

This method atomically checks if the row matches the specified filter. If it does, it adds the Put/Delete/RowMutations.

This is a fluent style API, the code is like:

For Table interface:
{code}
table.checkAndMutate(row, filter).thenPut(put);
{code}

For AsyncTable interface:
{code}
table.checkAndMutate(row, filter).thenPut(put)
    .thenAccept(succ -\> {
      if (succ) {
        System.out.println("Check and put succeeded");
      } else {
        System.out.println("Check and put failed");
      }
    });
{code}


---

* [HBASE-23926](https://issues.apache.org/jira/browse/HBASE-23926) | *Major* | **[Flakey Tests] Down the flakies re-run ferocity; it makes for too many fails.**

Down the flakey re-rerun fork count from 1.0C -- i.e. a fork per CPU -- to 0.25C. On a recent run, the machine had 16 cores. 0.25 is 4 cores. We'd hardcoded fork count at 3 previous to changes made by parent.


---

* [HBASE-22978](https://issues.apache.org/jira/browse/HBASE-22978) | *Minor* | **Online slow response log**

get\_slowlog\_responses and clear\_slowlog\_responses are used to retrieve and clear slow RPC logs from RingBuffer maintained by RegionServers.

New Admin APIs:
1.   List\<SlowLogRecord\> getSlowLogResponses(final Set\<ServerName\> serverNames,
      final SlowLogQueryFilter slowLogQueryFilter) throws IOException;

2.   List\<Boolean\> clearSlowLogResponses(final Set\<ServerName\> serverNames)
      throws IOException;

Configs:

1. hbase.regionserver.slowlog.ringbuffer.size:
Default size of ringbuffer to be maintained by each RegionServer in order to store online slowlog responses. This is an in-memory ring buffer of requests that were judged to be too slow in addition to the responseTooSlow logging. The in-memory representation would be complete. For more details, please look into Doc Section: Get Slow Response Log from shell

Default
256

2. hbase.regionserver.slowlog.buffer.enabled:
Indicates whether RegionServers have ring buffer running for storing Online Slow logs in FIFO manner with limited entries. The size of the ring buffer is indicated by config: hbase.regionserver.slowlog.ringbuffer.size The default value is false, turn this on and get latest slowlog responses with complete data.

Default
false


For more details, please look into "Get Slow Response Log from shell" section from HBase book.


---

* [HBASE-23767](https://issues.apache.org/jira/browse/HBASE-23767) | *Major* | **Add JDK11 compilation and unit test support to Github precommit**

Rebuild our Dockerfile with support for multiple JDK versions. Use multiple stages in the Jenkinsfile instead of yetus's multijdk because of YETUS-953. Run those multiple stages in parallel to speed up results.

Note that multiple stages means multiple Yetus invocations means multiple comments on the PreCommit. This should become more obvious to users once we can make use of GitHub Checks API, HBASE-23902.


---

* [HBASE-22827](https://issues.apache.org/jira/browse/HBASE-22827) | *Major* | **Expose multi-region merge in shell and Admin API**

merge\_region shell command can now be used to merge more than 2 regions as well. It takes a list of regions as comma separated values or as an array of regions, and not just 2 regions. The full regionnames and encoded regionnames are continued to be accepted.


---

* [HBASE-23930](https://issues.apache.org/jira/browse/HBASE-23930) | *Minor* | **Shell should attempt to format \`timestamp\` attributes as ISO-8601**

Change timestamp display to be ISO8601 when toString on Cell and outputting in shell....

User used to see....
    
  column=table:state, timestamp=1583967620343 .....

... but now sees:

  column=table:state, timestamp=2020-03-11T23:00:20.343Z ....


---

* [HBASE-23847](https://issues.apache.org/jira/browse/HBASE-23847) | *Minor* | **Remove deprecated setStartRow(byte[]) from Scan**

The following method was removed from Scan (due to HBASE-17320):

- setStartRow(byte): Use #withStartRow(byte[]) instead.


---

* [HBASE-23986](https://issues.apache.org/jira/browse/HBASE-23986) | *Major* | **Bump hadoop-two.version to 2.10.0 on master and branch-2**

Bumped hadoop-two.version to 2.10.0, which means we will drop the support for hadoop-2.8.x and hadoop-2.9.x.


---

* [HBASE-23989](https://issues.apache.org/jira/browse/HBASE-23989) | *Major* | **Consider 2.10.0 in our support matrix**

Add 2.10.0 in our support matrix, and it will be the lowest hadoop2 version supported by HBase-2.3+.

Also add 2.10.0 support in the personality script, the pre commit check for 2.3+ will start to build and test with 2.10.0.


---

* [HBASE-23993](https://issues.apache.org/jira/browse/HBASE-23993) | *Major* | **Use loopback for zk standalone server in minizkcluster**

MiniZKCluster now puts up its standalone node listening on loopback/127.0.0.1 rather than "localhost".


---

* [HBASE-24017](https://issues.apache.org/jira/browse/HBASE-24017) | *Major* | **Turn down flakey rerun rate on all but hot branches**

Changed master, branch-2, and branch-2.1 to twice a day.
Left branch-2.3, branch-2.2, and branch-1 at every 4 hours.
Changed branch-1.4 and branch-1.3 to @daily (1.3 was running every hour).


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

* [HBASE-23981](https://issues.apache.org/jira/browse/HBASE-23981) | *Critical* | **PBType which is marked as IA.Public references protobuf Message**

Move org.apache.hadoop.hbase.types.PBType to hbase-examples and mark it as IA.Private, without replacement. It should not be our public API. Users who still wants to use it should just copy the code into your own code base.


---

* [HBASE-23975](https://issues.apache.org/jira/browse/HBASE-23975) | *Blocker* | **Make hbase-rest use our shaded protobuf**

Move the proto files from hbase-rest module to hbase-protocol-shaded module and make hbase-rest also use the shaded protobuf.


---

* [HBASE-23845](https://issues.apache.org/jira/browse/HBASE-23845) | *Minor* | **Remove deprecated setMaxVersions() from Scan**

The following method was removed from Scan (due to HBASE-17125):

- setMaxVersions(): Use #readAllVersions() instead.


---

* [HBASE-23846](https://issues.apache.org/jira/browse/HBASE-23846) | *Minor* | **Remove deprecated setMaxVersions(int) from Scan**

The following method was removed from Scan (due to HBASE-17125):

- setMaxVersions(int): Use #readVersions(int) instead.


---

* [HBASE-23842](https://issues.apache.org/jira/browse/HBASE-23842) | *Minor* | **Remove deprecated Scan(byte[], byte[]) from Scan**

The following method was removed from Scan (due to HBASE-17320):

- Scan(byte[], byte[]): Use new Scan().withStartRow(startRow).withStopRow(stopRow) instead.


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

* [HBASE-23843](https://issues.apache.org/jira/browse/HBASE-23843) | *Minor* | **Remove deprecated Scan(byte[]) from Scan**

The following method was removed from Scan (due to HBASE-17320):

- Scan(byte[]): Use new Scan().withStartRow(startRow) instead.


---

* [HBASE-24122](https://issues.apache.org/jira/browse/HBASE-24122) | *Major* | **Change machine ulimit-l to ulimit-a so dumps full ulimit rather than just 'max locked memory'**

Our 'Build Artifacts' have a machine directory under which we emit vitals on the host the build was run on. We used to emit the result of 'ulimit -l' as a file named 'ulimit-l'. This has been hijacked to instead emit result of running 'ulimit -a' which includes stat on ulimit -l.


---

* [HBASE-24113](https://issues.apache.org/jira/browse/HBASE-24113) | *Major* | **Upgrade the maven we use from 3.5.4 to 3.6.3 in nightlies**

Branches-2.3+ use maven 3.5.3 building. Older branches use 3.5.4 still.


---

* [HBASE-24055](https://issues.apache.org/jira/browse/HBASE-24055) | *Major* | **Make AsyncFSWAL can run on EC cluster**

Now AsyncFSWAL can also be used against the directory which has EC enabled. Need to make sure you also make use of the hadoop 3.x client as the option is only available in hadoop 3.x.


---

* [HBASE-23153](https://issues.apache.org/jira/browse/HBASE-23153) | *Major* | **PrimaryRegionCountSkewCostFunction SLB function should implement CostFunction#isNeeded**

<!-- markdown -->
The `PrimaryRegionCountSkewCostFunction` for the `StochasticLoadBalancer` is only needed when the read replicas feature is enabled. With this change, that function now properly indicates that it is not needed when the read replica feature is off.

If this improvement is not available, operators with clusters that are not using the read replica feature should manually disable it by setting `hbase.master.balancer.stochastic.primaryRegionCountCost` to `0.0` in hbase-site.xml for all HBase Masters.


---

* [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | *Major* | **Use a fair ReentrantReadWriteLock for the region close lock**

This change modifies the default acquisition policy for the region's close lock in order to prevent observed starvation of close requests. The new boolean configuration parameter 'hbase.regionserver.fair.region.close.lock' controls the lock acquisition policy: if true, the lock is created in fair mode (default); if false, the lock is created in nonfair mode (the old default).


---

* [HBASE-23723](https://issues.apache.org/jira/browse/HBASE-23723) | *Blocker* | **Ensure MOB compaction works in optimized mode after snapshot clone**

<!-- markdown -->
HFiles written for a MOB enabled column family now store metadata with a multimap of TableAtWrite -> MOB HFile name for all cells within.

The additional information about the original table is used to properly locate the written hfiles during the write amplification optimized compaction process.


---

* [HBASE-24121](https://issues.apache.org/jira/browse/HBASE-24121) | *Major* | **[Authorization] ServiceAuthorizationManager isn't dynamically updatable. And it should be.**

Master & RegionService now support refresh policy authorization defined in hbase-policy.xml without restarting service. To refresh policy, please execute hbase shell command: update\_config or update\_config\_all after policy file updated and synced on all nodes.


---

* [HBASE-23779](https://issues.apache.org/jira/browse/HBASE-23779) | *Major* | **Up the default fork count to make builds complete faster; make count relative to CPU count**

Pass --threads=2 building on jenkins. It shortens nightly build times by about ~25%.

It works by running module build/test in parallel when dependencies allow. Upping the forkcount beyond the pom default of 0.25C would have us broach our CPU budget on jenkins when two modules are running in parallel (2 modules at 0.25% of CPU each makes 0.5C and on jenkins, hadoop nodes run two jenkins executors per host).  Higher forkcounts also seems to threaten build stability.

For running tests locally, to go faster, up fork count.

$ x="0.5C"  ;  mvn --threads=2  -Dsurefire.firstPartForkCount=$x -Dsurefire.secondPartForkCount=$x test -PrunAllTests

You could up the x from 0.5C to 1.0C but YMMV (On overcommitted hardware, tests start bombing out pretty soon after startup). You could try upping thread count but on occasion are likely to overcommit hardware.


---

* [HBASE-23994](https://issues.apache.org/jira/browse/HBASE-23994) | *Trivial* | ** Add WebUI to Canary**

<!-- markdown -->
The Canary tool now offers a WebUI when run in `region` mode (the default mode). It is enabled by default, and by default, it binds to `0.0.0.0:16050`. This can be overridden by setting `hbase.canary.info.bindAddress` and `hbase.canary.info.port`. To disable entirely, set the port to `-1`.


---

* [HBASE-24112](https://issues.apache.org/jira/browse/HBASE-24112) | *Major* | **[RSGroup] Support renaming rsgroup**

Support RSGroup renaming in core codebase. New API Admin#renameRSGroup(String, String) is introduced in 3.0.0.


---

* [HBASE-24072](https://issues.apache.org/jira/browse/HBASE-24072) | *Major* | **Nightlies reporting OutOfMemoryError: unable to create new native thread**

Hadoop hosts have had their ulimit -u raised from 10000 to 30000 (per user, by INFRA). The Docker build container has had its limit raised from 10000 to 12500.


---

* [HBASE-23797](https://issues.apache.org/jira/browse/HBASE-23797) | *Blocker* | **Let CPEPs also use our shaded protobuf**

Coprocessors are now also required to depend on the hbase shaded protobuf. The core coprocessor such as acl and visibility have already been upgraded, users should change their coprocessors too when upgrading to 3.0.0. Shading does not break wire compatibility so use old client to communicate with new coprocessor services are possible.

Notice that, the hbase-protocol module has been removed, all protos have been moved to hbase-protocol-shaded. For coprocessor implementation you should now depend on the shaded protos, and also, you need to make your protos depend on the shaded protobuf version as well. Please check the refguide or look at the pom for hbase-protocol-shaded module directly on how to do this through maven-replacer-plugin. We also have some examples in hbase-examples module, please see org.apache.hadoop.hbase.coprocessor.example.BulkDeleteEndpoint for more details.


---

* [HBASE-22749](https://issues.apache.org/jira/browse/HBASE-22749) | *Major* | **Distributed MOB compactions**

<!-- markdown -->
MOB compaction is now handled in-line with per-region compaction on region
  servers

- regions with mob data store per-hfile metadata about which mob hfiles are
  referenced
- admin requested major compaction will also rewrite MOB files; periodic RS
  initiated major compaction will not
- periodically a chore in the master will initiate a major compaction that
  will rewrite MOB values to ensure it happens. controlled by
  'hbase.mob.compaction.chore.period'. default is weekly
- control how many RS the chore requests major compaction on in parallel
  with 'hbase.mob.major.compaction.region.batch.size'. default is as
  parallel as possible.
- periodic chore in master will scan backing hfiles from regions to get the
  set of referenced mob hfiles and archive those that are no longer
  referenced. control period with 'hbase.master.mob.cleaner.period'
- Optionally, RS that are compacting mob files can limit write
  amplification by not rewriting values from mob hfiles over a certain size
  limit. opt-in by setting 'hbase.mob.compaction.type' to 'optimized'.
  control threshold by 'hbase.mob.compactions.max.file.size'.
  default is 1GiB
- Should smoothly integrate with existing MOB users via rolling upgrade.
  will delay old MOB file cleanup until per-region compaction has managed
  to compact each region at least once so that used mob hfile metadata can
  be gathered.

This improvement obviates the dataloss in HBASE-22075.


---

* [HBASE-24185](https://issues.apache.org/jira/browse/HBASE-24185) | *Major* | **Junit tests do not behave well with System.exit or Runtime.halt or JVM exits in general.**

Tests that fail because a process -- RegionServer or Master -- called System.exit, will now instead throw an exception.


---

* [HBASE-23829](https://issues.apache.org/jira/browse/HBASE-23829) | *Major* | **Get \`-PrunSmallTests\` passing on JDK11**

\`-PrunSmallTests\` now pass on JDK11 when using \`-Phadoop.profile=3.0\`.


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

* [HBASE-23848](https://issues.apache.org/jira/browse/HBASE-23848) | *Minor* | **Remove deprecated setStopRow(byte[]) from Scan**

The following method was removed from Scan (due to HBASE-17320):

- setStopRow(byte[]): Use #withStopRow(byte[]) instead.


---

* [HBASE-24024](https://issues.apache.org/jira/browse/HBASE-24024) | *Major* | **Optionally reject multi() requests with very high no of rows**

New Config: hbase.rpc.rows.size.threshold.reject
-----------------------------------------------------------------------

Default value: false
Description:
If value is true, RegionServer will abort batch requests of Put/Delete with number of rows in a batch operation exceeding threshold defined by value of config: hbase.rpc.rows.warning.threshold.


---

* [HBASE-24143](https://issues.apache.org/jira/browse/HBASE-24143) | *Major* | **[JDK11] Switch default garbage collector from CMS**

<!-- markdown -->
`bin/hbase` will now dynamically select a Garbage Collector implementation based on the detected JVM version. JDKs 8,9,10 use `-XX:+UseConcMarkSweepGC`, while JDK11+ use `-XX:+UseG1GC`.

Notice a slight compatibility change. Previously, the garbage collector choice would always be appended to a user-provided value for `HBASE_OPTS`. As of this change, this setting will only be applied when `HBASE_OPTS` is unset. That means that operators who provide a value for this variable will now need to also specify the collector. This is especially important for those on JDK8, where the vm default GC is not the recommended ConcMarkSweep.


---

* [HBASE-24252](https://issues.apache.org/jira/browse/HBASE-24252) | *Major* | **Implement proxyuser/doAs mechanism for hbase-http**

This feature enables the HBase Web UI's to accept a 'proxyuser' via the HTTP Request's query string. When the parameter \`hbase.security.authentication.spnego.kerberos.proxyuser.enable\` is set to \`true\` in hbase-site.xml (default is \`false\`), the HBase UI will attempt to impersonate the user specified by the query parameter "doAs". This query parameter is checked case-insensitively. When this option is not provided, the user who executed the request is the "real" user and there is no ability to execute impersonation against the WebUI.

For example, if the user "bob" with Kerberos credentials executes a request against the WebUI with this feature enabled and a query string which includes \`doAs=alice\`, the HBase UI will treat this request as executed as \`alice\`, not \`bob\`.

The standard Hadoop proxyuser configuration properties to limit users who may impersonate others apply to this change (e.g. to enable \`bob\` to impersonate \`alice\`). See the Hadoop documentation for more information on how to configure these proxyuser rules.


---

* [HBASE-23933](https://issues.apache.org/jira/browse/HBASE-23933) | *Major* | **Separate a hbase-balancer or hbase-assignment module**

Created a new hbase-balancer module for placing the balancer related code. Now only a few classes and tests can be moved to this module since we make use of HMaster a lot in the balancer related code.


---

* [HBASE-24285](https://issues.apache.org/jira/browse/HBASE-24285) | *Major* | **Move to hbase-thirdparty-3.3.0**

Moved to hbase-thirdparty 3.3.0.


---

* [HBASE-22710](https://issues.apache.org/jira/browse/HBASE-22710) | *Major* | **Wrong result in one case of scan that use  raw and versions and filter together**

Make the logic of the versions chosen more reasonable for raw scan, to avoid lose result when using filter.


---

* [HBASE-23968](https://issues.apache.org/jira/browse/HBASE-23968) | *Minor* | **Periodically check whether a system stop is requested in compaction by time.**

All compactions must be stopped before the region server is stopped. If compaction is running, the region server wait for the compaction is stopped. Previously, The compaction check that the system is stopped when it reaches "hbase.hstore.close.check.interval" (size). However, depending on the situation, it may take a long time to reach that size. This could result in delays in the stop of the region server. To solve this problem, "hbase.hstore.close.check.time.interval" was added. Now, The compaction check that the system is stopped when it reaches "hbase.hstore.close.check.interval" (size) or "hbase.hstore.close.check.time.interval" (time). The default value of "hbase.hstore.close.check.time.interval" is 10 seconds.


---

* [HBASE-24317](https://issues.apache.org/jira/browse/HBASE-24317) | *Minor* | **Remove deprecated setCacheDataInL1 in HColumnDescriptor**

The following method was removed from HColumnDescriptor (due to HBASE-19357):

- setCacheDataInL1(boolean): Removed without a replacement


---

* [HBASE-24169](https://issues.apache.org/jira/browse/HBASE-24169) | *Blocker* | **Drop hadoop 2 support for hbase 3.x**

The 'hadoop-2.0' profile has been removed. Now execute mvn command without '-Dhadoop.profile' will active the hadoop-3.0 profile.

The hbase-hadoop2-compat module has been removed, the code have all been moved to hbase-hadoop-compat module.


---

* [HBASE-24304](https://issues.apache.org/jira/browse/HBASE-24304) | *Major* | **Separate a hbase-asyncfs module**

Added a new hbase-asyncfs module to hold the asynchronous dfs output stream implementation for implementing WAL.


---

* [HBASE-24335](https://issues.apache.org/jira/browse/HBASE-24335) | *Major* | **Support deleteall with ts but without column in shell mode**

Use a empty string to represent no column specified for deleteall in shell mode.
useage:  
deleteall 'test','r1','',12345
deleteall 'test', {ROWPREFIXFILTER =\> 'prefix'}, '', 12345


---

* [HBASE-24310](https://issues.apache.org/jira/browse/HBASE-24310) | *Major* | **Use Slf4jRequestLog for hbase-http**

Use Slf4jRequestLog instead of the log4j HttpRequestLogAppender in HttpServer.

The request log is disabled by default in conf/log4j.properties by the following lines:

# Disable request log by default, you can enable this by changing the appender
log4j.category.http.requests=INFO,NullAppender
log4j.additivity.http.requests=false

Change the 'NullAppender' to what ever you want if you want to enable request log.

Notice that, the logger name for master status http server is 'http.requests.master', and for region server it is 'http.requests.regionserver'


---

* [HBASE-24318](https://issues.apache.org/jira/browse/HBASE-24318) | *Major* | **Create-release scripts fixes and enhancements**

Release Managers will want to take note of two changes in the create-release tools:
- The names of the release steps are now \`tag\`, \`publish-dist\`, \`publish-snapshot\`, and \`publish-release\` (the latter two being mutually exclusive alternatives).  \`Publish-dist\` was formerly just named \`build\`, which disguised the fact that it built AND published tarballs to https://dist.apache.org/repos/dist/release/ , and that publish-snapshot/publish-release do their own build before publishing maven artifacts to the Nexus repos.
- "Dry run" has become the \_default\_ behavior.  Doing a dry run first decreases the likelihood of failure part-way through, which could result in inconsistent artifacts in the repos. To actually do the release, add the \`-f\` (force) option flag when you invoke \`do-release-docker.sh\` or \`do-release.sh\`.  This is similar to \`-f\` usage in some Linux and git commands that have high cost for mistakes. This is a change from the former \`-n\` to turn ON dry run.


---

* [HBASE-24271](https://issues.apache.org/jira/browse/HBASE-24271) | *Major* | **Set values in \`conf/hbase-site.xml\` that enable running on \`LocalFileSystem\` out of the box**

<!-- markdown -->
HBASE-24271 makes changes the the default `conf/hbase-site.xml` such that `bin/hbase` will run directly out of the binary tarball or a compiled source tree without any configuration modifications vs. Hadoop 2.8+. This changes our long-standing history of shipping no configured values in `conf/hbase-site.xml`, so existing processes that assume this file is empty of configuration properties may require attention.


---

* [HBASE-23938](https://issues.apache.org/jira/browse/HBASE-23938) | *Major* | **Replicate slow/large RPC calls to HDFS**

Config key: hbase.regionserver.slowlog.systable.enabled
Default value: false

This config can be enabled if hbase.regionserver.slowlog.buffer.enabled is already enabled. While hbase.regionserver.slowlog.buffer.enabled ensures that any slow/large RPC logs with complete details are written to ring buffer available at each RegionServer, hbase.regionserver.slowlog.systable.enabled would ensure that all such logs are also persisted in new system table hbase:slowlog. 
Operator can scan hbase:slowlog with filters to retrieve specific attribute matching records and this table would be useful to capture historical performance of slowness of RPC calls with detailed analysis.

hbase:slowlog consists of single ColumnFamily info. info consists of multiple qualifiers similar to the attributes available to query as part of Admin API: get\_slowlog\_responses.

One example of a row from hbase:slowlog scan result (Attached a sample screenshot in the Jira) :

 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:call\_details, timestamp=2020-05-16T14:59:58.764Z, value=Scan(org.apache.hadoop.hbase.shaded.protobuf.generated.ClientProtos$ScanRequest)                             
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:client\_address, timestamp=2020-05-16T14:59:58.764Z, value=172.20.10.2:57348                                                                                          
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:method\_name, timestamp=2020-05-16T14:59:58.764Z, value=Scan                                                                                                          
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:param, timestamp=2020-05-16T14:59:58.764Z, value=region { type: REGION\_NAME value: "cluster\_test,cccccccc,1589635796466.aa45e1571d533f5ed0bb31cdccaaf9cf." } scan { a
                                                             ttribute { name: "\_isolationlevel\_" value: "\\x5C000" } start\_row: "cccccccc" time\_range { from: 0 to: 9223372036854775807 } max\_versions: 1 cache\_blocks: true max\_result\_size: 2
                                                             097152 caching: 2147483647 include\_stop\_row: false } number\_of\_rows: 2147483647 close\_scanner: false client\_handles\_partials: true client\_handles\_heartbeats: true track\_scan\_met
                                                             rics: false                                                                                                                                                                      
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:processing\_time, timestamp=2020-05-16T14:59:58.764Z, value=24                                                                                                        
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:queue\_time, timestamp=2020-05-16T14:59:58.764Z, value=0                                                                                                              
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:region\_name, timestamp=2020-05-16T14:59:58.764Z, value=cluster\_test,cccccccc,1589635796466.aa45e1571d533f5ed0bb31cdccaaf9cf.                                         
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:response\_size, timestamp=2020-05-16T14:59:58.764Z, value=211227                                                                                                      
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:server\_class, timestamp=2020-05-16T14:59:58.764Z, value=HRegionServer                                                                                                
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:start\_time, timestamp=2020-05-16T14:59:58.764Z, value=1589640743932                                                                                                  
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:type, timestamp=2020-05-16T14:59:58.764Z, value=ALL                                                                                                                  
 \\x024\\xC1\\x06X\\x81\\xF6\\xEC                                  column=info:username, timestamp=2020-05-16T14:59:58.764Z, value=vjasani


---

* [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | *Major* | **Relocate test-only REST "client" from src/ to test/ and mark Private**

Relocate test-only REST RemoteHTable and RemoteAdmin from src/ to test/. And mark them as InterfaceAudience.Private.


---

* [HBASE-24408](https://issues.apache.org/jira/browse/HBASE-24408) | *Blocker* | **Introduce a general 'local region' to store data on master**

Introduced a general 'local region' at master side to store the procedure data, etc.

The hfile of this region will be stored on the root fs while the wal will be stored on the wal fs. This issue supercedes part of the code for HBASE-23326, as now we store the data in 'MasterData' directory instead of 'MasterProcs'.

The old hfiles will be moved to the global hfile archived directory with the suffix $-masterlocalhfile-$. The wal files will be moved to the global old wal directory with the suffix $masterlocalwal$. The TimeToLiveMasterLocalStoreHFileCleaner and TimeToLiveMasterLocalStoreWALCleaner are configured by default for cleaning the old hfiles and wal files, and the default TTLs are both 7 days.


---

* [HBASE-24425](https://issues.apache.org/jira/browse/HBASE-24425) | *Major* | **Run hbck\_chore\_run and catalogjanitor\_run on draw of 'HBCK Report' page**

Runs 'catalogjanitor\_run' and 'hbck\_chore\_run' inline with the loading of the 'HBCK Report' page.

Pass '?cache=true' to skip inline invocation of 'catalogjanitor\_run' and 'hbck\_chore\_run' drawing the page.


---

* [HBASE-22287](https://issues.apache.org/jira/browse/HBASE-22287) | *Major* | **inifinite retries on failed server in RSProcedureDispatcher**

Add backoff. Avoid retrying every 100ms.


---

* [HBASE-24132](https://issues.apache.org/jira/browse/HBASE-24132) | *Major* | **Upgrade to Apache ZooKeeper 3.5.7**

<!-- markdown -->
HBase ships ZooKeeper 3.5.x. Was the EOL'd 3.4.x. 3.5.x client can talk to 3.4.x ensemble.

The ZooKeeper project has built a [FAQ](https://cwiki.apache.org/confluence/display/ZOOKEEPER/Upgrade+FAQ) that documents known issues and work-arounds when upgrading existing deployments.


---

* [HBASE-24471](https://issues.apache.org/jira/browse/HBASE-24471) | *Major* | **The way we bootstrap meta table is confusing**

Move all the meta initialization code in MasterFileSystem and HRegionServer to InitMetaProcedure. Add a new step for InitMetaProcedure called INIT\_META\_WRITE\_FS\_LAYOUT to place the moved code.

This is an incompatible change, but should not have much impact. InitMetaProcedure will only be executed once when bootstraping a fresh new cluster, so typically this will not effect rolling upgrading. And even if you hit this problem, as long as InitMetaProcedure has not been finished, we can make sure that there is no user data in the cluster, you can just clean up the cluster and try again. There will be no data loss.


---

* [HBASE-23841](https://issues.apache.org/jira/browse/HBASE-23841) | *Minor* | **Remove deprecated methods from Scan**

All deprecated methods in Scan have been removed.

Please see the release note for the sub tasks for the detailed removed methods.


---

* [HBASE-21406](https://issues.apache.org/jira/browse/HBASE-21406) | *Minor* | **"status 'replication'" should not show SINK if the cluster does not act as sink**

Added new metric to differentiate sink startup time from last OP applied time.

Original behaviour was to always set startup time to TimestampsOfLastAppliedOp, and always show it on "status 'replication'" command, regardless if the sink ever applied any OP. 

This was confusing, specially for scenarios where cluster was just acting as source, the output could lead to wrong interpretations about sink not applying edits or replication being stuck. 

With the new metric, we now compare the two metrics values, assuming that if both are the same, there's never been any OP shipped to the given sink, so output would reflect it more clearly, to something as for example:

SINK: TimeStampStarted=Thu Dec 06 23:59:47 GMT 2018, Waiting for OPs...


---

* [HBASE-24309](https://issues.apache.org/jira/browse/HBASE-24309) | *Major* | **Avoid introducing log4j and slf4j-log4j dependencies for modules other than hbase-assembly**

Add a hbase-logging module, put the log4j related code in this module only so other modules do not need to depend on log4j at compile scope. See the comments of Log4jUtils and InternalLog4jUtils for more details.

Add a log4j.properties to the test jar of hbase-logging module, so for other sub modules we just need to depend on the test jar of hbase-logging module at test scope to output the log to console, without placing a log4j.properties in the test resources as they all (almost) have the same content. And this test module will not be included in the assembly tarball so it will not mess up the binary distribution.

Ban direct commons-logging dependency, and ban commons-logging and log4j imports in non-test code, to avoid mess up the downstream users logging framework. In hbase-logging module we do need to use log4j classes and the trick is to use full class name.

Add jcl-over-slf4j and jul-to-slf4j dependencies, as some of our dependencies use jcl or jul as logging framework, we should also redirect their log message to slf4j.


---

* [HBASE-24418](https://issues.apache.org/jira/browse/HBASE-24418) | *Major* | **Consolidate Normalizer implementations**

<!-- markdown -->
This change extends the Normalizer with a handful of new configurations. The configuration points supported are:
* `hbase.normalizer.split.enabled` Whether to split a region as part of normalization. Default: `true`.
* `hbase.normalizer.merge.enabled` Whether to merge a region as part of normalization. Default `true`.
* `hbase.normalizer.min.region.count` The minimum number of regions in a table to consider it for merge normalization. Default: 3.
* `hbase.normalizer.merge.min_region_age.days` The minimum age for a region to be considered for a merge, in days. Default: 3.
* `hbase.normalizer.merge.min_region_size.mb` The minimum size for a region to be considered for a merge, in whole MBs. Default: 1.


---

* [HBASE-24491](https://issues.apache.org/jira/browse/HBASE-24491) | *Major* | **Remove HRegionInfo**

Removed HRegionInfo.


---

* [HBASE-24305](https://issues.apache.org/jira/browse/HBASE-24305) | *Minor* | **Handle deprecations in ServerName**

The following methods were removed or made private from ServerName (due to HBASE-17624):

- getHostNameMinusDomain(String): Was made private without a replacement.
- parseHostname(String): Use #valueOf(String) instead.
- parsePort(String): Use #valueOf(String) instead.
- parseStartcode(String): Use #valueOf(String) instead.
- getServerName(String, int, long): Was made private. Use #valueOf(String, int, long) instead.
- getServerName(String, long): Use #valueOf(String, long) instead.
- getHostAndPort(): Use #getAddress() instead.
- getServerStartcodeFromServerName(String): Use instance of ServerName to pull out start code)
- getServerNameLessStartCode(String): Use #getAddress() instead.


---

* [HBASE-24359](https://issues.apache.org/jira/browse/HBASE-24359) | *Major* | **Optionally ignore edits for deleted CFs for replication.**

Introduce a new config hbase.replication.drop.on.deleted.columnfamily, default is false. When config to true, the replication will drop the edits for columnfamily that has been deleted from the replication source and target.


---

* [HBASE-24510](https://issues.apache.org/jira/browse/HBASE-24510) | *Major* | **Remove HBaseTestCase and GenericTestUtils**

HBaseTestCase and GenericTestUtils have been removed.

Non of these classes are IA.Public, but maybe HBaseTestCase is used by users so still mark this as an incompatible change.


---

* [HBASE-24524](https://issues.apache.org/jira/browse/HBASE-24524) | *Minor* | **SyncTable logging improvements**

Notice this has changed log level for mismatching row keys, originally those were being logged at INFO level, now it's logged at DEBUG level. This is consistent with the logging of mismatching cells. Also, for missing row keys, it now logs row key values in human readable format, making it more meaningful for operators troubleshooting mismatches.


---

* [HBASE-24545](https://issues.apache.org/jira/browse/HBASE-24545) | *Major* | **Add backoff to SCP check on WAL split completion**

Adds backoff in ServerCrashProcedure wait on WAL split to complete if large backlog of files to split (Its possible to avoid SCP blocking, waiting on WALs to split if you use procedure-based splitting --  set 'hbase.split.wal.zk.coordinated' to false to enable procedure based wal splitting.)


---

* [HBASE-8458](https://issues.apache.org/jira/browse/HBASE-8458) | *Major* | **Support for batch version of checkAndMutate()**

HBASE-8458 introduced CheckAndMutate class that's used to perform CheckAndMutate operations. Use the builder class to instantiate a CheckAndMutate object. This builder class is fluent style APIs, the code are like:
\`\`\`
// A CheckAndMutate operation where do the specified action if the column (specified by the
family and the qualifier) of the row equals to the specified value
CheckAndMutate checkAndMutate = CheckAndMutate.newBuilder(row)
  .ifEquals(family, qualifier, value)
  .build(put);

// A CheckAndMutate operation where do the specified action if the column (specified by the
// family and the qualifier) of the row doesn't exist
CheckAndMutate checkAndMutate = CheckAndMutate.newBuilder(row)
  .ifNotExists(family, qualifier)
  .build(put);

// A CheckAndMutate operation where do the specified action if the row matches the filter
CheckAndMutate checkAndMutate = CheckAndMutate.newBuilder(row)
  .ifMatches(filter)
  .build(delete);
\`\`\`

And This added new checkAndMutate APIs to the Table and AsyncTable interfaces, and deprecated the old checkAndMutate APIs. The example code for the new APIs are as follows:
\`\`\`
Table table = ...;

CheckAndMutate checkAndMutate = ...;

// Perform the checkAndMutate operation
boolean success = table.checkAndMutate(checkAndMutate);

CheckAndMutate checkAndMutate1 = ...;
CheckAndMutate checkAndMutate2 = ...;

// Batch version
List\<Boolean\> successList = table.checkAndMutate(Arrays.asList(checkAndMutate1, checkAndMutate2));
\`\`\`

This also has Protocol Buffers level changes. Old clients without this patch will work against new servers with this patch. However, new clients will break against old servers without this patch for checkAndMutate with RM and mutateRow. So, for rolling upgrade, we will need to upgrade servers first, and then roll out the new clients.


---

* [HBASE-24038](https://issues.apache.org/jira/browse/HBASE-24038) | *Major* | **Add a metric to show the locality of ssd in table.jsp**

Add a metric to show the locality of ssd in table.jsp, and move the locality related metrics to a new tab named localities.


---

* [HBASE-20610](https://issues.apache.org/jira/browse/HBASE-20610) | *Major* | **Procedure V2 - Distributed Log Splitting**

See RN in HBASE-21588 for detail on this feature. It landed in hbase-2.2.0.


---

* [HBASE-15161](https://issues.apache.org/jira/browse/HBASE-15161) | *Major* | **Umbrella: Miscellaneous improvements from production usage**

This ticket summarizes significant improvements and expansion to the metrics surface area. Interested users should review the individual sub-tasks.


---

* [HBASE-23055](https://issues.apache.org/jira/browse/HBASE-23055) | *Major* | **Alter hbase:meta**

Adds being able to edit hbase:meta table schema. For example,

hbase(main):006:0\> alter 'hbase:meta', {NAME =\> 'info', DATA\_BLOCK\_ENCODING =\> 'ROW\_INDEX\_V1'}
Updating all regions with the new schema...
All regions updated.
Done.
Took 1.2138 seconds

You can even add columnfamilies. Howevert, you cannot delete any of the core hbase:meta column families such as 'info' and 'table'.


---

* [HBASE-24217](https://issues.apache.org/jira/browse/HBASE-24217) | *Major* | **Add hadoop 3.2.x support**

CI coverage has been extended to include Hadoop 3.2.x for HBase 2.2+.


---

* [HBASE-21773](https://issues.apache.org/jira/browse/HBASE-21773) | *Critical* | **rowcounter utility should respond to pleas for help**

This adds [-h\|-help] options to rowcounter. Passing either -h or -help will print rowcounter guide as below: 

$hbase rowcounter -h

usage: hbase rowcounter \<tablename\> [options] [\<column1\> \<column2\>...]
Options:
    --starttime=\<arg\>       starting time filter to start counting rows from.
    --endtime=\<arg\>         end time filter limit, to only count rows up to this timestamp.
    --range=\<arg\>           [startKey],[endKey][;[startKey],[endKey]...]]
    --expectedCount=\<arg\>   expected number of rows to be count.
For performance, consider the following configuration properties:
-Dhbase.client.scanner.caching=100
-Dmapreduce.map.speculative=false


---

* [HBASE-24205](https://issues.apache.org/jira/browse/HBASE-24205) | *Major* | **Create metric to know the number of reads that happens from memstore**

Adds a new metric where we collect the number of read requests (tracked per row) whether the row was fetched completely from memstore or it was pulled from files  and memstore. 
The metric is now collected under the mbean for Tables and under the mbean for regions.
Under table mbean ie.- 
'name": "Hadoop:service=HBase,name=RegionServer,sub=Tables'
The new metrics will be listed as 
{code}
    "Namespace\_default\_table\_t3\_columnfamily\_f1\_metric\_memstoreOnlyRowReadsCount": 5,
 "Namespace\_default\_table\_t3\_columnfamily\_f1\_metric\_mixedRowReadsCount": 1,
{code}
Where the format is Namespace\_\<namespacename\>\_table\_\<tableName\>\_columnfamily\_\<columnfamilyname\>\_metric\_memstoreOnlyRowReadsCount
Namespace\_\<namespacename\>\_table\_\<tableName\>\_columnfamily\_\<columnfamilyname\>\_metric\_mixedRowReadsCount
{code}

The same one under the region ie. 
"name": "Hadoop:service=HBase,name=RegionServer,sub=Regions",
comes as
{code}
   "Namespace\_default\_table\_t3\_region\_75a7846f4ac4a2805071a855f7d0dbdc\_store\_f1\_metric\_memstoreOnlyRowReadsCount": 5,
    "Namespace\_default\_table\_t3\_region\_75a7846f4ac4a2805071a855f7d0dbdc\_store\_f1\_metric\_mixedRowReadsCount": 1,
{code}
where
Namespace\_\<namespacename\_table\_\<tableName\>\_region\_\<regionName\>\_store\_\<storeName\>\_metric\_memstoreOnlyRowReadsCount
Namespace\_\<namespacename\_table\_\<tableName\>\_region\_\<regionName\>\_store\_\<storeName\>\_metric\_mixedRowReadsCount
This is also an aggregate against every store the number of reads that happened purely from the memstore or it was a  mixed read that happened from memstore and file.


---

* [HBASE-24609](https://issues.apache.org/jira/browse/HBASE-24609) | *Major* | **Move MetaTableAccessor out of hbase-client**

Introduced a CatalogFamilyFormat to place the method for generating/parsing cells in catalog family.
Renamed AsyncMetaTableAccessor to ClientMetaTableAccessor, removed duplicated code with CatalogFamiltyFormat and MetaTableAccessor, moved some code in MetaTableAccessor to ClientMetaTableAccessor.
Moved MetaTableAccessor to hbase-balancer.


---

* [HBASE-24631](https://issues.apache.org/jira/browse/HBASE-24631) | *Major* | **Loosen Dockerfile pinned package versions of the "debian-revision"**

<!-- markdown -->
Update our package version numbers throughout the Dockerfiles to be pinned to their epic:upstream-version components only. Previously we'd specify the full debian package version number, including the debian-revision. This lead to instability as debian packaging details changed.
See also [man deb-version](http://manpages.ubuntu.com/manpages/xenial/en/man5/deb-version.5.html)


---

* [HBASE-24603](https://issues.apache.org/jira/browse/HBASE-24603) | *Critical* | **Zookeeper sync() call is async**

<!-- markdown -->

Fixes a couple of bugs in ZooKeeper interaction. Firstly, zk sync() call that is used to sync the lagging followers with leader so that the client sees a consistent snapshot state was actually asynchronous under the hood. We make it synchronous for correctness. Second, zookeeper events are now processed in a separate thread rather than doing it in the thread context of zookeeper client connection. This decoupling frees up client connection quickly and avoids deadlocks.


---

* [HBASE-24382](https://issues.apache.org/jira/browse/HBASE-24382) | *Major* | **Flush partial stores of region filtered by seqId when archive wal due to too many wals**

Change the flush level from region to store when there are too many wals, benefit from this we can reduce unnessary flush tasks and small hfiles.


---

* [HBASE-20819](https://issues.apache.org/jira/browse/HBASE-20819) | *Minor* | **Use TableDescriptor to replace HTableDescriptor in hbase-shell module**

Removes HBase::Admin.hcd and HBase::Admin.update\_htd\_from\_arg from hbase-shell. Removes 8 constants from HBaseAdmin in the hbase-shell module: CACHE\_DATA\_IN\_L1, COMPARATOR, COMPARATOR\_IGNORE\_REPLICATION, ENCODE\_ON\_DISK, IS\_MOB\_BYTES, LENGTH, MOB\_COMPACT\_PARTITION\_POLICY\_BYTES, MOB\_THRESHOLD\_BYTES.


---

* [HBASE-24648](https://issues.apache.org/jira/browse/HBASE-24648) | *Major* | **Remove the legacy 'forceSplit' related code at region server side**

Add a canSplit method to RegionSplitPolicy to determine whether we can split a region. Usually it is not related to RegionSplitPolicy so in the default implementation, it will test whether region is available and does not have reference file, but in DisabledRegionSplitPolicy, we will always return false.


---

* [HBASE-24289](https://issues.apache.org/jira/browse/HBASE-24289) | *Major* | **Heterogeneous Storage for Date Tiered Compaction**

Enhance DateTieredCompaction to support HDFS storage policy within one class family. 
# First you need enable DTCP.
To turn on Date Tiered Compaction (It is not recommended to turn on for the whole cluster because that will put meta table on it too and random get on meta table will be impacted):
hbase.hstore.compaction.compaction.policy=org.apache.hadoop.hbase.regionserver.compactions.DateTieredCompactionPolicy
## Parameters for Date Tiered Compaction:
hbase.hstore.compaction.date.tiered.max.storefile.age.millis: Files with max-timestamp smaller than this will no longer be compacted.Default at Long.MAX\_VALUE.
hbase.hstore.compaction.date.tiered.base.window.millis: base window size in milliseconds. Default at 6 hours.
hbase.hstore.compaction.date.tiered.windows.per.tier: number of windows per tier. Default at 4.
hbase.hstore.compaction.date.tiered.incoming.window.min: minimal number of files to compact in the incoming window. Set it to expected number of files in the window to avoid wasteful compaction. Default at 6.

# Then enable HDTCP(Heterogeneous Date Tiered Compaction) as follow example configurations:  
hbase.hstore.compaction.date.tiered.storage.policy.enable=true
hbase.hstore.compaction.date.tiered.hot.window.age.millis=3600000
hbase.hstore.compaction.date.tiered.hot.window.storage.policy=ALL\_SSD
hbase.hstore.compaction.date.tiered.warm.window.age.millis=20600000
hbase.hstore.compaction.date.tiered.warm.window.storage.policy=ONE\_SSD
hbase.hstore.compaction.date.tiered.cold.window.storage.policy=HOT
## It is better to enable WAL and flushing HFile storage policy with HDTCP. You can tune follow settings as well:
hbase.wal.storage.policy=ALL\_SSD
create 'table',{NAME=\>'f1',CONFIGURATION=\>{'hbase.hstore.block.storage.policy'=\>'ALL\_SSD'}}

# Disable HDTCP as follow:
hbase.hstore.compaction.date.tiered.storage.policy.enable=false


---

* [HBASE-24560](https://issues.apache.org/jira/browse/HBASE-24560) | *Major* | **Add a new option of designatedfile in RegionMover**

Add a new option "designatedfile" in RegionMover.

If designated file is present with some contents, we will unload regions to hostnames provided in designated file.

Designated file should have 'host:port' per line.


---

* [HBASE-24671](https://issues.apache.org/jira/browse/HBASE-24671) | *Major* | **Add excludefile and designatedfile options to graceful\_stop.sh**

Add excludefile and designatedfile options to graceful\_stop.sh. 

Designated file with \<hostname:port\> per line as unload targets.

Exclude file should have \<hostname:port\> per line. We do not unload regions to hostnames given in exclude file.

Here is a simple example using graceful\_stop.sh with designatedfile option:
./bin/graceful\_stop.sh --maxthreads 4 --designatedfile /path/designatedfile hostname
The usage of the excludefile option is the same as the above.


---

* [HBASE-24650](https://issues.apache.org/jira/browse/HBASE-24650) | *Major* | **Change the return types of the new checkAndMutate methods introduced in HBASE-8458**

HBASE-24650 introduced CheckAndMutateResult class and changed the return type of checkAndMutate methods to this class in order to support CheckAndMutate with Increment/Append. CheckAndMutateResult class has two fields, one is \*success\* that indicates whether the operation is successful or not, and the other one is \*result\* that's the result of the operation and is used for  CheckAndMutate with Increment/Append.

The new APIs for the Table interface:
\`\`\`
/\*\*
 \* checkAndMutate that atomically checks if a row matches the specified condition. If it does,
 \* it performs the specified action.
 \*
 \* @param checkAndMutate The CheckAndMutate object.
 \* @return A CheckAndMutateResult object that represents the result for the CheckAndMutate.
 \* @throws IOException if a remote or network exception occurs.
 \*/
default CheckAndMutateResult checkAndMutate(CheckAndMutate checkAndMutate) throws IOException {
  return checkAndMutate(Collections.singletonList(checkAndMutate)).get(0);
}

/\*\*
 \* Batch version of checkAndMutate. The specified CheckAndMutates are batched only in the sense
 \* that they are sent to a RS in one RPC, but each CheckAndMutate operation is still executed
 \* atomically (and thus, each may fail independently of others).
 \*
 \* @param checkAndMutates The list of CheckAndMutate.
 \* @return A list of CheckAndMutateResult objects that represents the result for each
 \*   CheckAndMutate.
 \* @throws IOException if a remote or network exception occurs.
 \*/
default List\<CheckAndMutateResult\> checkAndMutate(List\<CheckAndMutate\> checkAndMutates)
  throws IOException {
  throw new NotImplementedException("Add an implementation!");
}
{code}

The new APIs for the AsyncTable interface:
{code}
/\*\*
 \* checkAndMutate that atomically checks if a row matches the specified condition. If it does,
 \* it performs the specified action.
 \*
 \* @param checkAndMutate The CheckAndMutate object.
 \* @return A {@link CompletableFuture}s that represent the result for the CheckAndMutate.
 \*/
CompletableFuture\<CheckAndMutateResult\> checkAndMutate(CheckAndMutate checkAndMutate);

/\*\*
 \* Batch version of checkAndMutate. The specified CheckAndMutates are batched only in the sense
 \* that they are sent to a RS in one RPC, but each CheckAndMutate operation is still executed
 \* atomically (and thus, each may fail independently of others).
 \*
 \* @param checkAndMutates The list of CheckAndMutate.
 \* @return A list of {@link CompletableFuture}s that represent the result for each
 \*   CheckAndMutate.
 \*/
List\<CompletableFuture\<CheckAndMutateResult\>\> checkAndMutate(
  List\<CheckAndMutate\> checkAndMutates);

/\*\*
 \* A simple version of batch checkAndMutate. It will fail if there are any failures.
 \*
 \* @param checkAndMutates The list of rows to apply.
 \* @return A {@link CompletableFuture} that wrapper the result list.
 \*/
default CompletableFuture\<List\<CheckAndMutateResult\>\> checkAndMutateAll(
  List\<CheckAndMutate\> checkAndMutates) {
  return allOf(checkAndMutate(checkAndMutates));
}
\`\`\`


---

* [HBASE-24578](https://issues.apache.org/jira/browse/HBASE-24578) | *Major* | **[WAL] Add a parameter to config RingBufferEventHandler's SyncFuture count**

Introduce a new parameter "hbase.regionserver.wal.sync.batch.count" to control the wal sync batch size which is equals to "hbase.regionserver.handler.count" by default. It should work well if you use default wal provider---one wal per regionserver. But if you use read/write separated handlers, you can set "hbase.regionserver.wal.sync.batch.count" to the number of write handlers. And if you use wal-per-groups or wal-per-region, you can consider lower "hbase.regionserver.wal.sync.batch.count", the default number will be too big and consume more memories as the number of wals grows.


---

* [HBASE-24698](https://issues.apache.org/jira/browse/HBASE-24698) | *Major* | **Turn OFF Canary WebUI as default**

Flips default for 'HBASE-23994 Add WebUI to Canary' The UI defaulted to on at port 16050. This JIRA changes it so new UI is off by default.

To enable the UI, set property 'hbase.canary.info.port' to the port you want the UI to use.


---

* [HBASE-24770](https://issues.apache.org/jira/browse/HBASE-24770) | *Major* | **Reimplement the Constraints API and revisit the IA annotations on related classes**

Use TableDescriptorBuilder in Constraints for modifying TableDescriptor.
Mark Constraints as IA.Public.


---

* [HBASE-24632](https://issues.apache.org/jira/browse/HBASE-24632) | *Major* | **Enable procedure-based log splitting as default in hbase3**

Enables procedure-based distributed WAL splitting as default (HBASE-20610). To use 'classic' zk-coordinated splitting instead, set 'hbase.split.wal.zk.coordinated' to 'true'.


---

* [HBASE-24722](https://issues.apache.org/jira/browse/HBASE-24722) | *Minor* | **Address hbase-shell commands with unintentional return values**

Shell commands that used to return true and false as Strings now return proper booleans: balance\_switch, snapshot\_cleanup\_switch, enable\_rpc\_throttle, disable\_rpc\_throttle, enable\_exceed\_throttle\_quota, disable\_exceed\_throttle\_quota. Shell commands that used to return the number 1 regardless of result now return correct values: is\_disabled, balancer, normalize, normalizer\_switch, normalizer\_enabled, catalogjanitor\_switch, catalogjanitor\_enabled, cleaner\_chore\_switch, cleaner\_chore\_enabled, splitormerge\_switch, splitormerge\_enabled, clear\_deadservers, clear\_block\_cache.


---

* [HBASE-11686](https://issues.apache.org/jira/browse/HBASE-11686) | *Minor* | **Shell code should create a binding / irb workspace instead of polluting the root namespace**

In shell, all HBase constants and commands have been moved out of the top-level and into an IRB Workspace. Piped stdin and scripts passed by name to the shell will be evaluated within this workspace. If you absolutely need the top-level definitions, use the new compatibility flag, ie. hbase shell --top-level-defs or hbase shell --top-level-defs script2run.rb.


---

* [HBASE-24704](https://issues.apache.org/jira/browse/HBASE-24704) | *Major* | **Make the Table Schema easier to view even there are multiple families**

Improve the layout of column family from vertical to horizontal in table UI.


---

* [HBASE-24767](https://issues.apache.org/jira/browse/HBASE-24767) | *Major* | **Change default to false for HBASE-15519 per-user metrics**

Disables per-user metrics. They were enabled by default for the first time in hbase-2.3.0 but they need some work before they can be on all the time (See HBASE-15519)


---

* [HBASE-24507](https://issues.apache.org/jira/browse/HBASE-24507) | *Major* | **Remove HTableDescriptor and HColumnDescriptor**

Removed HTableDescriptor and HColumnDescritor. Please use TableDescriptor and ColumnFamilyDescriptor instead.

Since the latter classes are immutable, you should use TableDescriptorBuilder and ColumnFamilyDescriptorBuilder to create them.

TableDescriptorBuilder.ModifyableTableDescriptor and ColumnFamilyDescriptorBuilder.ModifyableColumnFamilyDescriptor are all changed from public to private now. It does not break our compatibilty rule as they are marked as IA.Private. But we do expose these two classes in some IA.Public classes, such as HBTU. So if you use these methods, you have to change your code.


---

* [HBASE-24805](https://issues.apache.org/jira/browse/HBASE-24805) | *Major* | **HBaseTestingUtility.getConnection should be threadsafe**

<!-- markdown -->
Users of `HBaseTestingUtility` can now safely call the `getConnection` method from multiple threads.

As a consequence of refactoring to improve the thread safety of the HBase testing classes, the protected `conf` member of the  `HBaseCommonTestingUtility` class has been marked final. Downstream users who extend from the class hierarchy rooted at this class will need to pass the Configuration instance they want used to their super constructor rather than overwriting the instance variable.


---

* [HBASE-24404](https://issues.apache.org/jira/browse/HBASE-24404) | *Major* | **Support flush a single column family of region**

This adds an extra "flush" command option that allows for specifying an individual family to have its store flushed.

Usage:
flush 'REGIONNAME','FAMILYNAME' 
flush 'ENCODED\_REGIONNAME','FAMILYNAME'


---

* [HBASE-24779](https://issues.apache.org/jira/browse/HBASE-24779) | *Minor* | **Improve insight into replication WAL readers hung on checkQuota**

New metrics are exposed, on the global source, for replication which indicate the "WAL entry buffer" that was introduced in HBASE-15995. When this usage reaches the limit, that RegionServer will cease to read more data for the sake of trying to replicate it. This usage (and limit) is local to each RegionServer is shared across all peers being handled by that RegionServer.


---

* [HBASE-24625](https://issues.apache.org/jira/browse/HBASE-24625) | *Critical* | **AsyncFSWAL.getLogFileSizeIfBeingWritten does not return the expected synced file length.**

We add a method getSyncedLength in  WALProvider.WriterBase interface for  WALFileLengthProvider used for replication, considering the case if we use  AsyncFSWAL,we write to 3 DNs concurrently,according to the visibility guarantee of HDFS, the data will be available immediately
when arriving at DN since all the DNs will be considered as the last one in pipeline.This means replication may read uncommitted data and replicate it to the remote cluster and cause data inconsistency.The method WriterBase#getLength may return length which just in hdfs client buffer and not successfully synced to HDFS, so we use this method WriterBase#getSyncedLength to return the length successfully synced to HDFS and replication thread could only read writing WAL file limited by this length.
see also HBASE-14004 and this document for more details:
https://docs.google.com/document/d/11AyWtGhItQs6vsLRIx32PwTxmBY3libXwGXI25obVEY/edit#

Before this patch, replication may read uncommitted data and replicate it to the slave cluster and cause data inconsistency between master and slave cluster, we could use FSHLog instead of AsyncFSWAL  to reduce probability of inconsistency without this patch applied.


---

* [HBASE-24694](https://issues.apache.org/jira/browse/HBASE-24694) | *Major* | **Support flush a single column family of table**

Adds option for the flush command to flush all stores from the specified column family only, among all regions of the given table (stores from other column families on this table would not get flushed).


---

* [HBASE-22740](https://issues.apache.org/jira/browse/HBASE-22740) | *Major* | **[RSGroup] Forward-port HBASE-22658 to master branch**

Only forward-port to master branch, couldn't apply to branch-2x because of dependency issue.


---

* [HBASE-24126](https://issues.apache.org/jira/browse/HBASE-24126) | *Major* | **Up the container nproc uplimit from 10000 to 12500**

Start docker with upped ulimit for nproc passing '--ulimit nproc=12500'. It was 10000, the default, but made it 12500. Then, set PROC\_LIMIT in hbase-personality so when yetus runs, it is w/ the new 12500 value.


---

* [HBASE-24150](https://issues.apache.org/jira/browse/HBASE-24150) | *Major* | **Allow module tests run in parallel**

Pass -T2 to mvn. Makes it so we do two modules-at-a-time dependencies willing. Helps speed build and testing. Doubles the resource usage when running modules in parallel.


---

* [HBASE-24887](https://issues.apache.org/jira/browse/HBASE-24887) | *Major* | **Remove Row.compareTo**

Remove Row.compareTo


---

* [HBASE-24886](https://issues.apache.org/jira/browse/HBASE-24886) | *Major* | **Remove deprecated methods in RowMutations**

Removed RowMutations.add(Put) and RowMutations.add(Delete). Use RowMutations.add(Mutation) directly.


---

* [HBASE-24799](https://issues.apache.org/jira/browse/HBASE-24799) | *Major* | **Do not call make\_binary\_release for hbase-thirdparty in release scripts**

Skip make\_binary\_release call for hbase-thirdparty in release scripts as we only publish src tarballs for hbase-thirdparty.


---

* [HBASE-24935](https://issues.apache.org/jira/browse/HBASE-24935) | *Major* | **Remove 1.3.6 from download page**

Removed 1.3.6 from download page as it is EOL.


---

* [HBASE-24892](https://issues.apache.org/jira/browse/HBASE-24892) | *Major* | **config 'hbase.hregion.memstore.mslab.indexchunksize' not be used**

Remove the config "hbase.hregion.memstore.mslab.indexchunksize" which never used. And use "hbase.hregion.memstore.mslab.indexchunksize.percent" instead.


---

* [HBASE-24602](https://issues.apache.org/jira/browse/HBASE-24602) | *Major* | **Add Increment and Append support to CheckAndMutate**

Summary of the change of HBASE-24602:
- Add \`build(Increment)\` and \`build(Append)\` methods to the \`Builder\` class of the \`CheckAndMutate\` class. After this change, we can perform checkAndIncrement/Append operations as follows:
\`\`\`
// Build a CheckAndMutate object with a Increment object
CheckAndMutate checkAndMutate = CheckAndMutate.newBuilder(row)
  .ifEquals(family, qualifier, value)
  .build(increment);

// Perform a CheckAndIncrement operation
CheckAndMutateResult checkAndMutateResult = table.checkAndMutate(checkAndMutate);

// Get whether or not the CheckAndIncrement operation is successful
boolean success = checkAndMutateResult.isSuccess();

// Get the result of the increment operation
Result result = checkAndMutateResult.getResult();
\`\`\`
- After this change, \`HRegion.batchMutate()\` is used for increment/append operations.
- As the side effect of the above change, the following coprocessor methods of RegionObserver are called when increment/append operations are performed:
  - preBatchMutate()
  - postBatchMutate()
  - postBatchMutateIndispensably()


---

* [HBASE-24776](https://issues.apache.org/jira/browse/HBASE-24776) | *Major* | **[hbtop] Support Batch mode**

HBASE-24776 added the following command line parameters to hbtop:
\| Argument \| Description \| 
\|---\|---\|
\| -n,--numberOfIterations \<arg\> \| The number of iterations \|
\| -O,--outputFieldNames \| Print each of the available field names on a separate line, then quit \|
\| -f,--fields \<arg\> \| Show only the given fields. Specify comma separated fields to show multiple fields \|
\| -s,--sortField \<arg\> \| The initial sort field. You can prepend a \`+' or \`-' to the field name to also override the sort direction. A leading \`+' will force sorting high to low, whereas a \`-' will ensure a low to high ordering \|
\| -i,--filters \<arg\> \| The initial filters. Specify comma separated filters to set multiple filters \|
\| -b,--batchMode \| Starts hbtop in Batch mode, which could be useful for sending output from hbtop to other programs or to a file. In this mode, hbtop will not accept input and runs until the iterations limit you've set with the \`-n' command-line option or until killed \|


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

* [HBASE-24896](https://issues.apache.org/jira/browse/HBASE-24896) | *Major* | **'Stuck' in static initialization creating RegionInfo instance**

1. Untangle RegionInfo, RegionInfoBuilder, and MutableRegionInfo static
initializations.
2. Undo static initializing references from RegionInfo to RegionInfoBuilder.
3. Mark RegionInfo#UNDEFINED IA.Private and deprecated;
it is for internal use only and likely to be removed in HBase4. (sub-task HBASE-24918)
4. Move MutableRegionInfo from inner-class of
RegionInfoBuilder to be (package private) standalone. (sub-task HBASE-24918)


---

* [HBASE-25081](https://issues.apache.org/jira/browse/HBASE-25081) | *Major* | **Up the container nproc uplimit to 30000**

Ups the nproc (processes) limit from 12500 to 30000 in yetus (so build container can have new limit).


---

* [HBASE-25109](https://issues.apache.org/jira/browse/HBASE-25109) | *Major* | **Add MR Counters to WALPlayer; currently hard to tell if it is doing anything**

Adds a WALPlayer to MR Counter output:

	org.apache.hadoop.hbase.mapreduce.WALPlayer$Counter
		CELLS\_READ=89574
		CELLS\_WRITTEN=89572
		DELETES=64
		PUTS=5305
		WALEDITS=4375


---

* [HBASE-25154](https://issues.apache.org/jira/browse/HBASE-25154) | *Major* | **Set java.io.tmpdir to project build directory to avoid writing std\*deferred files to /tmp**

Change the java.io.tmpdir to project.build.directory in surefire-maven-plugin, to avoid writing std\*deferred files to /tmp which may blow up the /tmp disk on our jenkins build node.


---

* [HBASE-25124](https://issues.apache.org/jira/browse/HBASE-25124) | *Major* | **Support changing region replica count without disabling table**

Now you do not need to disable a table before changing its 'region replication' property.
If you are decreasing the replica count, the excess region replicas will be closed before reopening other replicas.
If you are increasing the replica count, the new region replicas will be opened after reopening the existing replicas.


---

* [HBASE-25165](https://issues.apache.org/jira/browse/HBASE-25165) | *Minor* | **Change 'State time' in UI so sorts**

Start time on the Master UI is now displayed using ISO8601 format instead of java Date#toString().


---

* [HBASE-22976](https://issues.apache.org/jira/browse/HBASE-22976) | *Major* | **[HBCK2] Add RecoveredEditsPlayer**

WALPlayer can replay the content of recovered.edits directories.

Side-effect is that WAL filename timestamp is now factored when setting start/end times for WALInputFormat; i.e. wal.start.time and wal.end.time values on a job context. Previous we looked at wal.end.time only. Now we consider wal.start.time too. If a file has a name outside of wal.start.time\<-\>wal.end.time, it'll be by-passed. This change-in-behavior will make it easier on operator crafting timestamp filters processing WALs.


---

* [HBASE-25163](https://issues.apache.org/jira/browse/HBASE-25163) | *Major* | **Increase the timeout value for nightly jobs**

Increase timeout value for nightly jobs to 16 hours since the new build machines are dedicated to hbase project, so we are allowed to use it all the time.


---

* [HBASE-25175](https://issues.apache.org/jira/browse/HBASE-25175) | *Major* | **Remove the constructors of HBaseConfiguration**

The following constructors were removed from HBaseConfiguration (due to HBASE-2036):

- HBaseConfiguration(): Use the default constructor instead.
- HBaseConfiguration(Configuration): Use the default constructor instead.


---

* [HBASE-23834](https://issues.apache.org/jira/browse/HBASE-23834) | *Major* | **HBase fails to run on Hadoop 3.3.0/3.2.2/3.1.4 due to jetty version mismatch**

Use shaded json and jersey in HBase.
Ban the imports of unshaded json and jersey in code.


---

* [HBASE-25099](https://issues.apache.org/jira/browse/HBASE-25099) | *Major* | **Change meta replica count by altering meta table descriptor**

Now you can change the region replication config for meta table by altering meta table.
The old "hbase.meta.replica.count" is deprecated and will be removed in 4.0.0. But if it is set, we will still honor it, which means, when master restart, if we find out that the value of 'hbase.meta.replica.count' is different with the region replication config of meta table, we will schedule an alter table operation to change the region replication config to the value you configured for 'hbase.meta.replica.count'.


---

* [HBASE-24875](https://issues.apache.org/jira/browse/HBASE-24875) | *Major* | **Remove the force param for unassign since it dose not take effect any more**

<!-- markdown -->
The "force" flag to various unassign commands (java api, shell, etc) has been ignored since HBase 2. As of this change the methods that take it are now deprecated. Downstream users should stop passing/using this flag.

The Admin and AsyncAdmin Java APIs will have the deprecated version of the unassign method with a force flag removed in HBase 4. Callers can safely continue to use the deprecated API until then; the internal implementation just calls the new method.

The MasterObserver coprocessor API deprecates the `preUnassign` and `postUnassign` methods that include the force parameter and replaces them with versions that omit this parameter. The deprecated methods will be removed from the API in HBase 3. Until then downstream coprocessor implementations can safely continue to *just* implement the deprecated method if they wish; the replacement methods provide a default implementation that calls the deprecated method with force set to `false`.


---

* [HBASE-14067](https://issues.apache.org/jira/browse/HBASE-14067) | *Major* | **bundle ruby files for hbase shell into a jar.**

<!-- markdown -->
The `hbase-shell` artifact now contains the ruby files that implement the hbase shell. There should be no downstream impact for users of the shell that rely on the `hbase shell` command.

Folks that wish to include the HBase ruby classes defined for the shell in their own JRuby scripts should add the `hbase-shell.jar` file to their classpath rather than add `${HBASE_HOME}/lib/ruby` to their load paths.


---

* [HBASE-24628](https://issues.apache.org/jira/browse/HBASE-24628) | *Major* | **Region normalizer now respects a rate limit**

<!-- markdown -->
Introduces a new configuration, `hbase.normalizer.throughput.max_bytes_per_sec`, for specifying a limit on the throughput of actions executed by the normalizer. Note that while this configuration value is in bytes, the minimum honored valued is `1,000,000`, or `1m`. Supports values configured using the human-readable suffixes honored by [`Configuration.getLongBytes`](https://hadoop.apache.org/docs/current/api/org/apache/hadoop/conf/Configuration.html#getLongBytes-java.lang.String-long-)


---

* [HBASE-25198](https://issues.apache.org/jira/browse/HBASE-25198) | *Minor* | **Remove RpcSchedulerFactory#create(Configuration, PriorityFunction)**

Removed RpcSchedulerFactory#create(Configuration conf, PriorityFunction priority) without a replacement.


---

* [HBASE-25197](https://issues.apache.org/jira/browse/HBASE-25197) | *Trivial* | **Remove SingletonCoprocessorService**

Removed org.apache.hadoop.hbase.coprocessor.SingletonCoprocessorService without a replacement.


---

* [HBASE-25224](https://issues.apache.org/jira/browse/HBASE-25224) | *Major* | **Maximize sleep for checking meta and namespace regions availability**

Changed the max sleep time during meta and namespace regions availability check to be 60 sec. Previously there was no such cap


---

* [HBASE-25167](https://issues.apache.org/jira/browse/HBASE-25167) | *Major* | **Normalizer support for hot config reloading**

<!-- markdown -->
This patch adds [dynamic configuration](https://hbase.apache.org/book.html#dyn_config) support for the following configuration keys related to the normalizer:
* hbase.normalizer.throughput.max_bytes_per_sec
* hbase.normalizer.split.enabled
* hbase.normalizer.merge.enabled
* hbase.normalizer.min.region.count
* hbase.normalizer.merge.min_region_age.days
* hbase.normalizer.merge.min_region_size.mb


---

* [HBASE-25173](https://issues.apache.org/jira/browse/HBASE-25173) | *Major* | **Remove owner related methods in TableDescriptor/TableDescriptorBuilder**

Remove the OWNER field in the table creation statement, the relevant permissions will be automatically granted to the current active users of the client.


---

* [HBASE-25212](https://issues.apache.org/jira/browse/HBASE-25212) | *Major* | **Optionally abort requests in progress after deciding a region should close**

If hbase.regionserver.close.wait.abort is set to true, interrupt RPC handler threads holding the region close lock. 

Until requests in progress can be aborted, wait on the region close lock for a configurable interval (specified by hbase.regionserver.close.wait.time.ms, default 60000 (1 minute)). If we have failed to acquire the close lock after this interval elapses, if allowed (also specified by hbase.regionserver.close.wait.abort), abort the regionserver.

We will attempt to interrupt any running handlers every hbase.regionserver.close.wait.interval.ms (default 10000 (10 seconds)) until either the close lock is acquired or we reach the maximum wait time.


---

* [HBASE-25235](https://issues.apache.org/jira/browse/HBASE-25235) | *Major* | **Cleanup the deprecated methods in TimeRange**

Removed all the public constructors of TimeRange, thus now we make TimeRange final. Also removed the withinTimeRange(byte[], int) method, just use withinTimeRange(long) instead.


---

* [HBASE-25234](https://issues.apache.org/jira/browse/HBASE-25234) | *Major* | **[Upgrade]Incompatibility in reading RS report from 2.1 RS when Master is upgraded to a version containing HBASE-21406**

Fixes so auto-migration of master procedure store works again going from 2.0.x =\> 2.2+. Also make it so heartbeats work when rolling upgrading from 2.0.x =\> 2.3+.


---

* [HBASE-25238](https://issues.apache.org/jira/browse/HBASE-25238) | *Critical* | **Upgrading HBase from 2.2.0 to 2.3.x fails because of “Message missing required fields: state”**

Fixes master procedure store migration issues going from 2.0.x to 2.2.x and/or 2.3.x. Also fixes failed heartbeat parse during rolling upgrade from 2.0.x. to 2.3.x.


---

* [HBASE-25181](https://issues.apache.org/jira/browse/HBASE-25181) | *Major* | **Add options for disabling column family encryption and choosing hash algorithm for wrapped encryption keys.**

<!-- markdown -->
This change adds options for disabling column family encryption and choosing hash algorithm for wrapped encryption keys. Changes are done such that defaults will keep the same behavior prior to this issue.
    
Prior to this change HBase always used the MD5 hash algorithm to store a hash for encryption keys. This hash is needed to verify the secret key of the subject. (e.g. making sure that the same secrey key is used during encrypted HFile read and write). The MD5 algorithm is considered weak, and can not be used in some (e.g. FIPS compliant) clusters. Having a configurable hash enables us to use newer and more secure hash algorithms like SHA-384 or SHA-512 (which are FIPS compliant).

The hash is set via the configuration option `hbase.crypto.key.hash.algorithm`. It should be set to a JDK `MessageDigest` algorithm like "MD5", "SHA-256" or "SHA-384". The default is "MD5" for backward compatibility.

Alternatively, clusters which rely on an encryption at rest mechanism outside of HBase (e.g. those offered by HDFS) and wish to ensure HBase's encryption at rest system is inactive can set `hbase.crypto.enabled` to `false`.


---

* [HBASE-20598](https://issues.apache.org/jira/browse/HBASE-20598) | *Major* | **Upgrade to JRuby 9.2**

<!-- markdown -->
The HBase shell now relies on JRuby 9.2. This is a new major version change for JRuby. The most significant change is Ruby compatibility changed from Ruby 2.3 to Ruby 2.5. For more detailed changes please see [the JRuby release announcement for the start of the 9.2 series](https://www.jruby.org/2018/05/24/jruby-9-2-0-0.html) as well as the [general release announcement page for updates since that version](https://www.jruby.org/news).

The runtime dependency versions present on the server side classpath for the Joni (now 2.1.31) and JCodings (now 1.0.55) libraries have also been updated to match those found in the JRuby version shipped with HBase. These version changes are maintenance releases and should be backwards compatible when updated in tandem.


---

* [HBASE-25253](https://issues.apache.org/jira/browse/HBASE-25253) | *Major* | **Deprecated master carrys regions related methods and configs**

Since 2.4.0, deprecated all master carrys regions related methods(LoadBalancer,BaseLoadBalancer,ZNodeClearer) and configs(hbase.balancer.tablesOnMaster, hbase.balancer.tablesOnMaster.systemTablesOnly), they will be removed in 3.0.0.


---

* [HBASE-25127](https://issues.apache.org/jira/browse/HBASE-25127) | *Major* | **Enhance PerformanceEvaluation to profile meta replica performance.**

Three new commands are added to PE:

metaWrite, metaRandomRead and cleanMeta.

Usage example:
hbase pe  --rows=100000 metaWrite  1
hbase pe  --nomapreduce --rows=100000 metaRandomRead  32
hbase pe  --rows=100000 cleanMeta 1

metaWrite and cleanMeta should be run with only 1 thread and the same number of rows so all the rows inserted will be cleaned up properly.

metaRandomRead can be run with multiple threads. The rows option should set to within the range of rows inserted by metaWrite



