
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
# Apache HBase  2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-20894](https://issues.apache.org/jira/browse/HBASE-20894) | *Major* | **Move BucketCache from java serialization to protobuf**

For users who have configured hbase.bucketcache.ioengine with either the file:, files:, or mmap: prefix, and configured it to be persistent via the hbase.bucketcache.persistent.path property, the serialization format of the bucket cache has changed between versions. The old state will not be read during startup, and there is currently no migration path. The impact is expected to be minimal, however, since the cache will rebuild over time as access patterns dictate.


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

* [HBASE-21684](https://issues.apache.org/jira/browse/HBASE-21684) | *Major* | **Throw DNRIOE when connection or rpc client is closed**

Make StoppedRpcClientException extend DoNotRetryIOException.


---

* [HBASE-21764](https://issues.apache.org/jira/browse/HBASE-21764) | *Major* | **Size of in-memory compaction thread pool should be configurable**

Introduced an new config key in this issue: hbase.regionserver.inmemory.compaction.pool.size. the default value would be 10.  you can configure this to set the pool size of in-memory compaction pool. Note that all memstores in one region server will share the same pool, so if you have many regions in one region server,  you need to set this larger to compact faster for better read performance.


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

* [HBASE-15560](https://issues.apache.org/jira/browse/HBASE-15560) | *Major* | **TinyLFU-based BlockCache**

LruBlockCache uses the Segmented LRU (SLRU) policy to capture frequency and recency of the working set. It achieves concurrency by using an O(n) background thread to prioritize the entries and evict. Accessing an entry is O(1) by a hash table lookup, recording its logical access time, and setting a frequency flag. A write is performed in O(1) time by updating the hash table and triggering an async eviction thread. This provides ideal concurrency and minimizes the latencies by penalizing the thread instead of the caller. However the policy does not age the frequencies and may not be resilient to various workload patterns. 

This change introduces a new L1 policy, TinyLfuBlockCache, which records the frequency in a counting sketch, ages periodically by halving the counters, and orders entries by SLRU. An entry is discarded by comparing the frequency of the new arrival to the SLRU's victim, and keeping the one with the highest frequency. This allows the operations to be performed in O(1) time and, though the use of a compact sketch, a much larger history is retained beyond the current working set. In a variety of real world traces the policy had near optimal hit rates.

New configuration variable hfile.block.cache.policy sets the eviction policy for the L1 block cache. The default is "LRU" (LruBlockCache). Set to "TinyLFU" to use TinyLfuBlockCache instead.


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

* [HBASE-22292](https://issues.apache.org/jira/browse/HBASE-22292) | *Blocker* | **PreemptiveFastFailInterceptor clean repeatedFailuresMap issue**

Adds new configuration hbase.client.failure.map.cleanup.interval which defaults to ten minutes.


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

* [HBASE-22054](https://issues.apache.org/jira/browse/HBASE-22054) | *Minor* | **Space Quota: Compaction is not working for super user in case of NO\_WRITES\_COMPACTIONS**

This change allows the system and superusers to initiate compactions, even when a space quota violation policy disallows compactions from happening. The original intent behind disallowing of compactions was to prevent end-user compactions from creating undue I/O load, not disallowing \*any\* compaction in the system.


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

* [HBASE-22588](https://issues.apache.org/jira/browse/HBASE-22588) | *Major* | **Upgrade jaxws-ri dependency to 2.3.2**

<!-- markdown -->

When run with JDK11 HBase now uses more recent version of the jaxws reference implementation (v2.3.2).


---

* [HBASE-22596](https://issues.apache.org/jira/browse/HBASE-22596) | *Minor* | **[Chore] Separate the execution period between CompactionChecker and PeriodicMemStoreFlusher**

hbase.regionserver.compaction.check.period is used for controlling how often the compaction checker runs. If unset, will use hbase.server.thread.wakefrequency as default value.

hbase.regionserver.flush.check.period is used for controlling how ofter the flush checker runs. If unset, will use hbase.server.thread.wakefrequency as default value.


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

* [HBASE-22580](https://issues.apache.org/jira/browse/HBASE-22580) | *Major* | **Add a table attribute to make user scan snapshot feature configurable for table**

If a table user scan snapshots of the table, please config the following table scheme attribute to make granted users' ACLs are added to hfiles:
alter 't1', CONFIGURATION =\> {'hbase.user.scan.snapshot.enable' =\> 'true'}


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

* [HBASE-22737](https://issues.apache.org/jira/browse/HBASE-22737) | *Major* | **Add a new admin method and shell cmd to trigger the hbck chore to run**

Add a new method runHbckChore in Hbck interface and a new shell cmd hbck\_chore\_run to request HBCK chore to run at master side.


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

* [HBASE-22867](https://issues.apache.org/jira/browse/HBASE-22867) | *Critical* | **The ForkJoinPool in CleanerChore will spawn thousands of threads in our cluster with thousands table**

Replace the ForkJoinPool in CleanerChore by ThreadPoolExecutor which can limit the spawn thread size and avoid  the master GC frequently.  The replacement is an internal implementation in CleanerChore,  so no config key change, the upstream users can just upgrade the hbase master without any other change.


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

* [HBASE-23035](https://issues.apache.org/jira/browse/HBASE-23035) | *Major* | **Retain region to the last RegionServer make the failover slower**

Since 2.0.0，when one regionserver crashed and back online again, AssignmentManager will retain the region locations and try assign the regions to this regionserver(same host:port with the crashed one) again. But for 1.x.x, the behavior is round-robin assignment for the regions belong to the crashed regionserver. This jira change the "retain" assignment to round-robin assignment, which is same with 1.x.x version. This change will make the failover faster and improve availability.


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

* [HBASE-17115](https://issues.apache.org/jira/browse/HBASE-17115) | *Major* | **HMaster/HRegion Info Server does not honour admin.acl**

Implements authorization for the HBase Web UI by limiting access to certain endpoints which could be used to extract sensitive information from HBase.

Access to these restricted endpoints can be limited to a group of administrators, identified either by a list of users (hbase.security.authentication.spnego.admin.users) or by a list of groups
(hbase.security.authentication.spnego.admin.groups).  By default, neither of these values are set which will preserve backwards compatibility (allowing all authenticated users to access all endpoints).

Further, users who have sensitive information in the HBase service configuration can set hbase.security.authentication.ui.config.protected to true which will treat the configuration endpoint as a protected, admin-only resource. By default, all authenticated users may access the configuration endpoint.


---

* [HBASE-23350](https://issues.apache.org/jira/browse/HBASE-23350) | *Major* | **Make compaction files cacheonWrite configurable based on threshold**

This JIRA adds a new configuration - \`hbase.rs.cachecompactedblocksonwrite.threshold\`. This configuration is the maximum total size (in bytes) of the compacted files below which the configuration \`hbase.rs.cachecompactedblocksonwrite\` is honoured. If the total size of the compacted fies exceeds this threshold, even when \`hbase.rs.cachecompactedblocksonwrite\` is enabled, the data blocks are not cached. Caching index and bloom blocks is not affected by this configuration (user configuration is always honoured).

Default value of this configuration is Long.MAX\_VALUE. This means whatever the total size of the compacted files, it wil be cached.


---

* [HBASE-23554](https://issues.apache.org/jira/browse/HBASE-23554) | *Major* | **Encoded regionname to regionname utility**

    Adds shell command regioninfo:

      hbase(main):001:0\>  regioninfo '0e6aa5c19ae2b2627649dc7708ce27d0'
      {ENCODED =\> 0e6aa5c19ae2b2627649dc7708ce27d0, NAME =\> 'TestTable,,1575941375972.0e6aa5c19ae2b2627649dc7708ce27d0.', STARTKEY =\> '', ENDKEY =\> '00000000000000000000299441'}
      Took 0.4737 seconds


---

* [HBASE-23865](https://issues.apache.org/jira/browse/HBASE-23865) | *Major* | **Up flakey history from 5 to 10**

Changed flakey list reporting to show 5 rather than 10 items. Also changed the second and first part fort counts to be 1C rather than hardcoded 3.


---

* [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | *Minor* | **Move Jira-attached file precommit definition from script in Jenkins config to dev-support**

The Jira Precommit job (https://builds.apache.org/job/PreCommit-HBASE-Build/) will now look for a file within the source tree (dev-support/jenkins\_precommit\_jira\_yetus.sh) instead of depending on a script section embedded in the job.


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

* [HBASE-23986](https://issues.apache.org/jira/browse/HBASE-23986) | *Major* | **Bump hadoop-two.version to 2.10.0 on master and branch-2**

Bumped hadoop-two.version to 2.10.0, which means we will drop the support for hadoop-2.8.x and hadoop-2.9.x.


---

* [HBASE-23993](https://issues.apache.org/jira/browse/HBASE-23993) | *Major* | **Use loopback for zk standalone server in minizkcluster**

MiniZKCluster now puts up its standalone node listening on loopback/127.0.0.1 rather than "localhost".


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

* [HBASE-24050](https://issues.apache.org/jira/browse/HBASE-24050) | *Major* | **Deprecated PBType on all 2.x branches**

org.apache.hadoop.hbase.types.PBType is marked as deprecated without any replacement. It will be moved to hbase-example module and marked as IA.Private in 3.0.0. This is a mistake as it should not be part of our public API. Users who depend on this class should just copy the code your own code base.


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

* [HBASE-24285](https://issues.apache.org/jira/browse/HBASE-24285) | *Major* | **Move to hbase-thirdparty-3.3.0**

Moved to hbase-thirdparty 3.3.0.


---

* [HBASE-22710](https://issues.apache.org/jira/browse/HBASE-22710) | *Major* | **Wrong result in one case of scan that use  raw and versions and filter together**

Make the logic of the versions chosen more reasonable for raw scan, to avoid lose result when using filter.


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

* [HBASE-24359](https://issues.apache.org/jira/browse/HBASE-24359) | *Major* | **Optionally ignore edits for deleted CFs for replication.**

Introduce a new config hbase.replication.drop.on.deleted.columnfamily, default is false. When config to true, the replication will drop the edits for columnfamily that has been deleted from the replication source and target.


---

* [HBASE-24524](https://issues.apache.org/jira/browse/HBASE-24524) | *Minor* | **SyncTable logging improvements**

Notice this has changed log level for mismatching row keys, originally those were being logged at INFO level, now it's logged at DEBUG level. This is consistent with the logging of mismatching cells. Also, for missing row keys, it now logs row key values in human readable format, making it more meaningful for operators troubleshooting mismatches.


---

* [HBASE-24545](https://issues.apache.org/jira/browse/HBASE-24545) | *Major* | **Add backoff to SCP check on WAL split completion**

Adds backoff in ServerCrashProcedure wait on WAL split to complete if large backlog of files to split (Its possible to avoid SCP blocking, waiting on WALs to split if you use procedure-based splitting --  set 'hbase.split.wal.zk.coordinated' to false to enable procedure based wal splitting.)


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

* [HBASE-24631](https://issues.apache.org/jira/browse/HBASE-24631) | *Major* | **Loosen Dockerfile pinned package versions of the "debian-revision"**

<!-- markdown -->
Update our package version numbers throughout the Dockerfiles to be pinned to their epic:upstream-version components only. Previously we'd specify the full debian package version number, including the debian-revision. This lead to instability as debian packaging details changed.
See also [man deb-version](http://manpages.ubuntu.com/manpages/xenial/en/man5/deb-version.5.html)


---

* [HBASE-24603](https://issues.apache.org/jira/browse/HBASE-24603) | *Critical* | **Zookeeper sync() call is async**

<!-- markdown -->

Fixes a couple of bugs in ZooKeeper interaction. Firstly, zk sync() call that is used to sync the lagging followers with leader so that the client sees a consistent snapshot state was actually asynchronous under the hood. We make it synchronous for correctness. Second, zookeeper events are now processed in a separate thread rather than doing it in the thread context of zookeeper client connection. This decoupling frees up client connection quickly and avoids deadlocks.


---

* [HBASE-24126](https://issues.apache.org/jira/browse/HBASE-24126) | *Major* | **Up the container nproc uplimit from 10000 to 12500**

Start docker with upped ulimit for nproc passing '--ulimit nproc=12500'. It was 10000, the default, but made it 12500. Then, set PROC\_LIMIT in hbase-personality so when yetus runs, it is w/ the new 12500 value.


---

* [HBASE-24150](https://issues.apache.org/jira/browse/HBASE-24150) | *Major* | **Allow module tests run in parallel**

Pass -T2 to mvn. Makes it so we do two modules-at-a-time dependencies willing. Helps speed build and testing. Doubles the resource usage when running modules in parallel.



