
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
# Apache HBase  3.0.0 Release Notes

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

* [HBASE-18569](https://issues.apache.org/jira/browse/HBASE-18569) | *Major* | **Add prefetch support for async region locator**

Add prefetch support for async region locator. The default value is 10. Set 'hbase.client.locate.prefetch.limit' in hbase-site.xml if you want to use another value for it.


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



