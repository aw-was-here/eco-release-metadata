
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
# Apache HBase  2.0.0-alpha-4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-18794](https://issues.apache.org/jira/browse/HBASE-18794) | *Major* | **Remove deprecated methods in MasterObserver**

The removed APIs are shown below.
# preCreateTableHandler
# postCreateTableHandler
# preDeleteTableHandler
# postDeleteTableHandler
# preTruncateTableHandler
# postTruncateTableHandler
# preModifyTableHandler
# postModifyTableHandler
# preAddColumn
# postAddColumn
# preAddColumnHandler
# postAddColumnHandler
# preModifyColumn
# postModifyColumn
# preModifyColumnHandler
# postModifyColumnHandler
# preDeleteColumn
# postDeleteColumn
# preDeleteColumnHandler
# postDeleteColumnHandler
# preEnableTableHandler
# postEnableTableHandler
# preDisableTableHandler
# postDisableTableHandler
# preDispatchMerge
# postDispatchMerge


---

* [HBASE-14004](https://issues.apache.org/jira/browse/HBASE-14004) | *Critical* | **[Replication] Inconsistency between Memstore and WAL may result in data in remote cluster that is not in the origin**

Now when replicating a wal file which is still opened for write, we will get its committed length from the WAL instance in the same RS to prevent replicating uncommit WALEdit.

This is very important if you use AsyncFSWAL, as we use fan-out in AsyncFSWAL. The data written to DN will be visible immediately as all DNs think it is the end of a pipeline, although the client has not received an ack, and also NN may truncate the file if the client crashes at the same time.


---

* [HBASE-18831](https://issues.apache.org/jira/browse/HBASE-18831) | *Major* | **Add explicit dependency on javax.el**

Specify an explicit version for javax.el. Without it we rely on repository cached metadata of which a prevalent version seems to list all versions between b01 and b08 but finishes with a b08-jbossorg which is in the jboss repo, a repo most of us do not list in our poms.


---

* [HBASE-18798](https://issues.apache.org/jira/browse/HBASE-18798) | *Major* | **Remove the unused methods in RegionServerObserver**

Remove the following APIs from RegionServerObserver:
# preRollBackMerge
# postRollBackMerge
# preMergeCommit
# postMergeCommit
# postMerge
# preMerge


---

* [HBASE-18446](https://issues.apache.org/jira/browse/HBASE-18446) | *Critical* | **Mark StoreFileScanner/StoreFileReader as IA.LimitedPrivate(Phoenix)**

Mark StoreFileScanner and StoreFileReader as IA.LimitPrivate(Phoenix).
Deprecated the preStoreFileReaderOpen and postStoreFileReaderOpen method in RegionObserver to indicate that these methods are only supposed to be used by Phoenix.


---

* [HBASE-18825](https://issues.apache.org/jira/browse/HBASE-18825) | *Major* | **Use HStoreFile instead of StoreFile in our own code base and remove unnecessary methods in StoreFile interface**

Cleanup the StoreFile interface.

The metadata keys are moved to HStoreFile.

These methods are removed:
CacheConfig getCacheConf();
byte[] getMetadataValue(byte[] key);
boolean isCompactedAway();
boolean isReferencedInReads();
void initReader() throws IOException;
StoreFileScanner getPreadScanner(boolean cacheBlocks, long readPt, long scannerOrder, boolean canOptimizeForNonNullColumn);
StoreFileScanner getStreamScanner(boolean canUseDropBehind, boolean cacheBlocks, boolean isCompaction, long readPt, long scannerOrder, boolean canOptimizeForNonNullColumn) throws IOException;
StoreFileReader getReader();
void closeReader(boolean evictOnClose) throws IOException;
void markCompactedAway();
void deleteReader() throws IOException;

Notice that these methods are still available in HStoreFile. 

And the return value of getFirstKey and getLastKey are changed from Cell to Optional\<Cell\> to better indicate that they may not be available.


---

* [HBASE-18731](https://issues.apache.org/jira/browse/HBASE-18731) | *Major* | **[compat 1-2] Mark protected methods of QuotaSettings that touch Protobuf internals as IA.Private**

The following methods in QuotaSettings were annotated InterfaceAudience.Private; they are for internal use only in hbase-2.0.0

buildSetQuotaRequestProto(final QuotaSettings settings)
setupSetQuotaRequest(SetQuotaRequest.Builder builder)

Note that there were versions of these methods in HBase 1.y that used classes in the {{org.apache.hadoop.hbase.protobuf.generated}} package. That package no longer exists as a part of our cleanup of protobufs from our public facing API and the related methods have been removed.


---

* [HBASE-18859](https://issues.apache.org/jira/browse/HBASE-18859) | *Major* | **Purge PB from BulkLoadObserver**

No longer pass the protobuf request to prePrepareBulkLoad and preCleanupBulkLoad in BulkLoadObserver as part of our effort to purge protobuf from our Coprocessor API Interface (if you need to read the Table and RegionInfo, pull it from the passed in RegionCoprocessorEnvironment ObserverContext).


---

* [HBASE-16769](https://issues.apache.org/jira/browse/HBASE-16769) | *Blocker* | **Deprecate/remove PB references from MasterObserver and RegionServerObserver**

Signature of below methods in MasterObserver changed and instead of org.apache.hadoop.hbase.shaded.protobuf.generated.SnapshotDescription param, we will be passing org.apache.hadoop.hbase.client.SnapshotDescription
preListSnapshot
postListSnapshot
preSnapshot
postSnapshot
preCloneSnapshot
postCloneSnapshot
preRestoreSnapshot
postRestoreSnapshot
preDeleteSnapshot
postDeleteSnapshot

Also changed signature of RegionServerObserver#preReplicateLogEntries and preReplicateLogEntries by removing params List\<org.apache.hadoop.hbase.shaded.protobuf.generated.AdminProtos.WALEntry\>, org.apache.hadoop.hbase.CellScanner


---

* [HBASE-18298](https://issues.apache.org/jira/browse/HBASE-18298) | *Critical* | **RegionServerServices Interface cleanup for CP expose**

We used to pass the RegionServerServices (RSS) which gave Coprocesosrs (CP) all sort of access to internal Server machinery. We now only allows the CP a subset of the RSS in the form of the CPRSS Interface. Particulars:

Removed method getRegionServerServices from CP exposed RegionCoprocessorEnvironment and RegionServerCoprocessorEnvironment and replaced with getCoprocessorRegionServerServices. This returns a new interface CoprocessorRegionServerServices which is only a subset of RegionServerServices. With that below methods are no longer exposed for CPs
WAL getWAL(HRegionInfo regionInfo)
List\<WAL\> getWALs() 
FlushRequester getFlushRequester()
RegionServerAccounting getRegionServerAccounting()
RegionServerRpcQuotaManager getRegionServerRpcQuotaManager()
SecureBulkLoadManager getSecureBulkLoadManager()
RegionServerSpaceQuotaManager getRegionServerSpaceQuotaManager()
void postOpenDeployTasks(final PostOpenDeployContext context)
void postOpenDeployTasks(final Region r)
boolean reportRegionStateTransition(final RegionStateTransitionContext context)
boolean reportRegionStateTransition(TransitionCode code, long openSeqNum, HRegionInfo... hris)
boolean reportRegionStateTransition(TransitionCode code, HRegionInfo... hris)
RpcServerInterface getRpcServer()
ConcurrentMap\<byte[], Boolean\> getRegionsInTransitionInRS()
Leases getLeases()
ExecutorService getExecutorService()
Map\<String, Region\> getRecoveringRegions()
public ServerNonceManager getNonceManager()
boolean registerService(Service service)
HeapMemoryManager getHeapMemoryManager()
double getCompactionPressure()
ThroughputController getFlushThroughputController()
double getFlushPressure()
MetricsRegionServer getMetrics()
EntityLock regionLock(List\<HRegionInfo\> regionInfos, String description, Abortable abort)
void unassign(byte[] regionName)
Configuration getConfiguration()
ZooKeeperWatcher getZooKeeper()
ClusterConnection getClusterConnection()
MetaTableLocator getMetaTableLocator()
CoordinatedStateManager getCoordinatedStateManager()
ChoreService getChoreService()
void stop(String why)
void abort(String why, Throwable e)
boolean isAborted()
void updateRegionFavoredNodesMapping(String encodedRegionName, List\<ServerName\> favoredNodes)
InetSocketAddress[] getFavoredNodesForRegion(String encodedRegionName)
void addToOnlineRegions(Region region)
boolean removeFromOnlineRegions(final Region r, ServerName destination)

Also 3 methods name have been changed
List\<Region\> getOnlineRegions(TableName tableName) -\> List\<Region\> getRegions(TableName tableName) 
List\<Region\> getOnlineRegions() -\> List\<Region\> getRegions() 
Region getFromOnlineRegions(final String encodedRegionName) -\> Region getRegion(final String encodedRegionName)


---

* [HBASE-17732](https://issues.apache.org/jira/browse/HBASE-17732) | *Critical* | **Coprocessor Design Improvements**

We are moving from Inheritence
- Observer \*is\* Coprocessor
- FooService \*is\* CoprocessorService
To Composition
- Coprocessor \*has\* Observer
- Coprocessor \*has\* Service
------------------------------------------------------
Summary
------------------------------------------------------
- Adds four new interfaces - MasterCoprocessor, RegionCoprocessor, RegionServierCoprocessor,
  WALCoprocessor
- These new \*Coprocessor interfaces have a get\*Observer() function for each observer type
  supported by them.
- Added Coprocessor#getService() to base interface. All extending \*Coprocessor interfaces will
  get it from the base interface.
- Added BulkLoadObserver hooks to RegionCoprocessorHost instad of SecureBulkLoadManager doing its
  own trickery.
- CoprocessorHost#find\*() fuctions: Too many testing hooks digging into CP internals.
  Deleted if can, else marked @VisibleForTesting.
------------------------------------------------------
Backward Compatibility
------------------------------------------------------
- Old coprocessors implementing \*Observer won't get loaded (no backward compatibility guarantees).
- Third party coprocessors only implementing Coprocessor will not get loaded (just like Observers).
- Old coprocessors implementing CoprocessorService (for master/region host)
  /SingletonCoprocessorService (for RegionServer host) will continue to work with 2.0.
- Added test to ensure backward compatibility of CoprocessorService/SingletonCoprocessorService
- Note that if a coprocessor implements both observer and service in same class, its service
  component will continue to work but it's observer component won't work.


---

* [HBASE-18826](https://issues.apache.org/jira/browse/HBASE-18826) | *Major* | **Use HStore instead of Store in our own code base and remove unnecessary methods in Store interface**

**WARNING: No release note provided for this change.**


---

* [HBASE-18839](https://issues.apache.org/jira/browse/HBASE-18839) | *Major* | **Apply RegionInfo to code base**

The incompatible changes of IA.Public/LimitedPrivate classes are shown below.
+ new method
- removed method
\* deprecated method
-------------------------------------
HRegionLocation class
+ RegionInfo getRegion()
\* HRegionInfo getRegionInfo()

AsyncAdmin class
+ CompletableFuture\<List\<RegionInfo\>\> getOnlineRegions(ServerName serverName);
- CompletableFuture\<List\<HRegionInfo\>\> getOnlineRegions(ServerName serverName);
+ CompletableFuture\<List\<RegionInfo\>\> getTableRegions(TableName tableName);
- CompletableFuture\<List\<HRegionInfo\>\> getTableRegions(TableName tableName);

HBaseTestingUtility class
- Table createTable(HTableDescriptor htd, byte[][] families, Configuration c)
- Table createTable(HTableDescriptor htd, byte[][] families, byte[][] splitKeys, Configuration c)
- Table createTable(HTableDescriptor htd, byte[][] splitRows)
- void modifyTableSync(Admin admin, HTableDescriptor desc)
- HRegion createLocalHRegion(HTableDescriptor desc, byte [] startKey, byte [] endKey)
- HRegion createLocalHRegion(HRegionInfo info, HTableDescriptor desc)
- HRegion createLocalHRegion(HRegionInfo info, TableDescriptor desc) 
+ HRegion createLocalHRegion(RegionInfo info, TableDescriptor desc) 
- HRegion createLocalHRegion(HRegionInfo info, HTableDescriptor desc, WAL wal)
- HRegion createLocalHRegion(HRegionInfo info, TableDescriptor desc, WAL wal)
+ HRegion createLocalHRegion(RegionInfo info, TableDescriptor desc, WAL wal)
- List\<HRegionInfo\> createMultiRegionsInMeta(final Configuration conf,final TableDescriptor htd, byte [][] startKeys)
+ List\<HRegionInfo\> createMultiRegionsInMeta(final Configuration conf,final TableDescriptor htd, byte [][] startKeys)
- WAL createWal(final Configuration conf, final Path rootDir, final HRegionInfo hri)
+ WAL createWal(final Configuration conf, final Path rootDir, final RegionInfo hri)
- HRegion createRegionAndWAL(final HRegionInfo info, final Path rootDir,final Configuration conf, final HTableDescriptor htd)
- HRegion createRegionAndWAL(final HRegionInfo info, final Path rootDir, final Configuration conf, final TableDescriptor htd)
+ HRegion createRegionAndWAL(final RegionInfo info, final Path rootDir, final Configuration conf, final TableDescriptor htd)
- HRegion createRegionAndWAL(final HRegionInfo info, final Path rootDir, final Configuration conf, final HTableDescriptor htd, boolean initialize)
+ HRegion createRegionAndWAL(final RegionInfo info, final Path rootDir, final Configuration conf, final HTableDescriptor htd, boolean initialize)
- boolean assignRegion(final HRegionInfo regionInfo)
+ boolean assignRegion(final RegionInfo regionInfo)
- void moveRegionAndWait(HRegionInfo destRegion, ServerName destServer)
+ void moveRegionAndWait(RegionInfo destRegion, ServerName destServer)
- int createPreSplitLoadTestTable(Configuration conf, HTableDescriptor desc, HColumnDescriptor hcd)
- int createPreSplitLoadTestTable(Configuration conf, HTableDescriptor desc, HColumnDescriptor hcd, int numRegionsPerServer)
- int createPreSplitLoadTestTable(Configuration conf, HTableDescriptor desc, HColumnDescriptor[] hcds, int numRegionsPerServer)
- HRegion createTestRegion(String tableName, HColumnDescriptor cd)

WALEdit class
- WALEdit createFlushWALEdit(HRegionInfo hri, FlushDescriptor f)
+ WALEdit createFlushWALEdit(RegionInfo hri, FlushDescriptor f)
- WALEdit createRegionEventWALEdit(HRegionInfo hri,RegionEventDescriptor regionEventDesc)
+ WALEdit createRegionEventWALEdit(RegionInfo hri,RegionEventDescriptor regionEventDesc)
- WALEdit createCompaction(final HRegionInfo hri, final CompactionDescriptor c)
+ WALEdit createCompaction(final RegionInfo hri, final CompactionDescriptor c)
- byte[] getRowForRegion(HRegionInfo hri)
+ byte[] getRowForRegion(RegionInfo hri)
- WALEdit createBulkLoadEvent(HRegionInfo hri, WALProtos.BulkLoadDescriptor bulkLoadDescriptor)
+ - WALEdit createBulkLoadEvent(RegionInfo hri, WALProtos.BulkLoadDescriptor bulkLoadDescriptor)

RegionScanner class
- HRegionInfo getRegionInfo();
+ RegionInfo getRegionInfo();

RegionPlan class
- RegionPlan(final HRegionInfo hri, ServerName source, ServerName dest)
+ RegionPlan(final RegionInfo hri, ServerName source, ServerName dest)

Region class
- HRegionInfo getRegionInfo();
+ RegionInfo getRegionInfo();

TableSnapshotInputFormat.TableSnapshotRegionSplit class
\* HRegionInfo getRegionInfo()
+ RegionInfo getRegion()

RawAsyncTable.CoprocessorCallback class
- void onRegionComplete(HRegionInfo region, R resp)
+ void onRegionComplete(RegionInfo region, R resp)
- void onRegionError(RegionInfo region, Throwable error);
+ void onRegionError(HRegionInfo region, Throwable error);


---

* [HBASE-18883](https://issues.apache.org/jira/browse/HBASE-18883) | *Major* | **Upgrade to Curator 4.0**

Curator version has been updated from 2.x to 4.0 (running in ZK 3.4 compatibility mode).

Users who experience classpath issues due to version conflicts are recommended to use either the hbase-shaded-client or hbase-shaded-mapreduce artifacts.


---

* [HBASE-18878](https://issues.apache.org/jira/browse/HBASE-18878) | *Major* | **Use Optional\<T\> return types when T can be null**

**WARNING: No release note provided for this change.**


---

* [HBASE-18931](https://issues.apache.org/jira/browse/HBASE-18931) | *Major* | **Make ObserverContext an interface and remove private/testing methods**

Changes ObserverContext from a class to an interface and hides away constructor, testing functions and other internal-only functions in the implementation class.


---

* [HBASE-18949](https://issues.apache.org/jira/browse/HBASE-18949) | *Major* | **Remove the CompactionRequest parameter in preCompactSelection**

Remove the CompactionRequest parameter in preCompactSelection as we do not have a CompactionRequest at that time.


---

* [HBASE-18183](https://issues.apache.org/jira/browse/HBASE-18183) | *Major* | **Region interface cleanup for CP expose**

Below methods are removed from CP exposed Region interface
getOpenSeqNum
getOldestSeqIdOfStore
isLoadingCfsOnDemandDefault
getReadpoint
updateReadRequestsCount
updateWriteRequestsCount
getRegionServicesForStores
getMetrics
getHDFSBlocksDistribution
releaseRowLocks
batchReplay
get(Get get, boolean withCoprocessor, long nonceGroup, long nonce)
bulkLoadHFiles
execService
registerService
checkFamilies
checkTimestamps
prepareDelete
prepareDeleteTimestamps
updateCellTimestamps
flush
compact
waitForFlushesAndCompactions
waitForFlushes

Change signature of below methods by dropping params 'nonceGroup', 'nonce'
append(Append append, long nonceGroup, long nonce)
batchMutate(Mutation[] mutations, long nonceGroup, long nonce)
increment(Increment increment, long nonceGroup, long nonce)


---

* [HBASE-18747](https://issues.apache.org/jira/browse/HBASE-18747) | *Critical* | **Introduce new example and helper classes to tell CP users how to do filtering on scanners**

Modify ZooKeeperScanPolicyObserver in hbase-examples to show how to do filtering in the CP hooks of flush and compaction in hbase-2.0.


---

* [HBASE-15410](https://issues.apache.org/jira/browse/HBASE-15410) | *Major* | **Utilize the max seek value when all Filters in MUST\_PASS\_ALL FilterList return SEEK\_NEXT\_USING\_HINT**

This optimization, targeting SEEK\_NEXT\_USING\_HINT return values, utilizes the max seek value and is transparent to Filters.


---

* [HBASE-18954](https://issues.apache.org/jira/browse/HBASE-18954) | *Major* | **Make \*CoprocessorHost classes private**

- Make CoprocessorHost and its implementations InterfaceAudience.Private
- Configurations from "CoprocessorHost" have been moved to new "CoprocessorConfigurations" class.


---

* [HBASE-14247](https://issues.apache.org/jira/browse/HBASE-14247) | *Critical* | **Separate the old WALs into different regionserver directories**

Add a new config hbase.separate.oldlogdir.by.regionserver. The default value is false. If this config is true, the old wal dir will be separated by regionservers. This will change the oldWALs layout. The oldWALs is used by replication. So if a cluster didn't use replication, it can be rolling upgrade (upgrade this config from false to true) directly. If a cluster use replication, the oldWALs will be not found when layout changed. So the cluster need rolling upgrade twice. Firstly, only rolling cluster to use new version code. Secondly rolling the config from false to true. Because the cluster already rolling to new version code, so it can find the oldWALs in the new dir layout.


---

* [HBASE-18960](https://issues.apache.org/jira/browse/HBASE-18960) | *Major* | **A few bug fixes and minor improvements around batchMutate()**

All operations for which further processing is skipped by preBatchMutate coprocessor hook are treated as SUCCESS instead of FAILED.


---

* [HBASE-18350](https://issues.apache.org/jira/browse/HBASE-18350) | *Blocker* | **RSGroups are broken under AMv2**

Moves RSGroup on to AMv2. Reenables disabled RSGroups tests.


---

* [HBASE-19001](https://issues.apache.org/jira/browse/HBASE-19001) | *Major* | **Remove the hooks in RegionObserver which are designed to construct a StoreScanner which is marked as IA.Private**

These methods are removed:
KeyValueScanner preStoreScannerOpen(ObserverContext\<RegionCoprocessorEnvironment\> c,
      Store store, Scan scan, NavigableSet\<byte[]\> targetCols, KeyValueScanner s, long readPt)
      throws IOException;
InternalScanner preFlushScannerOpen(ObserverContext\<RegionCoprocessorEnvironment\> c,
      Store store, List\<KeyValueScanner\> scanners, InternalScanner s, long readPoint)
      throws IOException;
InternalScanner preCompactScannerOpen(ObserverContext\<RegionCoprocessorEnvironment\> c,
      Store store, List\<? extends KeyValueScanner\> scanners, ScanType scanType, long earliestPutTs,
      InternalScanner s, CompactionLifeCycleTracker tracker, CompactionRequest request,
      long readPoint) throws IOException;

For flush and compaction, CP users are expected to wrap the InternalScanner in preFlush/preCompact. And for normal region operation, just use preGetOp/preScannerOpen to modify the Get/Scan object.

This method in Region interface is also removed as we do not need to use read point in CP hooks anymore:
long getReadPoint(IsolationLevel isolationLevel);


---

* [HBASE-18945](https://issues.apache.org/jira/browse/HBASE-18945) | *Major* | **Make a IA.LimitedPrivate interface for CellComparator**

CellCompartor has been added as an interface with IA.LimitedPrivate. It has the following methods
#int compare(Cell leftCell, Cell rightCell);
#int compareRows(Cell leftCell, Cell rightCell)
#int compareRows(Cell cell, byte[] bytes, int offset, int length)
#int compareWithoutRow(Cell leftCell, Cell rightCell)
#int compareFamilies(Cell leftCell, Cell rightCell
#int compareQualifiers(Cell leftCell, Cell rightCell)
#int compareTimestamps(Cell leftCell, Cell rightCell)
#int compareTimestamps(long leftCellts, long rightCellts)

This is exposed to CPs and CPs can make use of the above methods to do comparisons on the cells.
For internal usage we have CellComparatorImpl and it has static references to COMPARATOR and META\_CELL\_COMPARATOR.
So when a region or store is initialized we should use one of the above comparator. For META table we need the META\_CELL\_COMPARATOR and all other table's  regions/stores will use the COMPARTOR.
While writing the comparator name in FixedFileTrailer of the Hfile we have now ensured that this rename of CellComparator.COMPARATOR/CellComparator.META\_CELL\_COMPARATOR to CellComparatorImpl.COMPARATOR/CellComparatorImpl.META\_CELL\_COMPARATOR is handled.

CellUtils is an util method that provides lot of APIs that helps to do compare, matching functionalities between two cells, or with a cell and a corrpesponding byte[] etc. Some of the APIs are internally used which will be cleaned up in a follow on JIRA HBASE-18995.


---

* [HBASE-19042](https://issues.apache.org/jira/browse/HBASE-19042) | *Blocker* | **Oracle Java 8u144 downloader broken in precommit check**

Precommit switched from Oracle JDK 8 to OpenJDK-8.


---

* [HBASE-10367](https://issues.apache.org/jira/browse/HBASE-10367) | *Major* | **RegionServer graceful stop / decommissioning**

Added three top level Admin APIs to help decommissioning and graceful stop of region servers.

  /\*\*
   \* Mark region server(s) as decommissioned to prevent additional regions from getting
   \* assigned to them. Optionally unload the regions on the servers. If there are multiple servers
   \* to be decommissioned, decommissioning them at the same time can prevent wasteful region
   \* movements. Region unloading is asynchronous.
   \* @param servers The list of servers to decommission.
   \* @param offload True to offload the regions from the decommissioned servers
   \*/
  void decommissionRegionServers(List\<ServerName\> servers, boolean offload) throws IOException;

  /\*\*
   \* List region servers marked as decommissioned, which can not be assigned regions.
   \* @return List of decommissioned region servers.
   \*/
  List\<ServerName\> listDecommissionedRegionServers() throws IOException;

  /\*\*
   \* Remove decommission marker from a region server to allow regions assignments.
   \* Load regions onto the server if a list of regions is given. Region loading is
   \* asynchronous.
   \* @param server The server to recommission.
   \* @param encodedRegionNames Regions to load onto the server.
   \*/
  void recommissionRegionServer(ServerName server, List\<byte[]\> encodedRegionNames)  throws IOException;


---

* [HBASE-19043](https://issues.apache.org/jira/browse/HBASE-19043) | *Major* | **Purge TableWrapper and CoprocessorHConnnection**

Removes getTable from the CoprocessorEnvrionment Interface and from the BaseEnvironment implementation. Also removes TableWrapper and CoprocessorHConnection, two classes that were used by BaseEnvironment to keep a tag on Tables created by Coprocessors that BaseEnvironment might close them out on #shutdown.

Long after these classes and methods were added, in HBase 1.0.0, we moved to a mode where management of Tables was shifted from HBase to the Client; the Client is to manage lifecycle. Table also became a (relatively) lightweight construct so folks are used to getting a Table instance, using it, and then immediately closing it when done.

Coprocessors should do the same in hbase2.0.0.

CoprocessorHConnection short-circuited RPC. This feature has since been integrated into Server Connections; when they create a Connection, they get one that will short-circuit if the request is to a localhost so no need of CoprocessorHConnection any more.

Coprocessors get the Server Connection when they ask for a Connection from their \*CoprocessorEnvironment.


---

* [HBASE-19046](https://issues.apache.org/jira/browse/HBASE-19046) | *Major* | **RegionObserver#postCompactSelection  Avoid passing shaded ImmutableList param**

RegionObserver#postCompactSelection signature is changed.
Arg type org.apache.hadoop.hbase.shaded.com.google.common.collect.ImmutableList is replaced with java.util.List


---

* [HBASE-18989](https://issues.apache.org/jira/browse/HBASE-18989) | *Major* | **Polish the compaction related CP hooks**

Add two new methods in CompactionLifeCycleTracker.
The notExecuted method will be called if the selectCompaction failed or space quota limitation reached.
The completed method will be called after all the requested compactions are finished. The compaction scheduling is pre Store so if you request compaction on a region it may lead to multiple compactions.
Remove the User parameter in Region.requestCompaction methods as it is useless for CP users.
Add a boolean parameter to indicate whether you want to do a major compaction. And so that the triggerMajorCompaction method is removed.
Remove the getCompactionProgress method in Store interface.
Add a UT to confirm that CompactionLifeCycleTracker works correctly, and it also shows how to use CompactionLifeCycleTracker to wait for the completion of a compaction.


---

* [HBASE-19067](https://issues.apache.org/jira/browse/HBASE-19067) | *Major* | **Do not expose getHDFSBlockDistribution in StoreFile**

Removed CP exposed StoreFile#getHDFSBlockDistribution


---

* [HBASE-19051](https://issues.apache.org/jira/browse/HBASE-19051) | *Minor* | **Add new split algorithm for num string**

Add new split algorithm DecimalStringSplit，row are decimal-encoded long values in the range "00000000" =\> "99999999" .
create 't1','f', { NUMREGIONS =\> 10 , SPLITALGO =\> 'DecimalStringSplit' }
The split point will be 10000000,20000000,...,90000000


---

* [HBASE-16338](https://issues.apache.org/jira/browse/HBASE-16338) | *Major* | **update jackson to 2.y**

HBase has upgraded from Jackson 1 to Jackson 2. JSON output should not have changed and this should not be user facing, but server classpaths should be adjusted accordingly.


---

* [HBASE-18893](https://issues.apache.org/jira/browse/HBASE-18893) | *Major* | **Remove Add/Modify/DeleteColumnFamilyProcedure in favor of using ModifyTableProcedure**

The RPC calls for Add/Modify/DeleteColumn have been removed and are now backed by ModifyTable functionality. The corresponding permissions in AccessController have been removed as well.

The shell already bypassed these RPCs and used ModifyTable directly, and thus would not be getting these permission checks, this change brings the rest of the RPC inline with that.

Coprocessor hooks for pre/post Add/Modify/DeleteColumn have likewise been removed. Coprocessors needing to take special actions on schema change should instead process ModifyTable events (which they should have been doing already, but it was easy for developers to miss this nuance).


---

* [HBASE-18873](https://issues.apache.org/jira/browse/HBASE-18873) | *Critical* | **Hide protobufs in GlobalQuotaSettings**

GlobalQuotaSettings was introduced to avoid protocol-specific Java classes from leaking into API which is users may leverage. This class has a number of methods which return plain-Java-objects instead of these protocol-specific classes in an effort to better provide stability in the future.


---

* [HBASE-18846](https://issues.apache.org/jira/browse/HBASE-18846) | *Major* | **Accommodate the hbase-indexer/lily/SEP consumer deploy-type**

Makes it so hbase-indexer/lily can move off dependence on internal APIs and instead move to public APIs.

Adds being able to disable near-all HRegionServer services. This along with an existing plugin mechanism which allows configuring the RegionServer to host an alternate Connection implementation, makes it so we can put up a cluster of hollowed-out HRegionServers purposed to pose as a Replication Sink for a source HBase Cluster (Users do not need to figure our RPC, our PB encodings, build a distributed service, etc.). In the alternate supplied Connection implementation, hbase-indexer would install its own code to catch the Replication.

Below and attached are sample hbase-server.xml files and alternate Connection implementations. To start up an HRegionServer as a sink, first make sure there is a ZooKeeper ensemble we can talk to. If none, just start one:
{code}
./bin/hbase-daemon.sh start zookeeper
{code}

To start up a single RegionServer, put in place the below sample hbase-site.xml and a derviative of the below IndexerConnection on the CLASSPATH, and then start the RegionServer:
{code}
./bin/hbase-daemon.sh  start  org.apache.hadoop.hbase.regionserver.HRegionServer
{code}
Stdout and Stderr will go into files under configured logs directory. Browse to localhost:16030 to find webui (unless disabled).

DETAILS

This patch adds configuration to disable RegionServer internal Services, Managers, Caches, etc., starting up.

By default a RegionServer starts up an Admin and Client Service. To disable either or both, use the below booleans:
{code}
hbase.regionserver.admin.service
hbase.regionserver.client.service
{code}

Both default true.

To make a HRegionServer startup and stay up without expecting to communicate with a master, set the below boolean to false:

{code}
hbase.masterless
{code]
Default is false.

h3. Sample hbase-site.xml that disables internal HRegionServer Services
Below is an example hbase-site.xml that turns off most Services and that then installs an alternate Connection implementation, one that is nulled out in all regards except in being able to return a "Table" that can catch a Replication Stream in its {code}batch(List\<? extends Row\> actions, Object[] results){code} method. i.e. what the hbase-indexer wants. I also add the example alternate Connection implementation below (both of these files are also attached to this issue). Expects there to be an up and running zookeeper ensemble.

{code}
\<configuration\>
  \<!-- This file is an example for hbase-indexer. It shuts down
       facility in the regionserver and interjects a special
       Connection implementation which is how hbase-indexer will
       receive the replication stream from source hbase cluster.
       See the class referenced in the config.

       Most of the config in here is booleans set to off and
       setting values to zero so services doon't start. Some of
       the flags are new via this patch.
--\>
  \<!--Need this for the RegionServer to come up standalone--\>
  \<property\>
    \<name\>hbase.cluster.distributed\</name\>
    \<value\>true\</value\>
  \</property\>

  \<!--This is what you implement, a Connection that returns a Table that
       overrides the batch call. It is at this point you do your indexer inserts.
    --\>
  \<property\>
    \<name\>hbase.client.connection.impl\</name\>
    \<value\>org.apache.hadoop.hbase.client.IndexerConnection\</value\>
    \<description\>A customs connection implementation just so we can interject our
      own Table class, one that has an override for the batch call which receives
      the replication stream edits; i.e. it is called by the replication sink
      #replicateEntries method.\</description\>
  \</property\>

  \<!--Set hbase.regionserver.info.port to -1 for no webui--\>

  \<!--Below are configs to shut down unused services in hregionserver--\>
  \<property\>
    \<name\>hbase.regionserver.admin.service\</name\>
    \<value\>false\</value\>
    \<description\>Do NOT stand up an Admin Service Interface on RPC\</description\>
  \</property\>
  \<property\>
    \<name\>hbase.regionserver.client.service\</name\>
    \<value\>false\</value\>
    \<description\>Do NOT stand up a client-facing Service on RPC\</description\>
  \</property\>
  \<property\>
    \<name\>hbase.wal.provider\</name\>
    \<value\>org.apache.hadoop.hbase.wal.DisabledWALProvider\</value\>
    \<description\>Set WAL service to be the null WAL\</description\>
  \</property\>
  \<property\>
    \<name\>hbase.regionserver.workers\</name\>
    \<value\>false\</value\>
    \<description\>Turn off all background workers, log splitters, executors, etc.\</description\>
  \</property\>
  \<property\>
    \<name\>hfile.block.cache.size\</name\>
    \<value\>0.0001\</value\>
    \<description\>Turn off block cache completely\</description\>
  \</property\>
  \<property\>
    \<name\>hbase.mob.file.cache.size\</name\>
    \<value\>0\</value\>
    \<description\>Disable MOB cache.\</description\>
  \</property\>
  \<property\>
    \<name\>hbase.masterless\</name\>
    \<value\>true\</value\>
    \<description\>Do not expect Master in cluster.\</description\>
  \</property\>
  \<property\>
    \<name\>hbase.regionserver.metahandler.count\</name\>
    \<value\>1\</value\>
    \<description\>How many priority handlers to run; we probably need none.
    Default is 20 which is too much on a server like this.\</description\>
  \</property\>
  \<property\>
    \<name\>hbase.regionserver.replication.handler.count\</name\>
    \<value\>1\</value\>
    \<description\>How many replication handlers to run; we probably need none.
    Default is 3 which is too much on a server like this.\</description\>
  \</property\>
  \<property\>
    \<name\>hbase.regionserver.handler.count\</name\>
    \<value\>10\</value\>
    \<description\>How many default handlers to run; tie to # of CPUs.
    Default is 30 which is too much on a server like this.\</description\>
  \</property\>
  \<property\>
    \<name\>hbase.ipc.server.read.threadpool.size\</name\>
    \<value\>3\</value\>
    \<description\>How many Listener request reaaders to run; tie to a portion # of CPUs (1/4?).
    Default is 10 which is too much on a server like this.\</description\>
  \</property\>
\</configuration\>
{code}

h2. Sample Connection Implementation
Has call-out for where an hbase-indexer would insert its capture code.
{code}
package org.apache.hadoop.hbase.client;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Message;
import com.google.protobuf.Service;
import com.google.protobuf.ServiceException;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.CompareOperator;
import org.apache.hadoop.hbase.HTableDescriptor;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.coprocessor.Batch;
import org.apache.hadoop.hbase.filter.CompareFilter;
import org.apache.hadoop.hbase.ipc.CoprocessorRpcChannel;
import org.apache.hadoop.hbase.security.User;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;


/\*\*
 \* Sample class for hbase-indexer.
 \* DO NOT COMMIT TO HBASE CODEBASE!!!
 \* Overrides Connection just so we can return a Table that has the
 \* method that the replication sink calls, i.e. Table#batch.
 \* It is at this point that the hbase-indexer catches the replication
 \* stream so it can insert into the lucene index.
 \*/
public class IndexerConnection implements Connection {
  private final Configuration conf;
  private final User user;
  private final ExecutorService pool;
  private volatile boolean closed = false;

  public IndexerConnection(Configuration conf, ExecutorService pool, User user) throws IOException {
    this.conf = conf;
    this.user = user;
    this.pool = pool;
  }

  @Override
  public void abort(String why, Throwable e) {}

  @Override
  public boolean isAborted() {
    return false;
  }

  @Override
  public Configuration getConfiguration() {
    return this.conf;
  }

  @Override
  public BufferedMutator getBufferedMutator(TableName tableName) throws IOException {
    return null;
  }

  @Override
  public BufferedMutator getBufferedMutator(BufferedMutatorParams params) throws IOException {
    return null;
  }

  @Override
  public RegionLocator getRegionLocator(TableName tableName) throws IOException {
    return null;
  }

  @Override
  public Admin getAdmin() throws IOException {
    return null;
  }

  @Override
  public void close() throws IOException {
    if (!this.closed) this.closed = true;
  }

  @Override
  public boolean isClosed() {
    return this.closed;
  }

  @Override
  public TableBuilder getTableBuilder(final TableName tn, ExecutorService pool) {
    if (isClosed()) {
      throw new RuntimeException("IndexerConnection is closed.");
    }
    final Configuration passedInConfiguration = getConfiguration();
    return new TableBuilder() {
      @Override
      public TableBuilder setOperationTimeout(int timeout) {
        return null;
      }

      @Override
      public TableBuilder setRpcTimeout(int timeout) {
        return null;
      }

      @Override
      public TableBuilder setReadRpcTimeout(int timeout) {
        return null;
      }

      @Override
      public TableBuilder setWriteRpcTimeout(int timeout) {
        return null;
      }

      @Override
      public Table build() {
        return new Table() {
          private final Configuration conf = passedInConfiguration;
          private final TableName tableName = tn;

          @Override
          public TableName getName() {
            return this.tableName;
          }

          @Override
          public Configuration getConfiguration() {
            return this.conf;
          }

          @Override
          public void batch(List\<? extends Row\> actions, Object[] results)
          throws IOException, InterruptedException {
            // Implementation goes here.
          }

          @Override
          public HTableDescriptor getTableDescriptor() throws IOException {
            return null;
          }

          @Override
          public TableDescriptor getDescriptor() throws IOException {
            return null;
          }

          @Override
          public boolean exists(Get get) throws IOException {
            return false;
          }

          @Override
          public boolean[] existsAll(List\<Get\> gets) throws IOException {
            return new boolean[0];
          }

          @Override
          public \<R\> void batchCallback(List\<? extends Row\> actions, Object[] results, Batch.Callback\<R\> callback) throws IOException, InterruptedException {

          }

          @Override
          public Result get(Get get) throws IOException {
            return null;
          }

          @Override
          public Result[] get(List\<Get\> gets) throws IOException {
            return new Result[0];
          }

          @Override
          public ResultScanner getScanner(Scan scan) throws IOException {
            return null;
          }

          @Override
          public ResultScanner getScanner(byte[] family) throws IOException {
            return null;
          }

          @Override
          public ResultScanner getScanner(byte[] family, byte[] qualifier) throws IOException {
            return null;
          }

          @Override
          public void put(Put put) throws IOException {

          }

          @Override
          public void put(List\<Put\> puts) throws IOException {

          }

          @Override
          public boolean checkAndPut(byte[] row, byte[] family, byte[] qualifier, byte[] value, Put put) throws IOException {
            return false;
          }

          @Override
          public boolean checkAndPut(byte[] row, byte[] family, byte[] qualifier, CompareFilter.CompareOp compareOp, byte[] value, Put put) throws IOException {
            return false;
          }

          @Override
          public boolean checkAndPut(byte[] row, byte[] family, byte[] qualifier, CompareOperator op, byte[] value, Put put) throws IOException {
            return false;
          }

          @Override
          public void delete(Delete delete) throws IOException {

          }

          @Override
          public void delete(List\<Delete\> deletes) throws IOException {

          }

          @Override
          public boolean checkAndDelete(byte[] row, byte[] family, byte[] qualifier, byte[] value, Delete delete) throws IOException {
            return false;
          }

          @Override
          public boolean checkAndDelete(byte[] row, byte[] family, byte[] qualifier, CompareFilter.CompareOp compareOp, byte[] value, Delete delete) throws IOException {
            return false;
          }

          @Override
          public boolean checkAndDelete(byte[] row, byte[] family, byte[] qualifier, CompareOperator op, byte[] value, Delete delete) throws IOException {
            return false;
          }

          @Override
          public void mutateRow(RowMutations rm) throws IOException {

          }

          @Override
          public Result append(Append append) throws IOException {
            return null;
          }

          @Override
          public Result increment(Increment increment) throws IOException {
            return null;
          }

          @Override
          public long incrementColumnValue(byte[] row, byte[] family, byte[] qualifier, long amount) throws IOException {
            return 0;
          }

          @Override
          public long incrementColumnValue(byte[] row, byte[] family, byte[] qualifier, long amount, Durability durability) throws IOException {
            return 0;
          }

          @Override
          public void close() throws IOException {

          }

          @Override
          public CoprocessorRpcChannel coprocessorService(byte[] row) {
            return null;
          }

          @Override
          public \<T extends Service, R\> Map\<byte[], R\> coprocessorService(Class\<T\> service, byte[] startKey, byte[] endKey, Batch.Call\<T, R\> callable) throws ServiceException, Throwable {
            return null;
          }

          @Override
          public \<T extends Service, R\> void coprocessorService(Class\<T\> service, byte[] startKey, byte[] endKey, Batch.Call\<T, R\> callable, Batch.Callback\<R\> callback) throws ServiceException, Throwable {

          }

          @Override
          public \<R extends Message\> Map\<byte[], R\> batchCoprocessorService(Descriptors.MethodDescriptor methodDescriptor, Message request, byte[] startKey, byte[] endKey, R responsePrototype) throws ServiceException, Throwable {
            return null;
          }

          @Override
          public \<R extends Message\> void batchCoprocessorService(Descriptors.MethodDescriptor methodDescriptor, Message request, byte[] startKey, byte[] endKey, R responsePrototype, Batch.Callback\<R\> callback) throws ServiceException, Throwable {

          }

          @Override
          public boolean checkAndMutate(byte[] row, byte[] family, byte[] qualifier, CompareFilter.CompareOp compareOp, byte[] value, RowMutations mutation) throws IOException {
            return false;
          }

          @Override
          public boolean checkAndMutate(byte[] row, byte[] family, byte[] qualifier, CompareOperator op, byte[] value, RowMutations mutation) throws IOException {
            return false;
          }

          @Override
          public void setOperationTimeout(int operationTimeout) {

          }

          @Override
          public int getOperationTimeout() {
            return 0;
          }

          @Override
          public int getRpcTimeout() {
            return 0;
          }

          @Override
          public void setRpcTimeout(int rpcTimeout) {

          }

          @Override
          public int getReadRpcTimeout() {
            return 0;
          }

          @Override
          public void setReadRpcTimeout(int readRpcTimeout) {

          }

          @Override
          public int getWriteRpcTimeout() {
            return 0;
          }

          @Override
          public void setWriteRpcTimeout(int writeRpcTimeout) {

          }
        };
      }
    };
  }
}
{code}


---

* [HBASE-19049](https://issues.apache.org/jira/browse/HBASE-19049) | *Major* | **Update kerby to 1.0.1 GA release**

HBase now relies on Kerby version 1.0.1 for its test environment. No downstream facing change is expected.


---

* [HBASE-19021](https://issues.apache.org/jira/browse/HBASE-19021) | *Critical* | **Restore a few important missing logics for balancer in 2.0**

Re-enabled 'hbase.master.loadbalance.bytable', default 'false'.
Draining servers are removed from consideration by blancer.balanceCluster() call.


---

* [HBASE-19077](https://issues.apache.org/jira/browse/HBASE-19077) | *Critical* | **Have Region\*CoprocessorEnvironment provide an ImmutableOnlineRegions**

Adds getOnlineRegions to the RegionCoprocessorEnvironment (Context) and ditto to RegionServerCoprocessorEnvironment. Allows Coprocessor get list of Regions online on the currently hosting RegionServer.


---

* [HBASE-18410](https://issues.apache.org/jira/browse/HBASE-18410) | *Major* | **FilterList  Improvement.**

In this task, we fixed all existing bugs in FilterList, and did the code refactor which ensured interface compatibility .  

The primary bug  fixes are : 
1. For sub-filter in FilterList with MUST\_PASS\_ONE, if previous filterKeyValue() of sub-filter returns NEXT\_COL, we cannot make sure that the next cell will be the first cell in next column, because FilterList choose the minimal forward step among sub-filters, and it may return a SKIP. so here we add an extra check to ensure that the next cell will match preivous return code for sub-filters. 
2. Previous logic about transforming cell of FilterList is incorrect, we should set the previous transform result (rather than the given cell in question) as the initial vaule of transform cell before call filterKeyValue() of FilterList.
3. Handle the ReturnCodes which the previous code did not handle. 

About code refactor, we divided the FilterList into two separated sub-classes: FilterListWithOR and FilterListWithAND,  The FilterListWithOR has been optimised to choose the next minimal step to seek cell rather than SKIP cell one by one, and the FilterListWithAND  has been optimised to choose the next maximal key to seek among sub-filters in filter list. All in all, The code in FilterList is clean and easier to follow now.

Note that ReturnCode NEXT\_ROW has been redefined as skipping to next row in current family,   not to next row in all family. it’s more reasonable, because ReturnCode is a concept in store level, not in region level.

Another bug that needs attention is: filterAllRemaining() in FilterList with MUST\_PASS\_ONE  will now return false if the filter list is empty whereas earlier it used to return true for Operator.MUST\_PASS\_ONE.  it's more reasonable now.


---

* [HBASE-19029](https://issues.apache.org/jira/browse/HBASE-19029) | *Critical* | **Align RPC timout methods in Table and AsyncTableBase**

Deprecate the following methods in Table:
- int getRpcTimeout()
- int getReadRpcTimeout()
- int getWriteRpcTimeout()
- int getOperationTimeout()

Add the following methods to Table:
- long getRpcTimeout(TimeUnit)
- long getReadRpcTimeout(TimeUnit)
- long getWriteRpcTimeout(TimeUnit)
- long getOperationTimeout(TimeUnit)

Add missing deprecation tag for long getRpcTimeout(TimeUnit unit) in AsyncTableBase


---

* [HBASE-18994](https://issues.apache.org/jira/browse/HBASE-18994) | *Major* | **Decide if META/System tables should use Compacting Memstore or Default Memstore**

Added a new config 'hbase.systemtables.compacting.memstore.type"  for the system tables. By default all the system tables will have 'NONE' as the type and so it will be using the default memstore by default.
{code}
 \<property\>
    \<name\>hbase.systemtables.compacting.memstore.type\</name\>
    \<value\>NONE\</value\>
  \</property\>
{code}


---

* [HBASE-19048](https://issues.apache.org/jira/browse/HBASE-19048) | *Major* | **Cleanup MasterObserver hooks which takes IA private params**

Purged InterfaceAudience.Private parameters from methods in MasterObserver.

preAbortProcedure no longer takes a ProcedureExecutor.

postGetProcedures no longer takes a list of Procedures.

postGetLocks no longer takes a list of locks.

preRequestLock and postRequestLock no longer take lock type.

preLockHeartbeat and postLockHeartbeat no longer takes a lock procedure.

The implication is that that the Coprocessors that depended on these params have had to coarsen so for example, the AccessController can not do access per Procedure or Lock but rather, makes a judgement on the general access (You'll need to be ADMIN to see list of procedures and locks).


---

* [HBASE-18905](https://issues.apache.org/jira/browse/HBASE-18905) | *Major* | **Allow CPs to request flush on Region and know the completion of the requested flush**

Add a FlushLifeCycleTracker which is similiar to CompactionLifeCycleTracker for tracking flush.
Add a requestFlush method in Region interface to let CP users request flush on a region. The operation is asynchronous, you need to use the FlushLifeCycleTracker to track the flush.
The difference with CompactionLifeCycleTracker is that, flush is per region so we do not use Store as a parameter of the methods. And also, notExecuted means the whole flush has not been executed, and afterExecution means the whole flush has been finished, so we do not have a separated completed method. A flush will be ended either by notExecuted or afterExecution.


---

* [HBASE-18906](https://issues.apache.org/jira/browse/HBASE-18906) | *Critical* | **Provide Region#waitForFlushes API**

Provided an API in Region (Exposed to CPs)
boolean waitForFlushes(long timeout)
This call will make the current thread to be waiting for all flushes in this region to be finished.  (Upto the time out time being specified). The boolean return value specify whether the flushes are really over or the time out being elapsed. Return false when timeout elapsed but flushes are not over or  true when flushes are over


---

* [HBASE-18995](https://issues.apache.org/jira/browse/HBASE-18995) | *Critical* | **Move methods that are for internal usage from CellUtil to Private util class**

Split CellUtil into public CellUtil and PrivateCellUtil for Internal use only.


---

* [HBASE-19047](https://issues.apache.org/jira/browse/HBASE-19047) | *Critical* | **CP exposed Scanner types should not extend Shipper**

RegionObserver#preScannerOpen signature changed
RegionScanner preScannerOpen( ObserverContext\<RegionCoprocessorEnvironment\> c, Scan scan,  RegionScanner s)   -\>   void preScannerOpen( ObserverContext\<RegionCoprocessorEnvironment\> c, Scan scan)  
The pre hook can no longer return a RegionScanner instance.


---

* [HBASE-19110](https://issues.apache.org/jira/browse/HBASE-19110) | *Minor* | **Add default for Server#isStopping & #getFileSystem**

Made defaults for Server#isStopping and Server#getFileSystem. Should have done this when I added them (lesson learned, was actually mentioned in a review).


---

* [HBASE-19033](https://issues.apache.org/jira/browse/HBASE-19033) | *Blocker* | **Allow CP users to change versions and TTL before opening StoreScanner**

Add back the three methods without a return value:
preFlushScannerOpen
preCompactScannerOpen
preStoreScannerOpen

Introduce a ScanOptions interface to let CP users change the max versions and TTL of a ScanInfo. It will be passed as a parameter in the three methods above.

Inntroduce a new example WriteHeavyIncrementObserver which convert increment to put and do aggregating when get. It uses the above three methods.


---

* [HBASE-18770](https://issues.apache.org/jira/browse/HBASE-18770) | *Critical* | **Remove bypass method in ObserverContext and implement the 'bypass' logic case by case**

Removes blanket bypass mechanism (Observer#bypass). Instead, a curated subset of methods are bypassable.

    Changes Coprocessor ObserverContext 'bypass' semantic. We flip the
    default so bypass is NOT supported on Observer invocations; only a
    couple of preXXX methods in RegionObserver allow it: e.g.  preGet
    and prePut but not preFlush, etc. Everywhere else, we throw
    a Exception if a Coprocessor Observer tries to invoke bypass. Master
    Observers can no longer stop or change move, split, assign, create table, etc.
    preBatchMutate can no longer be bypassed (bypass the finer-grained
    prePut, preDelete, etc. instead)

    Ditto on complete, the mechanism that allowed a Coprocessor
    rule that all subsequent Coprocessors are skipped in an
    invocation chain; now, complete is only available to
    bypassable methods (and Coprocessors will get an exception if
    they try to 'complete' when it is not allowed).

    See javadoc for whether a Coprocessor Observer method supports
    'bypass'. If no mention, 'bypass' is NOT supported.

The below methods have been marked deprecated in hbase2. We would have liked to have removed them because they use IA.Private parameters but they are in use by CoreCoprocessors or are critical to downstreamers and we have no alternatives to provide currently.

@Deprecated public boolean prePrepareTimeStampForDeleteVersion(final Mutation mutation, final Cell kv, final byte[] byteNow, final Get get) throws IOException {
              
@Deprecated public boolean preWALRestore(final RegionInfo info, final WALKey logKey, final WALEdit logEdit) throws IOException {

@Deprecated public void postWALRestore(final RegionInfo info, final WALKey logKey, final WALEdit logEdit) throws IOException {
       
@Deprecated public DeleteTracker postInstantiateDeleteTracker(DeleteTracker result) throws IOException 

Metrics are updated now even if the Coprocessor does a bypass; e.g. The put count is updated even if a Coprocessor bypasses the core put operation (We do it this way so no need for Coprocessors to have access to our core metrics system).



