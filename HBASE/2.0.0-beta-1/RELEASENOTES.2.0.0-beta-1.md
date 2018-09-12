
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
# Apache HBase  2.0.0-beta-1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-18621](https://issues.apache.org/jira/browse/HBASE-18621) | *Major* | **Refactor ClusterOptions before applying to code base**

Provide a new way to get desired ClusterStatus with a set of ClusterStatus.Option, such that the response back to client can be limited.
Note that, the constructor way to new a ClusterStatus will be no longer support after 2.0.0,  and use ClusterStatus.Builder instead.


---

* [HBASE-13844](https://issues.apache.org/jira/browse/HBASE-13844) | *Minor* | **Move static helper methods from KeyValue into CellUtils**

Move KeyValue.parseColumn() to CellUtil


---

* [HBASE-18649](https://issues.apache.org/jira/browse/HBASE-18649) | *Major* | **Deprecate KV Usage in MR to move to Cells in 3.0**

All the mappers and reducers output type will be now of MapReduceCell type. No more KeyValue type. How ever in branch-2 for compatibility we have allowed the older interfaces/classes that work with KeyValue to stay in the code base but they have been marked as deprecated. 
The following interfaces/classes have been deprecated in branch-2
Import#KeyValueWritableComparablePartitioner
Import#KeyValueWritableComparator
Import#KeyValueWritableComparable
Import#KeyValueReducer
Import#KeyValueSortImporter
Import#KeyValueImporter
KeyValueSortReducer
KeyValueSerialization
WALPlayer#WALKeyValueMapper

So any existing MR jobs that is using the above public interfaces/classes will continue to work in branch-2 and the expected output value type of those mappers and reducers can continue to be KeyValue type.

In branch-3 the mappers and reducers output will only expect MapReduceCell as the type and will no longer work with KeyValue type.
The new public classes/interfaces added for branch-3 and in branch-2 are
CellSerialization
CellSortReducer
Import#CellWritableComparablePartitioner
Import#CellWritableComparable
Import#CellWritableComparator
Import#CellReducer
Import#CellSortImporter
Import#CellImporter
WALPlayer#WALCellMapper


---

* [HBASE-18909](https://issues.apache.org/jira/browse/HBASE-18909) | *Major* | **Deprecate Admin's methods which used String regex**

Pushed to master and branch-2. Thanks all for reviewing.


---

* [HBASE-19176](https://issues.apache.org/jira/browse/HBASE-19176) | *Major* | **Remove hbase-native-client from branch-2**

Removed the hbase-native-client module from branch-2 (it is still in Master). It is not complete. Look for a finished C++ client in the near future. Will restore native client to branch-2 at that point.


---

* [HBASE-19179](https://issues.apache.org/jira/browse/HBASE-19179) | *Critical* | **Remove hbase-prefix-tree**

Purged the hbase-prefix-tree module and all references from the code base.

prefix-tree data block encoding was a super cool experimental feature that saw some usage initially but has since languished. If interested in carrying this sweet facility forward, write the dev list and we'll restore this module.


---

* [HBASE-19152](https://issues.apache.org/jira/browse/HBASE-19152) | *Trivial* | **Update refguide 'how to build an RC' and the make\_rc.sh script**

The make\_rc.sh script can run an hbase2 build now generating tarballs and pushing up to maven repository. TODO: Sign and checksum, check tarball, push to apache dist.....


---

* [HBASE-19095](https://issues.apache.org/jira/browse/HBASE-19095) | *Major* | **Add CP hooks in RegionObserver for in memory compaction**

Add 4 methods in RegionObserver:
preMemStoreCompaction
preMemStoreCompactionCompactScannerOpen
preMemStoreCompactionCompact
postMemStoreCompaction
preMemStoreCompaction and postMemStoreCompaction will always be called for all in memory compactions. Under eager mode, preMemStoreCompactionCompactScannerOpen will be called before opening store scanner to allow you changing the max versions and TTL, and preMemStoreCompactionCompact will be called after the creation to let you do wrapping.


---

* [HBASE-19131](https://issues.apache.org/jira/browse/HBASE-19131) | *Major* | **Add the ClusterStatus hook and cleanup other hooks which can be replaced by ClusterStatus hook**

1) Add preGetClusterStatus() and postGetClusterStatus() hooks
2) add preGetClusterStatus() to access control check - an admin action


---

* [HBASE-19160](https://issues.apache.org/jira/browse/HBASE-19160) | *Critical* | **Re-expose CellComparator**

CellComparator is now InterfaceAudience.Public


---

* [HBASE-19111](https://issues.apache.org/jira/browse/HBASE-19111) | *Critical* | **Add missing CellUtil#isPut(Cell) methods**

A new public API method was added to CellUtil "isPut(Cell)" for clients to use to determine if the Cell is for a Put operation.

Additionally, other CellUtil API calls which expose Cell-implementation were marked as deprecated and will be removed in a future version.


---

* [HBASE-19103](https://issues.apache.org/jira/browse/HBASE-19103) | *Minor* | **Add BigDecimalComparator for filter**

If BigDecimal is stored as value, and you need to add a matched comparator to the value filter when scanning, a BigDecimalComparator can be used.


---

* [HBASE-18961](https://issues.apache.org/jira/browse/HBASE-18961) | *Major* | **doMiniBatchMutate() is big, split it into smaller methods**

HRegion.batchMutate()/ doMiniBatchMutate() is refactored with aim to unify batchMutate() and mutateRows() code paths later. batchMutate() currently handles 2 types of batches: MutationBatchOperations and ReplayBatchOperations. Common base class BatchOperations is augmented with common methods which are overridden in derived classes as needed. doMiniBatchMutate() is implemented using common methods in base class BatchOperations.


---

* [HBASE-19002](https://issues.apache.org/jira/browse/HBASE-19002) | *Minor* | **Introduce more examples to show how to intercept normal region operations**

With the change in Coprocessor APIs, the hbase-examples module has been updated to provide additional examples that show how to write Coprocessors against the new API.


---

* [HBASE-19220](https://issues.apache.org/jira/browse/HBASE-19220) | *Major* | **Async tests time out talking to zk; 'clusterid came back null'**

Changed retries from 3 to 30 for zk initial connect for registry.


---

* [HBASE-19189](https://issues.apache.org/jira/browse/HBASE-19189) | *Major* | **Ad-hoc test job for running a subset of tests lots of times**

<!-- markdown -->

Folks can now test out tests on an arbitrary release branch. Head over to [builds.a.o job "HBase-adhoc-run-tests"](https://builds.apache.org/view/H-L/view/HBase/job/HBase-adhoc-run-tests/), then pick "Build with parameters".
Tests are specified as just names e.g. TestLogRollingNoCluster. can also be a glob. e.g. TestHFile*


---

* [HBASE-14350](https://issues.apache.org/jira/browse/HBASE-14350) | *Blocker* | **Procedure V2 Phase 2: Assignment Manager**

(Incomplete)

= Incompatbiles

== Coprocessor Incompatibilities

Split/Merge have moved to the Master; it runs them now. Means hooks around Split/Merge are now noops. To intercept Split/Merge phases, CPs need to intercept on MasterObserver.


---

* [HBASE-12350](https://issues.apache.org/jira/browse/HBASE-12350) | *Minor* | **Backport error-prone build support to branch-1 and branch-2**

This change introduces compile time support for running the error-prone suite of static analyses. Enable with -PerrorProne on the Maven command line. Requires JDK 8 or higher. (Don't enable if building with JDK 7.)


---

* [HBASE-19187](https://issues.apache.org/jira/browse/HBASE-19187) | *Minor* | **Remove option to create on heap bucket cache**

Removing the on heap Bucket cache feature.
The config "hbase.bucketcache.ioengine" no longer support the 'heap' value. 
Its supported values now are 'offheap',  'file:\<path\>', 'files:\<path\>'  and 'mmap:\<path\>'


---

* [HBASE-19262](https://issues.apache.org/jira/browse/HBASE-19262) | *Major* | **Revisit checkstyle rules**

Change the import order rule that now we should put the shaded import at bottom. Ignore the VisibilityModifier warnings for test code.


---

* [HBASE-19251](https://issues.apache.org/jira/browse/HBASE-19251) | *Major* | **Merge RawAsyncTable and AsyncTable**

Merge the RawAsyncTable and AsyncTable interfaces. Use generic to reflection the difference between the observer style scan API. For the implementation which does not have a user specified thread pool, the observer is AdvancedScanResultConsumer. For the implementation which needs a user specified thread pool, the observer is ScanResultConsumer.


---

* [HBASE-18964](https://issues.apache.org/jira/browse/HBASE-18964) | *Major* | **Deprecate RowProcessor and processRowsWithLocks() APIs that take RowProcessor as an argument**

RowProcessor and Region#processRowsWithLocks() methods that take RowProcessor as an argument are deprecated. Use Coprocessors if you want to customize handling.


---

* [HBASE-18703](https://issues.apache.org/jira/browse/HBASE-18703) | *Critical* | **Inconsistent behavior for preBatchMutate in doMiniBatchMutate and processRowsWithLocks**

Two write paths Region.batchMutate() and Region.mutateRows() are unified and inconsistencies are resolved.


---

* [HBASE-18911](https://issues.apache.org/jira/browse/HBASE-18911) | *Major* | **Unify Admin and AsyncAdmin's methods name**

Deprecated 4 methods for Admin interface.
Deprecated compactRegionServer(ServerName, boolean). Use compactRegionServer(ServerName) and majorCompactcompactRegionServer(ServerName) instead.
Deprecated getRegionLoad(ServerName) method. Use getRegionLoads(ServerName) instead.
Deprecated getRegionLoad(ServerName, TableName) method. Use getRegionLoads(ServerName, TableName) instead.
Deprecated getQuotaRetriever(QuotaFilter) instead. Use  getQuota(QuotaFilter) instead.

Add 7 methods for Admin interface.
ServerName getMaster();
Collection\<ServerName\> getBackupMasters();
Collection\<ServerName\> getRegionServers();
boolean splitSwitch(boolean enabled, boolean synchronous);
boolean mergeSwitch(boolean enabled, boolean synchronous);
boolean isSplitEnabled();
boolean isMergeEnabled();


---

* [HBASE-19123](https://issues.apache.org/jira/browse/HBASE-19123) | *Major* | **Purge 'complete' support from Coprocesor Observers**

This issue removes the 'complete' facility that was in ObserverContext. It is no longer possible for a Coprocessor to cut the chain-of-invocation and insist its response prevails.


---

* [HBASE-19293](https://issues.apache.org/jira/browse/HBASE-19293) | *Major* | **Support adding a new replication peer in disabled state**

Add a boolean parameter which means the new replication peer's state is enabled or disabled for Admin/AsyncAdmin's addReplicationPeer method. Meanwhile, you can use shell cmd to add a enabled/disabled replication peer. The STATE parameter is optional and the default state is enabled.

hbase\> add\_peer '1', CLUSTER\_KEY =\> "server1.cie.com:2181:/hbase", STATE =\> "ENABLED"
hbase\> add\_peer '1', CLUSTER\_KEY =\> "server1.cie.com:2181:/hbase", STATE =\> "DISABLED"


---

* [HBASE-19311](https://issues.apache.org/jira/browse/HBASE-19311) | *Major* | **Promote TestAcidGuarantees to LargeTests and start mini cluster once to make it faster**

Introduce a AcidGuaranteesTestTool and expose as tool instead of TestAcidGuarantees. Now TestAcidGuarantees is just a UT.


---

* [HBASE-19200](https://issues.apache.org/jira/browse/HBASE-19200) | *Major* | **make hbase-client only depend on ZKAsyncRegistry and ZNodePaths**

ConnectionImplementation now uses asynchronous connections to zookeeper via ZKAsyncRegistry to get cluster id, master address, meta region location, etc.
Since ZKAsyncRegistry uses curator framework, this change purges a lot of zookeeper dependencies in hbase-client.
Now hbase-client only depends on only ZKAsyncRegistry, ZNodePaths and the newly introduced ZKMetadata.


---

* [HBASE-19122](https://issues.apache.org/jira/browse/HBASE-19122) | *Critical* | **preCompact and preFlush can bypass by returning null scanner; shut it down**

Remove the ability to 'bypass' preFlush and preCompact by returning a null Scanner. Bypass is disallowed on these methods in hbase2.


---

* [HBASE-16868](https://issues.apache.org/jira/browse/HBASE-16868) | *Critical* | **Add a replicate\_all flag to avoid misuse the namespaces and table-cfs config of replication peer**

Add a replicate\_all flag to replication peer config. The default value is true, which means all user tables (REPLICATION\_SCOPE != 0 ) will be replicated to peer cluster.

How to config a peer from replicate all to only replicate special namespace/tablecfs?
Step1. Add a new peer with no namespace/tablecfs config, the replicate\_all flag will be true automatically.
Step2. User want only replicate some namespaces or tables, so set replicate\_all flag to false first.
Step3. Add special namespaces or table-cfs config to the replication peer.

How to config a peer from replicate special namespace/tablecfs to replicate all?
Step1. Add a new peer with special namespace/tablecfs config, the replicate\_all flag will be false automatically.
Step2. User want replicate all user tables, so remove the special namespace/tablecfs config first.
Step3. Set replicate\_all flag to true.

How to config replicate nothing?
Set replicate\_all flag to false and no namespace/tablecfs config, then all tables cannot be replicated to peer cluster.


---

* [HBASE-19266](https://issues.apache.org/jira/browse/HBASE-19266) | *Minor* | **TestAcidGuarantees should cover adaptive in-memory compaction**

separate the TestAcidGuarantees by the policy:
1) NONE -\> TestAcidGuaranteesWithNoInMemCompaction
2) BASIC -\> TestAcidGuaranteesWithBasicPolicy
3) EAGER -\> TestAcidGuaranteesWithEagerPolicy
4) ADAPTIVE -\> TestAcidGuaranteesWithAdaptivePolicy

TestAcidGuaranteesWithEagerPolicy and TestAcidGuaranteesWithAdaptivePolicy are disabled by default as the eager policy may cause the negative size of memstore.


---

* [HBASE-19092](https://issues.apache.org/jira/browse/HBASE-19092) | *Critical* | **Make Tag IA.LimitedPrivate and expose for CPs**

This JIRA aims at exposing Tags for Coprocessor usage.
Tag interface is now exposed to Coprocessors and CPs can make use of this interface to create their own Tags.
RawCell is a new interface that is a subtype of Cell and that is exposed to CPs. RawCell has the following APIs

List\<Tag\> getTags()
Optional\<Tag\> getTag(byte type)
byte[] cloneTags()

The above APIs helps to read tags from the Cell. 

CellUtil#createCell(Cell cell, List\<Tag\> tags)
CellUtil#createCell(Cell cell, byte[] tags)
CellUtil#createCell(Cell cell, byte[] value, byte[] tags)
are deprecated.
If CPs want to create a cell with Tags they can use the RegionCoprocessorEnvironment#getCellBuilder() that returns an ExtendedCellBuilder.
Using ExtendedCellBuilder the CP can create Cells with Tags. Other helper methods to work on Tags are available as static APIs in Tag interface.


---

* [HBASE-19318](https://issues.apache.org/jira/browse/HBASE-19318) | *Critical* | **MasterRpcServices#getSecurityCapabilities explicitly checks for the HBase AccessController implementation**

Fixes an issue with loading customer coprocessor endpoint implementations inside of the HBase Master which breaks Apache Ranger.


---

* [HBASE-19035](https://issues.apache.org/jira/browse/HBASE-19035) | *Major* | **Miss metrics when coprocessor use region scanner to read data**

1. Move read requests count to region level. Because RegionScanner is exposed to CP.
2. Update write requests count in processRowsWithLocks.
3. Remove requestRowActionCount in RSRpcServices. This metric can be computed by region's readRequestsCount and writeRequestsCount.


---

* [HBASE-18090](https://issues.apache.org/jira/browse/HBASE-18090) | *Major* | **Improve TableSnapshotInputFormat to allow more multiple mappers per region**

In this task, we make it possible to run multiple mappers per region in the table snapshot. The following code is primary table snapshot mapper initializatio: 

TableMapReduceUtil.initTableSnapshotMapperJob(
          snapshotName,                     // The name of the snapshot (of a table) to read from
          scan,                                      // Scan instance to control CF and attribute selection
          mapper,                                 // mapper
          outputKeyClass,                   // mapper output key 
          outputValueClass,                // mapper output value
          job,                                       // The current job to adjust
          true,                                     // upload HBase jars and jars for any of the configured job classes via the distributed cache (tmpjars)
          restoreDir,                           // a temporary directory to copy the snapshot files into
);

The job only run one map task per region in the table snapshot. With this feature, client can specify the desired num of mappers when init table snapshot mapper job：

TableMapReduceUtil.initTableSnapshotMapperJob(
          snapshotName,                     // The name of the snapshot (of a table) to read from
          scan,                                      // Scan instance to control CF and attribute selection
          mapper,                                 // mapper
          outputKeyClass,                   // mapper output key 
          outputValueClass,                // mapper output value
          job,                                       // The current job to adjust
          true,                                     // upload HBase jars and jars for any of the configured job classes via the distributed cache (tmpjars)
          restoreDir,                           // a temporary directory to copy the snapshot files into
          splitAlgorithm,                     // splitAlgo algorithm to split, current split algorithms  support RegionSplitter.UniformSplit() and RegionSplitter.HexStringSplit()
          n                                         // how many input splits to generate per one region
);


---

* [HBASE-19359](https://issues.apache.org/jira/browse/HBASE-19359) | *Major* | **Revisit the default config of hbase client retries number**

The default value of hbase.client.retries.number was 35. It is now 10.
And for server side, the default hbase.client.serverside.retries.multiplier was 10. So the server side retries number was 35 \* 10 = 350. It is now 3.


---

* [HBASE-19336](https://issues.apache.org/jira/browse/HBASE-19336) | *Major* | **Improve rsgroup to allow assign all tables within a specified namespace by only writing namespace**

Add two new shell cmd.
move\_namespaces\_rsgroup is used to reassign tables of specified namespaces from one RegionServer group to another.
move\_servers\_namespaces\_rsgroup is used to reassign regionServers and tables of specified namespaces from one group to another.


---

* [HBASE-19339](https://issues.apache.org/jira/browse/HBASE-19339) | *Critical* | **Eager policy results in the negative size of memstore**

Enable TestAcidGuaranteesWithEagerPolicy and TestAcidGuaranteesWithAdaptivePolicy


---

* [HBASE-19408](https://issues.apache.org/jira/browse/HBASE-19408) | *Trivial* | **Remove WALActionsListener.Base**

1) remove the WALActionsListener.Base
2) provide default method implementation to WALActionsListener
The person who want to receive the notification of WAL events should implements the WALActionsListener rather than WALActionsListener.Base.


---

* [HBASE-19384](https://issues.apache.org/jira/browse/HBASE-19384) | *Critical* | **Results returned by preAppend hook in a coprocessor are replaced with null from other coprocessor even on bypass**

When a coprocessor sets 'bypass', we will skip calling subsequent Coprocessors that may be stacked-up on the method invocation; e.g. if a prePut has three coprocessors hooked up, if the first coprocessor decides to set 'bypass', we will not call the two subsequent coprocessors (this is similar to the 'complete' functionality that was in hbase1, removed in hbase2).


---

* [HBASE-19426](https://issues.apache.org/jira/browse/HBASE-19426) | *Major* | **Move has() and setTimestamp() to Mutation**

Moves #has and #setTimestamp back up to Mutation from the subclass Put so available to other Mutation implementations.


---

* [HBASE-19323](https://issues.apache.org/jira/browse/HBASE-19323) | *Major* | **Make netty engine default in hbase2**

NettyRpcServer is now our default RPC server replacing SimpleRpcServer.

To set the rpc server back to SimpleRpcServer, set 'hbase.rpc.server.impl' to org.apache.hadoop.hbase.ipc.SimpleRpcServer


---

* [HBASE-19410](https://issues.apache.org/jira/browse/HBASE-19410) | *Major* | **Move zookeeper related UTs to hbase-zookeeper and mark them as ZKTests**

There is a new HBaseZKTestingUtility which can only start a mini zookeeper cluster. And we will publish sources for test-jar for all modules.


---

* [HBASE-19295](https://issues.apache.org/jira/browse/HBASE-19295) | *Major* | **The Configuration returned by CPEnv should be read-only.**

CoprocessorEnvironment#getConfiguration returns a READ-ONLY Configuration. Attempts at altering the returned Configuration -- whether setting or adding resources -- will result in an IllegalStateException warning of the Read-only condition of the returned Configuration.


---

* [HBASE-19357](https://issues.apache.org/jira/browse/HBASE-19357) | *Major* | **Bucket cache no longer L2 for LRU cache**

Removed cacheDataInL1 option for HCD
BucketCache is no longer the L2 for LRU on heap cache. When BC is used, data blocks will be strictly on BC only where as index/bloom blocks are on LRU L1 cache.
Config 'hbase.bucketcache.combinedcache.enabled' is removed. There is no way set combined mode = false. Means make BC as victim handler for LRU cache.
This will be one more noticeable change when one uses BucketCache in File mode.  Then the system table's data block(Including the META table)  will be cached in Bucket Cache files only. Plain scan from META files alone test reveal that the throughput of file mode BC is almost half only.  But for META entries we have RegionLocation cache at client side connections. So this would not be a big concern in a real cluster usage. Will check more on this and probably fix even when we do tiered BucketCache.


---

* [HBASE-19301](https://issues.apache.org/jira/browse/HBASE-19301) | *Major* | **Provide way for CPs to create short circuited connection with custom configurations**

Provided a way for the CP users to create a short circuitable connection with custom configs.

createConnection(Configuration) is added to MasterCoprocessorEnvironment, RegionServerCoprocessorEnvironment and RegionCoprocessorEnvironment.

The getConnection() method already available in these Env interfaces returns the cluster connection used by the server (which the server also uses) where as this new method will create a new connection on request. The difference from connection created using ConnectionFactory APIs is that this connection can short circuit the calls to same server avoiding the RPC paths. The connection will NOT be cached/maintained by server. That should be done the CPs.

Be careful creating Connections out of a Coprocessor. See the javadoc on these createConnection and getConnection.


---

* [HBASE-18169](https://issues.apache.org/jira/browse/HBASE-18169) | *Blocker* | **Coprocessor fix and cleanup before 2.0.0 release**

Refactor of Coprocessor API for hbase2. Purged methods that exposed too much of our internals. Other hooks were recast so they no longer took or returned internal classes; instead we pass Interfaces or read-only versions of implementations.

Here is some overview doc on changes in hbase2 for Coprocessors including detail on why the change was made:
https://github.com/apache/hbase/blob/branch-2.0/dev-support/design-docs/Coprocessor\_Design\_Improvements-Use\_composition\_instead\_of\_inheritance-HBASE-17732.adoc

More general background on why CPs had to change: https://docs.google.com/document/d/10cabwp\_aR3OmpHVoeh544YLC3KwqMD9KiTIrHZAmfec/edit#


---

* [HBASE-19134](https://issues.apache.org/jira/browse/HBASE-19134) | *Major* | **Make WALKey an Interface; expose Read-Only version to CPs**

Made WALKey an Interface and added a WALKeyImpl implementation. WALKey comes through to Coprocessors. WALKey is read-only.


---

* [HBASE-19213](https://issues.apache.org/jira/browse/HBASE-19213) | *Minor* | **Align check and mutate operations in Table and AsyncTable**

In Table interface deprecate checkAndPut, checkAndDelete and checkAndMutate methods.
Similarly to AsyncTable a new method was added to replace the deprecated ones: CheckAndMutateBuilder checkAndMutate(byte[] row, byte[] family) with CheckAndMutateBuilder interface which can be used to construct the checkAnd\*() operations.


---

* [HBASE-19462](https://issues.apache.org/jira/browse/HBASE-19462) | *Major* | **Deprecate all addImmutable methods in Put**

Deprecates Put#addImmutable as of release 2.0.0, this will be removed in HBase 3.0.0. Use {@link #add(Cell)} and {@link org.apache.hadoop.hbase.CellBuilder} instead


---

* [HBASE-15536](https://issues.apache.org/jira/browse/HBASE-15536) | *Critical* | **Make AsyncFSWAL as our default WAL**

Now the default WALProvider is AsyncFSWALProvider, i.e. 'asyncfs'.
If you want to change back to use FSHLog, please add this in hbase-site.xml
{code}
\<property\>
\<name\>hbase.wal.provider\</name\>
\<value\>filesystem\</value\>
\</property\>
{code}
If you want to use FSHLog with multiwal, please add this in hbase-site.xml
{code}
\<property\>
\<name\>hbase.wal.regiongrouping.delegate.provider\</name\>
\<value\>filesystem\</value\>
\</property\>
{code}

This patch also sets hbase.wal.async.use-shared-event-loop to false so WAL has its own netty event group.


---

* [HBASE-14790](https://issues.apache.org/jira/browse/HBASE-14790) | *Major* | **Implement a new DFSOutputStream for logging WAL only**

Implement a FanOutOneBlockAsyncDFSOutput for writing WAL only, the WAL provider which uses this class is AsyncFSWALProvider.

It is based on netty, and will write to 3 DNs at the same time concurrently(fan-out) so generally it will lead to a lower latency. And it is also fail-fast, the stream will become unwritable immediately after there are any read/write errors, no pipeline recovery. You need to call recoverLease to force close the output for this case. And it only supports to write a file with a single block. For WAL this is a good behavior as we can always open a new file when the old one is broken. The performance analysis in HBASE-16890 shows that it has a better performance.

Behavior changes:
1. As now we write to 3 DNs concurrently, according to the visibility guarantee of HDFS, the data will be available immediately when arriving at DN since all the DNs will be considered as the last one in pipeline. This means replication may read uncommitted data and replicate it to the remote cluster and cause data inconsistency. HBASE-14004 is used to solve the problem.
2. There will be no sync failure. When the output is broken, we will open a new file and write all the unacked wal entries to the new file. This means that we may have duplicated entries in wal files. HBASE-14949 is used to solve this problem.


---

* [HBASE-19112](https://issues.apache.org/jira/browse/HBASE-19112) | *Blocker* | **Suspect methods on Cell to be deprecated**

Adds method Cell#getType which returns enum describing Cell Type.

Deprecates the following Cell methods:

 getTypeByte
 getSequenceId
 getTagsArray
 getTagsOffset
 getTagsLength

CPs trying to build cells should use RawCellBuilderFactory that supports  building cells with tags.


---

* [HBASE-19494](https://issues.apache.org/jira/browse/HBASE-19494) | *Major* | **Create simple WALKey filter that can be plugged in on the Replication Sink**

Adds means of adding very basic filter on the sink side of replication. We already have a means of installing filter source-side, which is better place to filter edits before they are shipped over the network, but this facility is needed by hbase-indexer.

Set hbase.replication.sink.walentrysinkfilter with a no-param Constructor implementation. See test in patch for example.


---

* [HBASE-19492](https://issues.apache.org/jira/browse/HBASE-19492) | *Major* | **Add EXCLUDE\_NAMESPACE and EXCLUDE\_TABLECFS support to replication peer config**

Add two new field:  EXCLUDE\_NAMESPACE and EXCLUDE\_TABLECFS to replication peer config.

If replicate\_all flag is true, it means all user tables will be replicated to peer cluster. Then allow config exclude namespaces or exclude table-cfs which can't be replicated to  peer cluster.

If replicate\_all flag is false, it means all user tables can't be replicated to peer cluster. Then allow to config namespaces or table-cfs which will be replicated to peer cluster.


---

* [HBASE-19148](https://issues.apache.org/jira/browse/HBASE-19148) | *Blocker* | **Reevaluate default values of configurations**

Removed unused hbase.fs.tmp.dir from hbase-default.xml.

Upped hbase.master.fileSplitTimeout from 30s to 10minutes (suggested by production experience)

Added note that handler-count should be ~CPU count.

hbase.regionserver.logroll.multiplier has been changed from 0.95 to 0.5 AND the default block size has been doubled.

A few of the core configs are now dumped to the log on startup.


---

* [HBASE-10092](https://issues.apache.org/jira/browse/HBASE-10092) | *Critical* | **Move to slf4j**

We now have slf4j as our front-end. Be careful adding logging from here on out; make sure it slf4j.

From here on out, as us devs go, we need to convert log messages from being 'guarded' -- i.e. surrounded by if (LOG.isDebugEnabled...) -- to instead being parameterized log messages. e.g. the latter rather than the former in the below:

logger.debug("The new entry is "+entry+".");
logger.debug("The new entry is {}.", entry);

See [1] for background on perf benefits.

Note, FATAL log level is not present in slf4j. It is noted as a Marker but won't show in logs as a LEVEL.

1.  https://www.slf4j.org/faq.html#logging\_performance


---

* [HBASE-19576](https://issues.apache.org/jira/browse/HBASE-19576) | *Major* | **Introduce builder for ReplicationPeerConfig and make it immutable**

Add a ReplicationPeerConfigBuilder to create ReplicationPeerConfig and make ReplicationPeerConfig immutable. Meanwhile, deprecated set\* methods in ReplicationPeerConfig.


---

* [HBASE-19282](https://issues.apache.org/jira/browse/HBASE-19282) | *Major* | **CellChunkMap Benchmarking and User Interface**

When MSLAB is in use (that is the default config) , we will always use the CellChunkMap indexing variant for in memory flushed Immutable segments. When MSLAB is turned off, we will use CellAraryMap. These can not be changed with any configs.  The in memory flush threshold been made to be default to 10% of region flush size. This can be turned using 'hbase.memstore.inmemoryflush.threshold.factor'.


---

* [HBASE-19670](https://issues.apache.org/jira/browse/HBASE-19670) | *Major* | **Workaround: Purge User API building from branch-2 so can make a beta-1**

Disable filtering of User API based off yetus annotation done in doclet. See parent issue for build failure currently being worked on but not done in time for a beta-1.


---

* [HBASE-19486](https://issues.apache.org/jira/browse/HBASE-19486) | *Major* | ** Periodically ensure records are not buffered too long by BufferedMutator**

The BufferedMutator now supports two settings that are used to ensure records do not stay too long in the buffer of a BufferedMutator. For periodically flushing the BufferedMutator there is now a "Timeout": "How old may the oldest record in the buffer be before we force a flush" and a "TimerTick": How often do we check if the timeout has been exceeded. Using these settings you can make the BufferedMutator automatically flush the write buffer if after the specified number of milliseconds no flush has occurred.

This is mainly useful in streaming scenarios (i.e. writing data into HBase using Apache Flink/Beam/Storm) where it is common (especially in a test/development situation) to see small unpredictable bursts of data that need to be written into HBase. When using the BufferedMutator till now the effect was that records would remain in the write buffer until the buffer was full or an explicit flush was triggered. In practice this would mean that the 'last few records' of a burst would remain in the write buffer until the next burst arrives filling the buffer to capacity and thus triggering a flush.


---

* [HBASE-19651](https://issues.apache.org/jira/browse/HBASE-19651) | *Minor* | **Remove LimitInputStream**

HBase had copied from guava the file LmiitedInputStream. This commit removes the copied file in favor of (our internal, shaded) guava's ByteStreams.limit. Guava 14.0's LIS noted: "Use ByteStreams.limit(java.io.InputStream, long) instead. This class is scheduled to be removed in Guava release 15.0."


---

* [HBASE-19358](https://issues.apache.org/jira/browse/HBASE-19358) | *Major* | **Improve the stability of splitting log when do fail over**

After HBASE-19358 we introduced a new property hbase.split.writer.creation.bounded to limit the opening writers for each WALSplitter. If set to true, we won't open any writer for recovered.edits until the entries accumulated in memory reaching hbase.regionserver.hlog.splitlog.buffersize (which defaults at 128M) and will write and close the file in one go instead of keeping the writer open. It's false by default and we recommend to set it to true if your cluster has a high region load (like more than 300 regions per RS), especially when you observed obvious NN/HDFS slow down during hbase (single RS or cluster) failover.


---

* [HBASE-19483](https://issues.apache.org/jira/browse/HBASE-19483) | *Major* | **Add proper privilege check for rsgroup commands**

This JIRA aims at refactoring AccessController, using ACL as core library in CPs.
1. Stripping out a public class AccessChecker from AccessController, using ACL as core library in CPs. AccessChecker don't have any dependency on anything CP related. Create it's instance from other CPS.
2. Change the default value of hbase.security.authorization to false.
3. Don't use CP hooks to check access in RSGroup. Use the access checker instance directly in functions of RSGroupAdminServiceImpl.


---

* [HBASE-11409](https://issues.apache.org/jira/browse/HBASE-11409) | *Major* | **Add more flexibility for input directory structure to LoadIncrementalHFiles**

Allows for users to bulk load entire tables from hdfs by specifying the parameter -loadTable.  This allows you to pass in a table level directory and have all regions column families bulk loaded, if you do not specify the -loadTable parameter LoadIncrementalHFiles will work as before. Note: you must have a pre-created table to run with -loadTable it will not create one for you.


---

* [HBASE-18963](https://issues.apache.org/jira/browse/HBASE-18963) | *Major* | **Remove MultiRowMutationProcessor and implement mutateRows... methods using batchMutate()**

Modified HRegion.mutateRow() APIs to use batchMutate() instead of processRowsWithLocks() with MultiRowMutationProcessor. MultiRowMutationProcessor is removed to have single write path that uses batchMutate().


---

* [HBASE-19114](https://issues.apache.org/jira/browse/HBASE-19114) | *Major* | **Split out o.a.h.h.zookeeper from hbase-server and hbase-client**

Splits out most of ZooKeeper related code into a separate new module: hbase-zookeeper.
Also, renames some ZooKeeper related classes to follow a common naming pattern - "ZK" prefix - as compared to many different styles earlier.


---

* [HBASE-19552](https://issues.apache.org/jira/browse/HBASE-19552) | *Major* | **update hbase to use new thirdparty libs**

hbase-thirdparty libs have moved to o.a.h.thirdparty offset. Netty shading system property is no longer necessary.


---

* [HBASE-19128](https://issues.apache.org/jira/browse/HBASE-19128) | *Major* | **Purge Distributed Log Replay from codebase, configurations, text; mark the feature as unsupported, broken.**

Removes Distributed Log Replay feature. Disable the feature before upgrading.


---

* [HBASE-16459](https://issues.apache.org/jira/browse/HBASE-16459) | *Trivial* | **Remove unused hbase shell --format option**

<!-- markdown -->

The HBase `shell` command no longer recognizes the option `--format`. Previously this option only recognized the default value of 'console'. The default value is now always used.



