
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
# Apache HBase  2.0.0-alpha-3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-18630](https://issues.apache.org/jira/browse/HBASE-18630) | *Major* | **Prune dependencies; as is branch-2 has duplicates**

Removed doubled instances of javax.inject and commons-beanutils where the versions were close.

Other instances of 'double' includes have different groupids so wary pruning especially when transitive includes (hadoop or jetty et al.)


---

* [HBASE-18653](https://issues.apache.org/jira/browse/HBASE-18653) | *Major* | **Undo hbase2 check against \< hadoop2.6.x; i.e. implement agreed drop of hadoop 2.4 and 2.5 support in hbase2**

Change the yetus profile for branch-2 so it no longer runs hadoop 2.4.x and 2.5.x build checks.


---

* [HBASE-17442](https://issues.apache.org/jira/browse/HBASE-17442) | *Critical* | **Move most of the replication related classes from hbase-client to hbase-replication package**

Move replication implementation's classes from hbase-client to hbase-replication package.


---

* [HBASE-18224](https://issues.apache.org/jira/browse/HBASE-18224) | *Critical* | **Upgrade jetty**

Moved from Jetty 9.3.x to 9.4.x.

Jetty returns more correct HTTP code when Header is too long, 431 instead of 413, and it requires more threads to start up (made default 16 instead of 10).


---

* [HBASE-18347](https://issues.apache.org/jira/browse/HBASE-18347) | *Major* | **Implement a BufferedMutator for async client**

Introduce an AsyncBufferedMutator for batching requests to HBase for a single table.

Use AsyncConnection.getBufferedMutator method to get an AsyncBufferedMutator instance.


---

* [HBASE-15982](https://issues.apache.org/jira/browse/HBASE-15982) | *Blocker* | **Interface ReplicationEndpoint extends Guava's Service**

    Breaking change to our ReplicationEndpoint and BaseReplicationEndpoint.

    ReplicationEndpoint implemented Guava 0.12 Service. An abstract
    subclass, BaseReplicationEndpoint, provided default implementations
    and facility, among other things, by extending Guava's
    AbstractService class.

    Both of these HBase classes were marked LimitedPrivate for
    REPLICATION so these classes were semi-public and made it so
    Guava 0.12 was part of our API.

    Having Guava in our API was a mistake. It anchors us and the
    implementation of the Interface to Guava 0.12. This is untenable
    given Guava changes and that the Service Interface in particular
    has had extensive revamp and improvement done. We can't hold to
    the Guava Interface. It changed. We can't stay on Guava 0.12;
    implementors and others on our CLASSPATH won't abide being stuck
    on an old Guava.

    So we make breaking changes. The unhitching of our Interface
    from Guava could only be done in a breaking manner. It undoes the
    LimitedPrivate on BaseReplicationEndpoint while keeping it for the RE
    Interface. It means consumers will have to copy/paste the
    AbstractService-based BRE into their own codebase also supplying their
    own Guava; HBase no longer 'supplies' this (our Guava usage has
    been internalized, relocated).

    This patch then adds into RE the basic methods RE needs of the old
    Guava Service rather than return a Service to start/stop only to go
    back to the RE instance to do actual work. A few method names had to
    be changed so could make implementations with Guava Service internally
    and not have RE method names and types clash). Semantics remained the
    same otherwise. For example startAsync and stopAsync in Guava are start
    and stop in RE.


---

* [HBASE-18658](https://issues.apache.org/jira/browse/HBASE-18658) | *Major* | **Purge hokey hbase Service implementation; use (internal) Guava Service instead**

Removed hbase Service class. It was not fully-formed. Now Guava is relocated, use its Service instead internally; it has nice implementation facility too in AbstractService.


---

* [HBASE-18448](https://issues.apache.org/jira/browse/HBASE-18448) | *Minor* | **EndPoint example  for refreshing HFiles for stores**

Adds a new RefreshHFiles Coprocessor Endpoint example. Includes client and serverside-endpoint that iterates region Stores to call #refreshStoreFiles.


---

* [HBASE-18640](https://issues.apache.org/jira/browse/HBASE-18640) | *Major* | **Move mapreduce out of hbase-server into separate hbase-mapreduce module**

- Moves all org.apache.hadoop.hbase.mapreduce.\* (except LoadIncrementalHFiles) and org.apache.hadoop.hbase.mapred.\* classes from hbase-server module to new hbase-mapreduce module.
- Also moves following tools from hbase-server module to hbase-mapreduce module: CompactionTool, ExportSnapshot, PerformanceEvaluation, LoadTestTool
- Very minor breakages in  LoadTestTool(LimitedPrivate HBaseInterfaceAudience.TOOLS)


---

* [HBASE-3935](https://issues.apache.org/jira/browse/HBASE-3935) | *Major* | **HServerLoad.storefileIndexSizeMB should be changed to storefileIndexSizeKB**

This patch removed the storefile\_index\_size\_MB in protobuf. It will cause the value of storefile\_index\_size\_MB is zero if user still use hbase-client 1.x.


---

* [HBASE-18665](https://issues.apache.org/jira/browse/HBASE-18665) | *Critical* | **ReversedScannerCallable invokes getRegionLocations incorrectly**

Performing reverse scan on tables used the meta cache incorrectly and fetched data from meta table every time. This fix solves this issue and which results in performance improvement for reverse scans.


---

* [HBASE-18577](https://issues.apache.org/jira/browse/HBASE-18577) | *Critical* | **shaded client includes several non-relocated third party dependencies**

<!-- markdown -->

The HBase shaded artifacts (hbase-shaded-client and hbase-shaded-server) no longer contain several non-relocated third party dependency classes that were mistakenly included. Downstream users who relied on these classes being present will need to add a runtime dependency onto an appropriate third party artifact.

Previously, we erroneously packaged several third party libs without relocating them. In some cases these libraries have now been relocated; in some cases they are no longer included at all.

Includes:

* jaxb
* jetty
* jersey
* codahale metrics (HBase 1.4+ only)
* commons-crypto
* jets3t
* junit
* curator (HBase 1.4+)
* netty 3 (HBase 1.1)
* mokito-junit4 (HBase 1.1)

There is now testing to ensure that the shaded artifacts only contain expected relocated content. It can be run via `mvn -Dtest=noUnitTests -pl hbase-shaded/hbase-shaded-check-invariants -am -Prelease verify`.

For version 2.0+ this patch removes hadoop-mapreduce-client-core from the set of dependencies included for the hbase-client and hbase-shaded-client artifacts.

For 2.0+, the slf4j-log4j12 dependency is now optional for both shaded artifacts.


---

* [HBASE-18675](https://issues.apache.org/jira/browse/HBASE-18675) | *Minor* | **Making {max,min}SessionTimeout configurable for MiniZooKeeperCluster**

<!-- markdown -->

Standalone clusters and minicluster instances can now configure the session timeout for our embedded ZooKeeper quorum using `hbase.zookeeper.property.minSessionTimeout` and `hbase.zookeeper.property.maxSessionTimeout`.


---

* [HBASE-18739](https://issues.apache.org/jira/browse/HBASE-18739) | *Major* | **Make all TimeRange Constructors InterfaceAudience Private.**

All constructors have already been deprecated. This change makes them InterfaceAudience Private.


---

* [HBASE-18699](https://issues.apache.org/jira/browse/HBASE-18699) | *Major* | **Copy LoadIncrementalHFiles to another package and mark the old one as deprecated**

Introduce a new o.a.h.h.tool.LoadIncrementalHFiles. The old o.a.h.h.mapreduce.LoadIncrementalHFiles is deprecated and will be removed in 3.0.0.


---

* [HBASE-18736](https://issues.apache.org/jira/browse/HBASE-18736) | *Major* | **Cleanup the HTD/HCD for Admin**

Changed the passed arguments from HTD/HCD to TD/CFD for Admin.


---

* [HBASE-15607](https://issues.apache.org/jira/browse/HBASE-15607) | *Blocker* | **Remove PB references from Admin for 2.0**

All the references to Protos in Admin.java have been removed and replaced with respective POJO classes. 
The references to Protos that were removed are
AdminProtos.GetRegionInfoResponse,
HBaseProtos.SnapshotDescription, HBaseProtos.SnapshotDescription.Type,
 MasterProtos.SnapshotResponse.
CompactionType, CompactionState and MasterSwitchType Enums have been moved out of Admin.java to standalone Enums.


---

* [HBASE-18697](https://issues.apache.org/jira/browse/HBASE-18697) | *Major* | **Need a shaded hbase-mapreduce module**

Replaces hbase-shaded-server-\<version\>.jar with hbase-shaded-mapreduce-\<version\>.jar.


---

* [HBASE-18704](https://issues.apache.org/jira/browse/HBASE-18704) | *Major* | **Upgrade hbase to commons-collections 4**

**WARNING: No release note provided for this change.**


---

* [HBASE-17972](https://issues.apache.org/jira/browse/HBASE-17972) | *Minor* | **Remove mergePool from CompactSplitThread**

After this jira, mergePool will be permanently removed from CompactSplitThread.


---

* [HBASE-14997](https://issues.apache.org/jira/browse/HBASE-14997) | *Critical* | **Move compareOp and Comparators out of filter to client package**

Deprecate checkAnd\* APIs that take the filter CompareOp. Added new overrides that take a generic CompareOperator instead. CompareOperator will be used by checkAnd\* in Table API and by filters going forward.

Other nice improvements suggested by this issue have been moved out to HBASE-18774.


---

* [HBASE-18780](https://issues.apache.org/jira/browse/HBASE-18780) | *Minor* | **Remove HLogPrettyPrinter and hlog command**

**WARNING: No release note provided for this change.**


---

* [HBASE-18106](https://issues.apache.org/jira/browse/HBASE-18106) | *Critical* | **Redo ProcedureInfo and LockInfo**

Admin.listProcedures and Admin.listLocks were renamed to getProcedures and getLocks (listProcedures was added to hbase 1.2). This change was done in an incompatible way -- we just yanked listProcedures (Because Admin Interface is not compatible with hbase1).

    Main changes:
    - ProcedureInfo and LockInfo were removed, we use JSON instead of them
    - Procedure and LockedResource are their server side equivalent
    - Procedure protobuf state\_data became obsolate, it is only kept for
      reading previously written WAL
    - Procedure protobuf contains a state\_message field, which stores the internal
      state messages (Any type instead of bytes)
    - Procedure.serializeStateData and deserializeStateData were changed slightly
    - Procedures internal states are available on client side
    - Procedures are displayed on web UI and in shell in the following jruby format:
      { ID =\> '1', PARENT\_ID = '-1', PARAMETERS =\> [ ..extra state information.. ] }


---

* [HBASE-18783](https://issues.apache.org/jira/browse/HBASE-18783) | *Minor* | **Declare the builder of ClusterStatus as IA.Private, and remove the Writables from ClusterStatus**

**WARNING: No release note provided for this change.**


---

* [HBASE-10240](https://issues.apache.org/jira/browse/HBASE-10240) | *Critical* | **Remove 0.94-\>0.96 migration code**

Purge 0.94=\>0.96 deprecated, migration code. This means that if you are on 0.94 and wish to go to hbase 2.0, you must first migrate to a version of hbase that is \>= 0.96.


---

* [HBASE-16479](https://issues.apache.org/jira/browse/HBASE-16479) | *Major* | **Move WALEdit from hbase.regionserver.wal package to hbase.wal package**

Incompatible move of WALEdit class from regionserver.wal to wal. Effects @InterfaceAudience.LimitedPrivate({ HBaseInterfaceAudience.REPLICATION,
    HBaseInterfaceAudience.COPROC })

(


---

* [HBASE-13271](https://issues.apache.org/jira/browse/HBASE-13271) | *Critical* | **Table#puts(List\<Put\>) operation is indeterminate; needs fixing**

Adds more spec on how Get, Delete, and Put work and how they differ to help the user.


---

* [HBASE-18733](https://issues.apache.org/jira/browse/HBASE-18733) | *Major* | **[compat 1-2] Hide WALKey**

WALKey, @InterfaceAudience.LimitedPrivate(HBaseInterfaceAudience.REPLICATION), changed a bunch for 2.0.0. See below. We figured it ok hiding it since it should be internals anyway -- only we should be making them.


---

* [HBASE-18793](https://issues.apache.org/jira/browse/HBASE-18793) | *Major* | **Remove deprecated methods in RegionObserver**

These deprecated methods are removed from RegionObserver:
InternalScanner preFlushScannerOpen(ObserverContext, Store, List, InternalScanner) throws IOException;
void preCompactSelection(ObserverContext, Store, List) throws IOException;
void postCompactSelection(ObserverContext, Store, ImmutableList);
InternalScanner preCompact(ObserverContext, Store, InternalScanner, ScanType) throws IOException;
InternalScanner preCompactScannerOpen(ObserverContext, Store, List, ScanType, long, InternalScanner, CompactionRequest) throws IOException;
InternalScanner preCompactScannerOpen( ObserverContext, Store store, List, ScanType, long, InternalScanner) throws IOException;
void preSplit(ObserverContext) throws IOException;
void preSplit(ObserverContext, byte[]) throws IOException;
void postSplit(ObserverContext, Region, Region) throws IOException;
void preSplitBeforePONR(ObserverContext, byte[], List) throws IOException;
void preSplitAfterPONR(ObserverContext) throws IOException;
void preRollBackSplit(ObserverContext) throws IOException;
void postRollBackSplit(ObserverContext) throws IOException;
void postCompleteSplit(ObserverContext) throws IOException;
long preIncrementColumnValue(ObserverContext, byte[], byte[], byte[], long, boolean) throws IOException;
long postIncrementColumnValue(ObserverContextc, byte[], byte[], byte[], long, boolean, long) throws IOException;
KeyValueScanner preStoreScannerOpen(ObserverContext, Store, Scan, NavigableSet, KeyValueScanner) throws IOException;
boolean postScannerFilterRow(ObserverContext, InternalScanner, byte[], int, short, boolean) throws IOException;
boolean postBulkLoadHFile(ObserverContext, List, boolean) throws IOException;

And this method is also removed since we never call it in our code base:
InternalScanner preFlushScannerOpen(ObserverContext, Store, KeyValueScanner, InternalScanner, long) throws IOException;

The deprecated annotation is removed for these two methods as they are still being used:
void preFlush(ObserverContext) throws IOException;
void postFlush(ObserverContextc) throws IOException;


---

* [HBASE-17823](https://issues.apache.org/jira/browse/HBASE-17823) | *Major* | **Migrate to Apache Yetus Audience Annotations**

HBase now uses stability and audience annotations sourced from Apache Yetus, instead of the custom annotations that were previously in place.


---

* [HBASE-18723](https://issues.apache.org/jira/browse/HBASE-18723) | *Major* | **[pom cleanup] Do a pass with dependency:analyze; remove unused and explicity list the dependencies we exploit**

Purged a bunch of dependencies included but unused. Added reference to dependencies we do use but did not list (transitively included). Purged all but junit from parent pom dependency set and did explicit include in modules instead; not all modules need mockito, etc. Still work to do: grey area around hadoop and its transitive includes need cleanup still to make the  dependency:analyze runs clean. Also figure how to purge junit from parent dependency list.


---

* [HBASE-14998](https://issues.apache.org/jira/browse/HBASE-14998) | *Blocker* | **Unify synchronous and asynchronous methods in Admin and cleanup**

 \* Deprecates getAlterStatus. Everywhere else we talk of 'modify' rather
       'alter' and should use Future returned from async instead.
 \* isTableAvailable(TableName, byte [][]) has been deprecated to be
       removed; use the overrie instead. This is a weird method.
 \* Changed listTableDescriptor to getDescriptor.
 \* Renamed other like methods to have same pattern (deprecating the old):
        balancer =\> balance
        setBalancerRunning =\> balancerSwitch
        setNormalizerRunning =\> normalizerSwitch
        enableCatalogJanitor =\> catalogJanitorSwitch
        setCleanerChoreRunning =\> cleanerChoreSwitch
        setSplitOrMergeEnabled =\> splitOrMergeEnabledSwitch

 \* Renamed (with deprecation of old) runCatalogScan =\> runCatalogJanitor.
 \* Reviewed generated javadoc and made some edits; purged reference to
       hbase issues from our API, fixed param names, etc.
 \* Made all the enable services methods have same pattern.
 \* Renamed takeSnapshotAsync as snapshotAsync (with deprecation of old)
 \* Renamed execProcedureWithRet as execProcedureWithReturn (with
       deprecation)


---

* [HBASE-18453](https://issues.apache.org/jira/browse/HBASE-18453) | *Major* | **CompactionRequest should not be exposed to user directly**

Introduce a CompactionLifeCycleTracker to let the CP users know when the compaction starts and ends. CompactionRequest is marked as IA.Private and should be used in CP implementation any more.


---

* [HBASE-18683](https://issues.apache.org/jira/browse/HBASE-18683) | *Major* | **Upgrade hbase to commons-math 3**

Moved on to commons-math3. Removed commons-math2.


---

* [HBASE-18819](https://issues.apache.org/jira/browse/HBASE-18819) | *Major* | **Set version number to 2.0.0-alpha3 from 2.0.0-alpha3-SNAPSHOT**

Set version on branch-2 to be 2.0.0-alpha3 as part of RC making.


---

* [HBASE-17980](https://issues.apache.org/jira/browse/HBASE-17980) | *Major* | **Any HRegionInfo we give out should be immutable**

Provide alternate user-facing API that takes a RegionInfo Interface instead of a HRegionInfo; the old HRegionInfo methods have been deprecated in 2.0.0 and will be removed in 3.0.0.



