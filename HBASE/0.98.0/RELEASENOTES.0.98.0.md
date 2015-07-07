# Apache HBase  0.98.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-10470](https://issues.apache.org/jira/browse/HBASE-10470) | *Critical* | **Import generates huge log file while importing large amounts of data**

Committed to 0.94 and 0.96 as well.


---

* [HBASE-10422](https://issues.apache.org/jira/browse/HBASE-10422) | *Major* | **ZeroCopyLiteralByteString.zeroCopyGetBytes has an unusable prototype and conflicts with AsyncHBase**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-10416](https://issues.apache.org/jira/browse/HBASE-10416) | *Major* | **Improvements to the import flow**

Import with this fix supports 

a) Filtering of the row using the Filter#filterRowKey(byte[] buffer, int offset, int length).

b) Accepts durability parameter (Ex: -Dimport.wal.durability=SKIP\_WAL ) while importing the data into HBase. If the data doesn't need to be replicated to the DR cluster or if the same import job would be run on the DR cluster, consider using SKIP\_WAL durability for performance.


---

* [HBASE-10366](https://issues.apache.org/jira/browse/HBASE-10366) | *Critical* | **0.94 filterRow() may be skipped in 0.96(or onwards) code**

Thanks for the reviews! I've integrated the v1 patch into trunk, 0.98 & 0.96 branches.


---

* [HBASE-10326](https://issues.apache.org/jira/browse/HBASE-10326) | *Critical* | **Super user should be able scan all the cells irrespective of the visibility labels**

HBase super user can (any user who is having system visibility label) read back all the cells irrespective of visibility expression applied for cells.


---

* [HBASE-10324](https://issues.apache.org/jira/browse/HBASE-10324) | *Major* | **refactor deferred-log-flush/Durability related interface/code/naming to align with changed semantic of the new write thread model**

In HTableDescriptor, isDeferredLogFlush() and setDeferredLogFlush() are replaced by isAsyncLogFlush() and setAsyncLogFlush(), respectively.


---

* [HBASE-10322](https://issues.apache.org/jira/browse/HBASE-10322) | *Blocker* | **Strip tags from KV while sending back to client on reads**

Added a new config hbase.replication.rpc.codec, using which one can specify the codec to be used by the replication. This config don't have a default value. When it is not specified, the codec specified by hbase.client.rpc.codec config will be used for replication.(For which org.apache.hadoop.hbase.codec.KeyValueCodec is the default value)

Note : When using tags directly or indirectly (ie. Usage of cell level visibility labels or per cell ACL) make sure to configure hbase.replication.rpc.codec with a Codec which supports shipping of tags. We have org.apache.hadoop.hbase.codec.KeyValueCodecWithTags  and org.apache.hadoop.hbase.codec.CellCodecWithTags, which can handle tags.


---

* [HBASE-10321](https://issues.apache.org/jira/browse/HBASE-10321) | *Blocker* | **CellCodec has broken the 96 client to 98 server compatibility**

A new Codec CellCodecV2 is added which can do all the work of CellCodec plus writing/reading Tags. CellCodec will not be able to handle tags. When one wants to use CellCodec and tags need to use CellCodecV2.


---

* [HBASE-10304](https://issues.apache.org/jira/browse/HBASE-10304) | *Blocker* | **Running an hbase job jar: IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString**

My local site run generates the docbook correctly, looks good to me on both branches. I've committed this to 0.98 and trunk.


---

* [HBASE-10263](https://issues.apache.org/jira/browse/HBASE-10263) | *Major* | **make LruBlockCache single/multi/in-memory ratio user-configurable and provide preemptive mode for in-memory type block**

4 new configurations are introduced:
hbase.lru.blockcache.single.percentage / hbase.lru.blockcache.multi.percentage / hbase.lru.blockcache.memory.percentage / hbase.lru.rs.inmemoryforcemode
the first 3 enable user to config different single/multi/memory ratio in block cache; the last one determines if preemptive mode for memory block is enabled


---

* [HBASE-10249](https://issues.apache.org/jira/browse/HBASE-10249) | *Major* | **TestReplicationSyncUpTool fails because failover takes too long**

This change also fixes a potential data loss issue when using ZK multi actions because region servers could try to failover themselves (the replication sync up tool acts as a RS too)


---

* [HBASE-10225](https://issues.apache.org/jira/browse/HBASE-10225) | *Major* | **Bug in calls to RegionObsever.postScannerFilterRow**

This fix breaks src compatibility. If users try recompiling their CP impl with new HBase jar, they MAY have to change. (If they have overridden this method)
This does not break binary compatibility


---

* [HBASE-10164](https://issues.apache.org/jira/browse/HBASE-10164) | *Major* | **Allow heapsize of different units to be passed as HBASE\_HEAPSIZE**

HBASE\_HEAPSIZE accepts input with units (m, M, g, G).
If there is no unit, an 'm' would be appended to the value - keeping backward compatibility.


---

* [HBASE-10157](https://issues.apache.org/jira/browse/HBASE-10157) | *Major* | **Provide CP hook post log replay**

A CP hook (postLogReplay) is added which will be called once distributed log replay on a region is getting over. Please remember that when distributed log replay is not enabled or there is nothing to be replayed for a region, this hook will not get called for that region.


---

* [HBASE-10116](https://issues.apache.org/jira/browse/HBASE-10116) | *Minor* | **SlabCache metrics improvements**

This change introduces DirectMemory reporting to the RegionServer status page. Oracle JDK6 (1.6.0\_31 in my test) doesn't expose "java.nio:type=BufferPool,name=direct", so DirectMemoryUtils#getDirectMemoryUsage (and thus the change to rs-status#memoryStats) reports 0 on that environment, even when DirectMemory is being consumed.


---

* [HBASE-10114](https://issues.apache.org/jira/browse/HBASE-10114) | *Major* | **\_scan\_internal() in table.rb should accept argument that specifies reverse scan**

HBase shell supports Reversed Scan.
User can specify REVERSED => true along with other scan parameters.


---

* [HBASE-10073](https://issues.apache.org/jira/browse/HBASE-10073) | *Major* | **Revert HBASE-9718 (Add a test scope dependency on org.slf4j:slf4j-api to hbase-client)**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-10010](https://issues.apache.org/jira/browse/HBASE-10010) | *Major* | **eliminate the put latency spike on the new log file beginning**

Forward port of a 0.89fb patch where we issue sync on WAL file construction to force immediate setup of write pipeline (and do it outside of locks so don't hold up writes during setup).


---

* [HBASE-10001](https://issues.apache.org/jira/browse/HBASE-10001) | *Minor* | **Add a coprocessor to help testing the performances without taking into account the i/o**

New coprocessor to help analysing the performances of the cluster. This coprocessor drops all the writes on the server side, allowing the measure the client and network performances without any limitation on the disk i/o. For a table created like this: create 'usertable', {NAME => 'f1', VERSIONS => 1}  . You can then add the coprocessor with this command:
alter 'usertable', 'coprocessor' => '|org.apache.hadoop.hbase.tool.WriteSinkCoprocessor|'


---

* [HBASE-9985](https://issues.apache.org/jira/browse/HBASE-9985) | *Minor* | **Add HBase shell command to start/stop tracing**

Adds new trace 'start', trace 'status', and trace 'stop' commands to shell.


---

* [HBASE-9973](https://issues.apache.org/jira/browse/HBASE-9973) | *Major* | **[ACL]: Users with 'Admin' ACL permission will lose permissions after upgrade to 0.96.x from 0.94.x or 0.92.x**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-9961](https://issues.apache.org/jira/browse/HBASE-9961) | *Major* | **[WINDOWS] Multicast should bind to local address**

Clients now bind to multicast address configured as "hbase.status.multicast.bind.address.ip", 0.0.0.0 by default.


---

* [HBASE-9908](https://issues.apache.org/jira/browse/HBASE-9908) | *Major* | **[WINDOWS] Fix filesystem / classloader related unit tests**

Committed this. Thanks Nick for looking.


---

* [HBASE-9902](https://issues.apache.org/jira/browse/HBASE-9902) | *Major* | **Region Server is starting normally even if clock skew is more than default 30 seconds(or any configured). -\> Regionserver node time is greater than master node time**

Clock skew detection to be made absolute value comparison. Any time difference between master or region, high or low must prevent the region server startup


---

* [HBASE-9895](https://issues.apache.org/jira/browse/HBASE-9895) | *Major* | **0.96 Import utility can't import an exported file from 0.94**

To import 0.94 exported file in 0.96 cluster or onwards, you need to set system property "hbase.import.version" when running the import command as below:

./bin/hbase -Dhbase.import.version=0.94 org.apache.hadoop.hbase.mapreduce.Import <table name> <import file folder>


---

* [HBASE-9874](https://issues.apache.org/jira/browse/HBASE-9874) | *Major* | **Append and Increment operation drops Tags**

During Append/Increment operation, new cells will carry tags from old cell as well as tags passed in the cells in Append/Increment. 
A new CP hook is provided which will be called after the new cell is created and before it is getting written to memstore/WAL. A user can use this hook to possibly change the new cell. The above naive merge of tags may result in duplicates. This hook can decide which all tags should go in finally.


---

* [HBASE-9870](https://issues.apache.org/jira/browse/HBASE-9870) | *Major* | **HFileDataBlockEncoderImpl#diskToCacheFormat uses wrong format**

The patch makes sure that data block encoding in cache is always the same as that on disk. It deprecates the column family attribute ENCODE\_ON\_DISK since it doesn't apply any more. HColumnDescriptor#setEncodeOnDisk(boolean) is still there for compatibility issue. However, it doesn't do anything now. HColumnDescriptor#getDataBlockEncodingOnDisk() is also deprecated because the data block encoding on disk is always the same as that in cache for a given store file.


---

* [HBASE-9866](https://issues.apache.org/jira/browse/HBASE-9866) | *Major* | **Support the mode where REST server authorizes proxy users**

hbase.rest.support.proxyuser when set to true would enable enable proxy-user support in the REST server. Like any other server, e.g., NameNode, which supports proxy user mode, appropriate proxy-user configuration needs to be set as well in the REST server (hadoop.proxyuser.$user.hosts, hadoop.proxyuser.$user.groups). Requests can then be made to the REST server with a 'doAs' in the query string url and if proxy user authorization check passes, the query will be executed as the 'doAs' user.


---

* [HBASE-9850](https://issues.apache.org/jira/browse/HBASE-9850) | *Major* | **Issues with UI for table compact/split operation completion. After split/compaction operation using UI, the page is not automatically redirecting back using IE8/Firefox.**

Support auto redirect for IE/firefox browsers upon completion of Split/compact operation


---

* [HBASE-9848](https://issues.apache.org/jira/browse/HBASE-9848) | *Major* | **Make regionserver Canary exit with different exit codes**

Canary now has different return codes for different types of failures.


---

* [HBASE-9831](https://issues.apache.org/jira/browse/HBASE-9831) | *Minor* | **'hbasefsck.numthreads' property isn't passed to hbck via cmdline -D option**

try run hadoopqa for trunk


---

* [HBASE-9771](https://issues.apache.org/jira/browse/HBASE-9771) | *Trivial* | **[WebUI] Humanize store and blockcache statistics on RS**

Committed to 0.96 and trunk. Thanks for the review Elliott.


---

* [HBASE-9757](https://issues.apache.org/jira/browse/HBASE-9757) | *Major* | **Reenable fast region move in SlowDeterministicMonkey**

Online encoding change is enabled by default in both trunk and 0.96 now.


---

* [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | *Major* | **Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix**

- The additional JAR files specified with HBASE\_CLASSPATH are appended to the system JARs.
- The additional JAR files specified with HBASE\_CLASSPATH\_PREFIX are prefixed to the system JARs.


---

* [HBASE-9684](https://issues.apache.org/jira/browse/HBASE-9684) | *Major* | **Remove MultiRowMutationProcessorMessages.proto**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-9677](https://issues.apache.org/jira/browse/HBASE-9677) | *Major* | **Remove MasterAdmin and MasterMonitor protos; have MasterService provide these functions**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-9645](https://issues.apache.org/jira/browse/HBASE-9645) | *Critical* | **Regionserver halt because of HLog's "Logic Error Snapshot seq id from earlier flush still present!"**

We used to add some code in postBatchMutation coprocessor that calls the HLog.appendNoSync method. This could cause some trouble if I didn't lock the updatesLock of HRegion. However, the HRegion class doesn't provide public methods to lock/unlock this updatesLock outside of it, so I submit a small patch adding two public methods to solve this.


---

* [HBASE-9631](https://issues.apache.org/jira/browse/HBASE-9631) | *Major* | **add murmur3 hash**

This change provides support for MurmurHash3, the successor to MurmurHash2. It is not selected by default but can be used by changing the configuration setting "hbase.hash.type" to "murmur3". For new installs only. You must not make this change to an existing cluster.


---

* [HBASE-9612](https://issues.apache.org/jira/browse/HBASE-9612) | *Blocker* | **Ability to batch edits destined to different regions**

Restores being able to send many regions's worth of edits to a regionserver when running the multi call (previous it was doing a single region's worth at a time).  Required redo of the multi proto model.  Removed multiGet since it had same problem in that it only did a region's worth at a time; use the multi call instead to do multiGets.  All should be transparent to the user but those trying to do clients against hbase will see changes (flags moved from GetRequest to Get and the above mentioned refactor of the MultiRequest proto).


---

* [HBASE-9597](https://issues.apache.org/jira/browse/HBASE-9597) | *Major* | **Create hbase-thrift module**

HBase's thrift server was moved into it's own module.  This has removed the dependency for Thrift in the hbase-server module.


---

* [HBASE-9549](https://issues.apache.org/jira/browse/HBASE-9549) | *Major* | **KeyValue#parseColumn(byte[]) does not handle empty qualifier**

HBase supports addressing cells with an empty column qualifier, but not all edge services handle that scenario correctly. In some case, attempting to address a cell at [rowkey, fam, ] results in interaction with the entire column family.

Users of the shell, MapReduce, REST, and Thrift who wish to interact with an entire column family must use "family" instead of "family:" (notice the omitted ':'). Including the ':' will be interpreted as an interaction with the empty qualifier in the "family" column family.


---

* [HBASE-9534](https://issues.apache.org/jira/browse/HBASE-9534) | *Major* | **Short-Circuit Coprocessor HTable access when on the same server**

Allow coprocessors accessing an HTable to short-circuit access to the local HRegionServer, rather than requiring the usual RPC path.


---

* [HBASE-9517](https://issues.apache.org/jira/browse/HBASE-9517) | *Major* | **Include only InterfaceAudiencePublic elements in generated Javadoc**

This updates the javadoc build so that there are two versions of the javadoc generated -- one version that contains the full internal apis of hbase, and another that only includes the @InterfaceAudience.Public API that users and applications will have stronger guarantees on for compatibility between major and minor versions.  The original api location on the website will contain the more limited api while a new link off the main page will point to the full internal api.


---

* [HBASE-9505](https://issues.apache.org/jira/browse/HBASE-9505) | *Minor* | **Enable replication by default**

hbase.replication is now true by default, meaning that users can add peers without having to do anything special and that any cluster can become a slave as soon as it is running.


---

* [HBASE-9488](https://issues.apache.org/jira/browse/HBASE-9488) | *Major* | **Improve performance for small scan**

Better perfomance for small scan (e.g. scan range is within one data block(64KB)) through setting 'small' attribute as true in Scan Object


---

* [HBASE-9482](https://issues.apache.org/jira/browse/HBASE-9482) | *Major* | **Do not enforce secure Hadoop for secure HBase**

While it is possible to run secure HBase without securing underlying filesystem, it is recommended that you run secure HBase on top of a secured HDFS cluster to provide stronger guarantees of security. In such cases, you must configure HBase services to be able to authenticate to HDFS services.

However, if the cluster hosting HBase service is protected via other means; for example if it exports only HBase services to external users; you may save some overhead by running secure HBase over unsecured HDFS. In such cases, you must ensure that the HDSF services are not accessible to external user via any means.


---

* [HBASE-9477](https://issues.apache.org/jira/browse/HBASE-9477) | *Blocker* | **Add deprecation compat shim for Result#raw and Result#list for 0.96**

The Result#raw() and Result#list APIs have been deprecated.  Users and applications should use Result#rawCells() and Result#listCells() instead.


---

* [HBASE-9468](https://issues.apache.org/jira/browse/HBASE-9468) | *Major* | **Previous active master can still serves RPC request when it is trying recovering expired zk session**

Adds option to disable master's attempt at recovering zookeeper session: i.e. just fail.  Set the fail-fast option when you have a backup master running that you can fail to.


---

* [HBASE-9435](https://issues.apache.org/jira/browse/HBASE-9435) | *Blocker* | **Fix jersey serialization/deserialization of json objects**

This patch replaces the default jersey json marshaller/unmarshaller with jackson. It updates unit tests to include json serialization/deserialization verification. 

The patch is backward compatible except for the following:

StorageClusterStatusModel, which is broken and had to be fixed in this patch. It only shows one node in the liveNodes field.

Previously when submitting requests represented in json, some fields prefixed with the '@' sign were accepted as equivalent to the same field name without the prefix. This was unintended and likely caused by a bug in Jersey. This has been rectified and no longer supported. It should be noted that responses represented in json remain the same (no '@' prefix).


---

* [HBASE-9382](https://issues.apache.org/jira/browse/HBASE-9382) | *Major* | **replicateWALEntry doesn't use the replication handlers**

Fix regression introduced by pb styling of method names.  TODO: have client say priority of method and remove all this QosFunction reflection stuff; its brittle and messy.


---

* [HBASE-9375](https://issues.apache.org/jira/browse/HBASE-9375) | *Minor* | **[REST] Querying row data gives all the available versions of a column**

Changes the default number of versions return from HColumnDescriptor.DEFAULT\_VERSIONS to 1.


---

* [HBASE-9369](https://issues.apache.org/jira/browse/HBASE-9369) | *Major* | **Add support for 1- and 2-byte integers in OrderedBytes and provide types**

This change adds support for 8- and 16-bit integral types. It also alters the header byte written by OrderedBytes for NAN, FIXED\_INT32, FIXED\_INT64, TEXT, BLOB\_VAR, and BLOB\_COPY values. Data of those types written using a 0.95 release will be incompatible with this change.


---

* [HBASE-9364](https://issues.apache.org/jira/browse/HBASE-9364) | *Minor* | **Get request with multiple columns returns partial results**

The behavior of retrieving values of all the qualifiers of a column family has been changed. Until now, "columnfamily: " ,  used to fetch all the values belonging to all the qualifiers of a column family, but now on it means empty qualifier. To retrieve all the qualifier values, just the column family has to be specified.  In summary specifying only the column family will retrieve all the values associated with all the column qualifiers and specifying "<columnfamily>: "  means retrieving value associated with an empty qualifier.


---

* [HBASE-9359](https://issues.apache.org/jira/browse/HBASE-9359) | *Major* | **Convert KeyValue to Cell in hbase-client module - Result/Put/Delete, ColumnInterpreter**

The signature for several methods on Put, Result, ColumnInterpreter, and BaseRegionObserver have been modified to use the Cell interface instead of KeyValues.  Applications need to  convert KeyValue  and List<KeyValue> to Cell and List<Cell>.  The changes are summarized here: 

Put:
-  public List<KeyValue> get(byte[] family, byte[] qualifier)
+  public List<Cell> get(byte[] family, byte[] qualifier) 

Result:
-  public KeyValue[] raw() {
+  public Cell[] raw() {

-  public List<KeyValue> list() {
+  public List<Cell> list() {

-  public List<KeyValue> getColumn(byte [] family, byte [] qualifier) {
+  public List<Cell> getColumn(byte [] family, byte [] qualifier) {

-  public KeyValue getColumnLatest(byte [] family, byte [] qualifier) {
+  public Cell getColumnLatest(byte [] family, byte [] qualifier) {

-  public KeyValue getColumnLatest(byte [] family, int foffset, int flength,
+  public Cell getColumnLatest(byte [] family, int foffset, int flength,
       byte [] qualifier, int qoffset, int qlength) {

For extension interfaces BaseRegionObserver and ColumnInterpreter, we have kept both the old and new signature, including a shim that has the abstract implementation helper have the new call the old implementation. For the shim to handle the List<KeyValue> -> List<Cell> conversion, we use an expensive naive array copy.   It is strongly recommended that the new coprocessors are updated to override the new undeprecated API.

ColumnInterpreter:  (abstract class)
-  public abstract T getValue(byte[] colFamily, byte[] colQualifier, KeyValue kv)
+  public abstract T getValue(byte[] colFamily, byte[] colQualifier, Cell kv)
 
BaseRegionObserver: (abstract class)
RegionObserver:  (inteface)
   void preGet(final ObserverContext<RegionCoprocessorEnvironment> c, final Get get,
-      final List<KeyValue> result)
+      final List<Cell> result)
     throws IOException;
   void postGet(final ObserverContext<RegionCoprocessorEnvironment> c, final Get get,
-      final List<KeyValue> result)
+      final List<Cell> result)
     throws IOException;


---

* [HBASE-9350](https://issues.apache.org/jira/browse/HBASE-9350) | *Major* | **In ChaosMonkey, MoveRegionsOfTableAction throws UnknownRegionException**

patch for 0.94.x


---

* [HBASE-9299](https://issues.apache.org/jira/browse/HBASE-9299) | *Major* | **Generate the protobuf classes with hadoop-maven-plugin**

Adds in reference to the hadoop-maven-plugin (commented out).   Improved documentation around how to generate protobuf classes.


---

* [HBASE-9262](https://issues.apache.org/jira/browse/HBASE-9262) | *Major* | **Make KeyValue.KEY\_COMPARATOR default for HFile WriterFactory**

Previously, when using a WriterFactory to create an HFile writer, the HFile Writer would default to using a raw byte array comparator instead of one that was aware of the a KV's Key structure.  All actual instances of HFileWriter creation required the specification of a KEY\_COMPARATOR.  With this modification the KEY\_COMPARATOR becomes the default, and we add a special comparator for unit tests that required the rare old default semantics.


---

* [HBASE-9261](https://issues.apache.org/jira/browse/HBASE-9261) | *Major* | **Add cp hooks after {start\|close}RegionOperation**

Added hooks postStartRegionOperation and postCloseRegionOperation after startRegionOperation and closeRegionOperation respectively. Also added postBatchMutateIndispensably hook which will be called after the completion(success or failure) of batch mutation operation.


---

* [HBASE-9244](https://issues.apache.org/jira/browse/HBASE-9244) | *Major* | **Add CP hooks around StoreFileReader creation**

Added hooks (preStoreFileReaderOpen and postStoreFileReaderOpen) around Store file open operation.


---

* [HBASE-9230](https://issues.apache.org/jira/browse/HBASE-9230) | *Critical* | **Fix the server so it can take a pure pb request param and return a pure pb result**

If the client does not specify a codec, the server will not respond using cellblocks; instead it will response with a pure protobuf message.  This is slower but easier for clients to make sense of.  It should make version one of a client implementation easier to do.  To make the hbase client do non-cellblocking communication, set hbase.client.default.rpc.codec  to the empty string and do not set hbase.client.rpc.codec


---

* [HBASE-9208](https://issues.apache.org/jira/browse/HBASE-9208) | *Major* | **ReplicationLogCleaner slow at large scale**

The FileCleanerDelegate interface has changed to operate on a batch of files at a time.  Any custom implementations that implemented the interface directly for cleaning HLog's (specified by hbase.master.logcleaner.plugins) or HFile's (specified by hbase.master.hfilecleaner.plugins) will have to be updated to implement the new interface or extend one of the included abstract base classes.


---

* [HBASE-9193](https://issues.apache.org/jira/browse/HBASE-9193) | *Major* | **Make what Chaos monkey actions run configurable per test.**

It is now possible to choose which ChaosMonkey you want to run with an integration test.


---

* [HBASE-9165](https://issues.apache.org/jira/browse/HBASE-9165) | *Major* | **Improvements to addDependencyJars**

Introduces the method TableMapReduceUtil#addHBaseDependencyJars for adding HBase and its direct dependencies (only) to the job configuration.

This is intended as a low-level API, facilitating code reuse between this class and its mapred counterpart. It is also of use to external tools that need to build a MapReduce job that interacts with HBase but want fine-grained control over the jars shipped to the cluster. See also PIG-3285 and HIVE-2055.


---

* [HBASE-9138](https://issues.apache.org/jira/browse/HBASE-9138) | *Trivial* | **getHaseIntegrationTestingUtility() is misspelled**

patch for 0.94.x


---

* [HBASE-9137](https://issues.apache.org/jira/browse/HBASE-9137) | *Major* | **Add Tag dictionary in WAL compression**

Tag compression will work when WAL compression is enabled. Set "hbase.regionserver.wal.tags.enablecompression" false to disable tag compression in WAL. (This property defaults to true)


---

* [HBASE-9128](https://issues.apache.org/jira/browse/HBASE-9128) | *Critical* | **Drop the '.' prefix from names under hbase.rootdir after namespaces goes in**

Changes the dir names under hbase.rootdir dropping the no longer needed prefix '.' and renaming a few.

 ".logs" -> "WALs";
".splitlog" -> "splitWAL"
".corrupt" -> "corrupt"
 ".oldlogs" ->  "oldWALs"
 ".data" -> "data"
".archive" -> "archive"


---

* [HBASE-9121](https://issues.apache.org/jira/browse/HBASE-9121) | *Major* | **Update HTrace to 2.00 and add new example usage.**

Updated to HTrace 2.00.


---

* [HBASE-9119](https://issues.apache.org/jira/browse/HBASE-9119) | *Major* | **hbase.mapreduce.hfileoutputformat.blocksize should configure with blocksize of a table**

While writing hfiles from HFileOutputFormat forcing blocksize from table schema(HColumnDescriptor). Even if we configure hbase.mapreduce.hfileoutputformat.blocksize during bulkload/import it will be overridden with actual block size from table schema.


---

* [HBASE-9110](https://issues.apache.org/jira/browse/HBASE-9110) | *Critical* | **Meta region edits not recovered while migrating to 0.96.0**

Adds a step to migration where we split any outstanding WAL files.  This process is not distributed so will be slower than the distributed version that runs on cluster startup so, make sure there are few WALs to split at this step by making sure the cluster shutdown is clean pre-upgrade.


---

* [HBASE-9101](https://issues.apache.org/jira/browse/HBASE-9101) | *Major* | **Addendum to pluggable RpcScheduler**

Adds RpcSchedulerFactory and a Priority Interface for figuring priority of a request.


---

* [HBASE-9097](https://issues.apache.org/jira/browse/HBASE-9097) | *Major* | **Set HBASE\_CLASSPATH before rest of the classpath**

Move HBASE\_CLASSPATH to the beginning of the CLASSPATH in bin/hbase script.


---

* [HBASE-9091](https://issues.apache.org/jira/browse/HBASE-9091) | *Major* | **Update ByteRange to maintain consumer's position**

Extract ByteRange out to an interface. Existing implementation becomes SimpleByteRange. Extend ByteRange interface with PositionedByteRange. Includes a position marker for tracking a consumer's place within a range. Implement SimplePositionedByteRange as subclass of SimpleByteRange. Also update and clarify documentation. This class starts to become a mutable alternative to java.nio.HeapByteBuffer.


---

* [HBASE-9045](https://issues.apache.org/jira/browse/HBASE-9045) | *Major* | **Support Dictionary based Tag compression in HFiles**

When DataBlockEncoding is been used, tags also will be compressed using Dictionary. This can be disabled at a CF level using HColumnDescriptor#setCompressTags(boolean compressTags)


---

* [HBASE-8962](https://issues.apache.org/jira/browse/HBASE-8962) | *Minor* | **Clean up code and remove regular log splitting**

As distributed log splitting is getting more and more stable, non-distributed log splitting is removed and not supported any more.  The configuration hbase.master.distributed.log.splitting is also removed, which used to the configuration to turn distributed log splitting on (true) and off (false).


---

* [HBASE-8957](https://issues.apache.org/jira/browse/HBASE-8957) | *Major* | **TestDrainingServer. testDrainingServerWithAbort fails**

Make it so tests run WITHOUT short circuit reads by default.


---

* [HBASE-8915](https://issues.apache.org/jira/browse/HBASE-8915) | *Minor* | **protobuf message style**

Reformat of proto labels to suit protobuf style


---

* [HBASE-8877](https://issues.apache.org/jira/browse/HBASE-8877) | *Major* | **Reentrant row locks**

Changed the coprocessor RegionObserver methods preBatchMutate and postBatchMutate to remove the lock ids from the methods as lock ids are not longer used.


---

* [HBASE-8861](https://issues.apache.org/jira/browse/HBASE-8861) | *Major* | **Remove ReplicationState completely**

stop\_replication and start\_replication aren't available anymore due to the confusion it was causing. The right way to stop/start replication is to disable\_peer and enable\_peer, for each peers.


---

* [HBASE-8809](https://issues.apache.org/jira/browse/HBASE-8809) | *Major* | **Include deletes in the scan (setRaw) method does not respect the time range or the filter**

"Raw" scans (Scan.setRaw(true)), now honor the scan's time range if specified.
Previously the time range would be ignored.


---

* [HBASE-8778](https://issues.apache.org/jira/browse/HBASE-8778) | *Critical* | **Region assigments scan table directory making them slow for huge tables**

Table descriptors are now moved inside hdfs from residing directly in the table directory (alongside region directories) to being in a well known subdirectory called ".tabledesc".  For example, instead of /hbase/exampleTable/.tableinfo.0000000003 the file would be /hbase/exampleTable/.tabledesc/.tableinfo.0000000003 after this release.  The same will be true for snapshots.  The first active master to be started up will move these files for existing tables and snapshots.


---

* [HBASE-8755](https://issues.apache.org/jira/browse/HBASE-8755) | *Critical* | **A new write thread model for HLog to improve the overall HBase write throughput**

Redo of thread model writing edits to the WAL; slower when few clients but as concurrency rises, it makes for better throughput.


---

* [HBASE-8754](https://issues.apache.org/jira/browse/HBASE-8754) | *Major* | **Log the client IP/port of the balancer invoker**

Add logging of all admin commands that provoke a change.  Include client -- name and address -- responsible in log string.


---

* [HBASE-8741](https://issues.apache.org/jira/browse/HBASE-8741) | *Major* | **Scope sequenceid to the region rather than regionserver (WAS: Mutations on Regions in recovery mode might have same sequenceIDs)**

Sequenceids are now per region rather than per RegionServer.


---

* [HBASE-8723](https://issues.apache.org/jira/browse/HBASE-8723) | *Blocker* | **HBase Intgration tests are failing because of new defaults.**

Changed default number of RPC reties to 30 to ensure the client doesn't give up too soon during a region fail over.


---

* [HBASE-8711](https://issues.apache.org/jira/browse/HBASE-8711) | *Major* | **Requests count is completely off**

hbase.regionserver.metrics.period can now be used to configure how often the RS metrics are computed. Defaults to 5, was 15 before this patch.


---

* [HBASE-8710](https://issues.apache.org/jira/browse/HBASE-8710) | *Minor* | **The balancer shouldn't try balancing one node**

The balancer will not try balancing the regions when there's only one node.


---

* [HBASE-8693](https://issues.apache.org/jira/browse/HBASE-8693) | *Blocker* | **DataType: provide extensible type API**

This patch introduces an extensible data types API for HBase. It is inspired by the following systems:

 - PostgreSQL. Postgres has a user-extensible data type API, which has been used to great effect by it's user community (ie, PostGIS). The desire is for HBase to expose an equally extensible data type API. One aspect of the Postgres data type is the ability to provide equivalence functions for index operations. This appears to be of critical performance utility for its execution engine.
 - Orderly. Orderly handles the issue of compound rowkeys by providing convenience classes for handling these kinds of data types. This influence is reflected in the Struct and Union family of classes.
 - Phoenix. The PDataType enum used in Phoenix provides type hints, similar Postgres's equivalence functions. These appear to be used during query execution for numerical type promotion.

This patch introduces an interface, DataType, along with a number of data type implementations based on the Bytes encoding. Also included are Struct and Union types, demonstrating simple implementations of compound types. Helper classes around the Struct implementation are also provided.

This patch does not address the type compatibility concerns expressed by Phoenix's PDataType API (ie, isComparableTo, isCoercibleTo); these will be addressed in HBASE-8863.

This patch also provides DataType implementations based on the OrderedBytes encoding from HBASE-8201.


---

* [HBASE-8692](https://issues.apache.org/jira/browse/HBASE-8692) | *Major* | **[AccessController] Restrict HTableDescriptor enumeration**

This change adds support for restricting access to table schema. Only a user with GLOBAL ADMIN privilege can enumerate the full list of table schemas. If passed a list of specific tables, the AccessController will check that the user has either GLOBAL ADMIN privs, or TABLE ADMIN or TABLE CREATE privs for all of the listed tables before allowing the request.


---

* [HBASE-8663](https://issues.apache.org/jira/browse/HBASE-8663) | *Critical* | **a HBase Shell command to list the tables replicated from current cluster**

list\_replicated\_tables can now be used in the shell to get the list of tables and families that are configured to be replicated, instead of having to describe all the tables and manually filter those that have a replication scope of 1


---

* [HBASE-8662](https://issues.apache.org/jira/browse/HBASE-8662) | *Major* | **[rest] support impersonation**

With the patch, if "hbase.rest.authentication.type" is set to "kerberos" and security is turned on, REST server will impersonate the authenticated user in access HBase.

The RPC layer proxy user settings should be configured properly to allow impersonation.


---

* [HBASE-8583](https://issues.apache.org/jira/browse/HBASE-8583) | *Major* | **Create a new IntegrationTestBigLinkedListWithChaosMonkey**

New hbase-it integration test, IntegrationTestBigLinkedListWithChaosMonkey


---

* [HBASE-8569](https://issues.apache.org/jira/browse/HBASE-8569) | *Major* | **Improve coverage in package org.apache.hadoop.hbase.security**

Adds tests that exercise some security code-paths with security on.
mvn clean -Dtest=TestUsersOperationsWithSecureHadoop,TestSecureRPC,TestUser,TestHBaseSaslRpcClient  test -Dhbase.regionserver.kerberos.principal=<shortname>/<domain>@realm -Dhbase.regionserver.keytab.file=/etc/security/keytabs/hbase.service.keytab


---

* [HBASE-8496](https://issues.apache.org/jira/browse/HBASE-8496) | *Critical* | **Implement tags and the internals of how a tag should look like**

Tags are additional metadata to be added with the KVs.  
To enable the tags to be persisted in the HFiles, V3 version of HFile should be used.
<property>
      <name>hfile.format.version</name>
      <value>3</value>
  </property>
The tags has the below format
<2 byte tag length><1 byte type code><tag>
where <type> is the type of the tag, <tag> is a byte[] that has the tag data.
To add Tags using Puts
Put.add(byte[] family, byte [] qualifier, byte [] value, Tag[] tag)
Put.add(byte[] family, byte[] qualifier, long ts, byte[] value, Tag[] tag)
Can be used.
Note that even after changing the version to V3, the no-tag case will also be working fine as in V2 format.


---

* [HBASE-8462](https://issues.apache.org/jira/browse/HBASE-8462) | *Major* | **Custom timestamps should not be allowed to be negative**

Timestamps in Mutations (Put/Delete, etc) are not allowed to be negative throwing IllegalArgumentException from the client side. Note that negative timestamps are not sorted correctly, and will cause inconsistencies when accessing the values.


---

* [HBASE-8438](https://issues.apache.org/jira/browse/HBASE-8438) | *Major* | **Extend bin/hbase to print a "mapreduce classpath"**

$ ./bin/hbase mapredcp --help
Usage: hbase mapredcp [-Dtmpjars=...]
  Construct a CLASSPATH containing dependency jars required to run a mapreduce job. By default, includes any jars detected by TableMapReduceUtils. Provide additional entries by specifying a comma-separated list in tmpjars.


---

* [HBASE-8420](https://issues.apache.org/jira/browse/HBASE-8420) | *Major* | **Port  HBASE-6874  Implement prefetching for scanners from 0.89-fb**

By default, prefetching is enabled in the trunk version (0.95.2 and 0.98).  To disable it, users have to set prefetching off in the Scan object.

This patch introduced a configuration hbase.hregionserver.prefetcher.resultsize.max to control how much data we can prefetch.  By default, it is 256MB.  If there is already more than that much data prefetched, no new prefetching will be scheduled until some prefetched results are retrieved by clients, so there is room again for new prefetching.


---

* [HBASE-8409](https://issues.apache.org/jira/browse/HBASE-8409) | *Blocker* | **Security support for namespaces**

This patch introduces security privileges to create, alter or drop namespaces. When security is enabled only global admin is allowed to do such operations. Richer namespace privileges will be introduced in HBASE-9206.


---

* [HBASE-8375](https://issues.apache.org/jira/browse/HBASE-8375) | *Major* | **Durability setting per table**

Added Durability setting for table with HTableDescriptor.setDurability() API. Deprecated HTableDescriptor.setDeferredLogFlush(), and shell usage in favor of the new durability setting. Now, durability can be configured per table and per mutation.


---

* [HBASE-8369](https://issues.apache.org/jira/browse/HBASE-8369) | *Major* | **MapReduce over snapshot files**

Added TableSnapshotInputFormat and TableSnapshotScanner for performing scans over hbase table snapshots from the client side, bypassing the hbase servers. The former configures a mapreduce job, while the latter does single client side scan over snapshot files. Can also be used with offline HBase with in-place or exported snapshot files. 

WARNING: This feature bypasses HBase-level security completely since the files are read from the hdfs directly. The user who is running the scan / job has to have read permissions to the data files and snapshot files.


---

* [HBASE-8355](https://issues.apache.org/jira/browse/HBASE-8355) | *Major* | **BaseRegionObserver#pre(Compact\|Flush\|Store)ScannerOpen returns null**

As pointed out in https://github.com/forcedotcom/phoenix/pull/131, BaseRegionObserver#preCompactScannerOpen returns null by default, which hoses any coprocessors down the line, making override of this method mandatory in all subclasses of BaseRegionObserver, when there are multiple levels of coprocessor stacking - this same behavior is present in preFlushScannerOpen and preStoreScannerOpen. 

Instead, we default to returning the passed scanner so earlier coprocessor changes are preserved and still support the default "no custom scanner" by returning null (default scanner passed to each hook).


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

* [HBASE-8272](https://issues.apache.org/jira/browse/HBASE-8272) | *Minor* | **make compaction checker frequency configurable per table/cf**

hbase.server.compactchecker.interval.multiplier configuration setting was added to enable one to make more frequent compaction checks in the cluster, or in specific regions. See hbase-default.xml for details.


---

* [HBASE-8224](https://issues.apache.org/jira/browse/HBASE-8224) | *Blocker* | **Publish hbase build against h1 and h2 adding '-hadoop1' or '-hadoop2' to version string**

When we publish artifacts, we add a -hadoop1 or -hadoop2 to the version to distingush hbase compiled against hadoop1 from that compiled against hadoop2.  This issue adds a script that runs against checked out poms to derive poms that have the -hadoop1 or -hadoop2 modification made and they add/remove to the poms the appropriate set of modules to bundle.  See refguide for final doc on how to make use of this script building (TODO); refguide will replace the notes here.


---

* [HBASE-8218](https://issues.apache.org/jira/browse/HBASE-8218) | *Major* | **Pass HTable as parameter to methods of AggregationClient**

In AggregationClient added a new set of APIs which takes an HTable instance rather than just table name. When client needs to call more than one aggregation API or they do have an instance of the HTable already available, they can pass it so as to avoid the overhead of creating the HTable again and again.


---

* [HBASE-8201](https://issues.apache.org/jira/browse/HBASE-8201) | *Major* | **OrderedBytes: an ordered encoding strategy**

OrderedBytes provides a data encoding format in which the resulting byte[] retains the same sort order as the natural types. Encoded formats can be inspected and decoded without forward knowledge of their content. Implementations are provided for integer and floating point numbers with 32- and 64-bits of precision, numeric values of arbitrary precision, Strings, and byte[]s. Utility methods for counting and skipping encoded entries are also provided.

Most of the encoding formats are modeled after the SQLite4 key encoding format. Implementations of variable-length encodings are very similar. Fixed-width encodings are modeled after the fixed-width formats provided by the Orderly library. Javadocs on the OrderedBytes class describe the encoding format in detail. See http://sqlite.org/src4/doc/trunk/www/key\_encoding.wiki for additional context.

Notable deviation from the sqlite4 spec include:
 - Different header byte values. This is to give users more room to place their own, custom encoding extensions as they see fit.
 - BlobCopy is modified to include a termination byte of 0x00 in descending order. This is necessary in order to maintain reverse sort order of empty values. It is also renamed from "BlobLast".
 - Support for fixed-length integer and float encodings. Based on implementations from the Orderly library.


---

* [HBASE-8187](https://issues.apache.org/jira/browse/HBASE-8187) | *Blocker* | **trunk/0.95 tarball packaging**

To build a tgz that has source only:

$ mvn clean install -DskipTests -Dassembly.file=src/main/assembly/src.xml  assembly:single

The product can be found in hbase-assembly/target

To build a binary tgz:

$ mvn clean install -DskipTests javadoc:aggregate  site  assembly:single

For hadoop2.0:

$ mvn clean install -DskipTests -Dhadoop.profile=2.0 javadoc:aggregate  site  assembly:single

See HBASE-8224 for how to add hadoop1 and hadoop2 labels to the jars.

Again the product will be in hbase-assembly/target


---

* [HBASE-8173](https://issues.apache.org/jira/browse/HBASE-8173) | *Minor* | **HMaster#move wraps IOException in UnknownRegionException**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-8165](https://issues.apache.org/jira/browse/HBASE-8165) | *Major* | **Move to Hadoop 2.1.0-beta from 2.0.x-alpha (WAS: Update our protobuf to 2.5 from 2.4.1)**

Move our baseline hadoop2 from hadoop-2.0.x-alpha to hadoop-2.1-x-beta.   The main change in hbase is changing our protobufs so all are now generated using protoc 2.5 instead of 2.4.1.  Some small changes too were made to take advantage of new speedups in 2.5 protobufs (more to come).

Adds new flag hbase.testing.preserve.testdir which you can set to preserve test data (also puts the mapreduce1 data under the test dir rather than to the side in test-dir as it has been up to this -- cannot corral the yarn/mrv2 test dir --- it is always under target).


---

* [HBASE-8163](https://issues.apache.org/jira/browse/HBASE-8163) | *Major* | **MemStoreChunkPool: An improvement for JAVA GC when using MSLAB**

Support reusing MemStoreChunk when MSLAB is enabled, thereby decrease the cost of YGC. It is off by default, turn it on by configuring "hbase.hregion.memstore.chunkpool.maxsize" (between 0.0 and 1.0)


---

* [HBASE-8161](https://issues.apache.org/jira/browse/HBASE-8161) | *Minor* | **setting blocking file count on table level doesn't work**

in trunk and 95


---

* [HBASE-8148](https://issues.apache.org/jira/browse/HBASE-8148) | *Major* | **Allow IPC to bind on a specific address**

hbase.master.ipc.address and hbase.regionserver.ipc.address can now be used to have HBase bind on specific IP addresses, 0.0.0.0 being the main use case. The default behavior still relies on hbase.regionserver.dns.interface/nameserver.


---

* [HBASE-8143](https://issues.apache.org/jira/browse/HBASE-8143) | *Critical* | **HBase on Hadoop 2 with local short circuit reads (ssr) causes OOM**

Committed 0.96 and trunk.  Thanks for reviews.


---

* [HBASE-8090](https://issues.apache.org/jira/browse/HBASE-8090) | *Blocker* | **Versioning site; part two, publish 0.94 site and add link from main site**

Added a '0.94 Documentation' to hbase.apache.org navbar.  Points into reports, refguide, and apidocs generated out of 0.94 branch.


---

* [HBASE-8077](https://issues.apache.org/jira/browse/HBASE-8077) | *Minor* | **Configure the job name in ImportTsv**

use the configuration key mapred.job.name to set the map reduce job name for import tsv


---

* [HBASE-8031](https://issues.apache.org/jira/browse/HBASE-8031) | *Major* | **Adopt goraci as an Integration test**

Added a system test called IntegrationTestBigLinkedList. This test runs many ingest clients that continually create linked lists containing 25 million nodes. At some point the clients are stopped and a map reduce job is run to ensure no linked list has a hole. A hole indicates data was lost.


---

* [HBASE-8018](https://issues.apache.org/jira/browse/HBASE-8018) | *Major* | **Add "Flaky Testcase Detector" tool into dev-tools**

Tool that looks at jenkins builds and identifies flakey tests or tests that are 'invisibles' -- not mentioned in the test listing but that nonetheless cause the build to fail.  See the README.md under dev-tools/jenkins-tools for how to build and use.


---

* [HBASE-7938](https://issues.apache.org/jira/browse/HBASE-7938) | *Major* | **Add integration test for ImportTsv/LoadIncrementalHFiles workflow**

The new IntegrationTestImportTsv is written in the style of the
recently added IntegrationTestLoadAndVerify. It is designed to be run
from maven or directly against a distributed cluster. It shares core
test logic with TestImportTsv.

To run it with maven, first refresh your install jars, and the run the
test:

  $ mvn clean package install -DskipTests
  $ cd hbase-it
  $ mvn failsafe:integration-test -Dit.test=IntegrationTestImportTsv

NOTE: Running from maven fails because HFileOutputFormat is creating
the partition file on localFs, not HDFS.

Or run it stand-alone:

  $ HBASE\_CLASSPATH="hbase-it/target/hbase-it-<version>-tests.jar" \
    ./bin/hbase org.apache.hadoop.hbase.mapreduce.IntegrationTestImportTsv

When run stand-alone, it supports all the usual Hadoop Tool arguments,
particularly -conf.

ImportTsv was refactored to make code sharing easier. It is upgraded
from MediumTest to LargeTest because it take 180+ seconds to run on my
machine. Tests for the TsvParser are separated into their own
SmallTest.


---

* [HBASE-7905](https://issues.apache.org/jira/browse/HBASE-7905) | *Major* | **Add passing of optional cell blocks over rpc**

Rather than pass KeyValues/Cells by serializing them into a protobuf param, instead it now passes KeyValues/Cells via a follow-behind block of Cells/KeyValues; these blocks of cells can be optionally encoded/compressed (Currently it is a client-wide config; TODO: make it per request config).


---

* [HBASE-7902](https://issues.apache.org/jira/browse/HBASE-7902) | *Minor* | **deletes may be removed during minor compaction,  in non-standard compaction schemes [rename enums]**

committed to 0.95 and trunk last week


---

* [HBASE-7878](https://issues.apache.org/jira/browse/HBASE-7878) | *Critical* | **recoverFileLease does not check return value of recoverLease**

A new config parameter, hbase.lease.recovery.timeout, is introduced for the maximum duration recoverFileLease() would wait for any single file. Default is 5 minutes. If lease recovery doesn't succeed within this limit, append() would be called.


---

* [HBASE-7876](https://issues.apache.org/jira/browse/HBASE-7876) | *Minor* | **Got exception when manually triggers a split on an empty region**

Regions with no store files used to exit with an exception when splits are attempted.  With this fix applied, empty regions are split into two empty regions.


---

* [HBASE-7845](https://issues.apache.org/jira/browse/HBASE-7845) | *Major* | **optimize hfile index key**

Mimics Leveldb ByteWiseComparatorImpl::FindShortestSeparator() & FindShortSuccessor() to reduce index key size


---

* [HBASE-7842](https://issues.apache.org/jira/browse/HBASE-7842) | *Major* | **Add compaction policy that explores more storefile groups**

Default compaction policy has been changed to a new policy that will explore more groups of files and is more strict about enforcing the size ratio requirements.


---

* [HBASE-7826](https://issues.apache.org/jira/browse/HBASE-7826) | *Minor* | **Improve Hbase Thrift v1 to return results in sorted order**

When passing a TScan object, it's possible to ask for sortColumns. The result of doing this will populate TRowResult's "sortedColumns" instead of "columns", where the former is a list of the new type TColumn that wraps a column name and a TCell. 
Backward compatibility is kept. Old clients will work against thrift servers with this patch, but new clients cannot request sorted columns on an old thrift server.


---

* [HBASE-7801](https://issues.apache.org/jira/browse/HBASE-7801) | *Major* | **Allow a deferred sync option per Mutation.**

HBase clients from 0.94.7 going forward support the following new API for Mutations (Put/Delete/Append/Increment).
Mutation.setDurability(Durability). Possible durability settings are: USE\_DEFAULT (use whatever the table has been configured with), SKIP\_WAL (do not write anything to the WAL), ASYNC\_WAL (write to the WAL asynchronously), SYNC (write to the WAL synchrously), FSYNC (write to the WAL synchronously and force to disc everywhere - currently not supported).

Regionservers prior to 0.94.7 with ignore anything but SKIP\_WAL and assume USE\_DEFAULT.


---

* [HBASE-7680](https://issues.apache.org/jira/browse/HBASE-7680) | *Major* | **implement compaction policy for stripe compactions**

See "9.7.6.5.6. Experimental: stripe compactions" in the refguide, http://hbase.apache.org/book.html


---

* [HBASE-7663](https://issues.apache.org/jira/browse/HBASE-7663) | *Major* | **[Per-KV security] Visibility labels**

VisibilityController CP handles the visibility
The visibility labels are stored as tags with KVs
Use Mutation#setCellVisibility(new CellVisibility(<labelExp>)); to add visibility expressions to cells
The label expression can contain visibility labels joined with logical expressions &, | and !. Also using (, ) one can specify the precedence order
Eg : SECRET & CONFIDENTIAL & !PUBLIC
Please note that passing CellVisibility in a Delete mutation is illegal.

During read, (Scan/Get) one can specify labels associated with that, in Authorizations
scan.setAuthorizations(new Authorizations(SECRET, CONFIDENTIAL));


Visibility Label admin operations
----------------------------------------
Labels can be added to the system using VisibilityClient#addLabels(). Also can use add\_labels shell command
Only super user (hbase.superuse) have permission to add the labels into the system.
A set of labels can be associated for a user using setAuths. VisibilityClient#setAuths()
Similarly labels can be removed from user auths using clearAuths.
getAuths API can be used to view user auths.
Also there is support for set\_auths, clear\_auths and get\_auths shell commands
Same way as in addLabels, only super user have permission for these operations.
When AccessController is ON the permission checks are handled by AC.
Using AC along with Visibility is optional. When AC is not available, permission checks are done at VisibilityController level itself.


---

* [HBASE-7662](https://issues.apache.org/jira/browse/HBASE-7662) | *Major* | **[Per-KV security] Per cell ACLs stored in tags**

This change extends the HBase ACL model to the cell level. ACLs can now be set on a per cell basis. See the Security section of the HBase manual for configuration and usage detail. 

HBASE-7663 introduced a new parent class for Get and Scan, Query. This change also moves the getFilter and SetFilter methods of Get and Scan to the common parent class. Client code may need to be recompiled.


---

* [HBASE-7639](https://issues.apache.org/jira/browse/HBASE-7639) | *Major* | **Enable online schema update by default**

Online schema chages are now enabled by default.


---

* [HBASE-7634](https://issues.apache.org/jira/browse/HBASE-7634) | *Major* | **Replication handling of changes to peer clusters is inefficient**

This change has an impact on the number of watches set on the ${zookeeper.znode.parent}/rs node in ZK in a replication slave cluster (i.e. a cluster that is being replicated to). Every region server in each master cluster will place a watch on the rs node of each slave node. No additional configuration is necessary for this, but this could potentially have an impact the performance and/or hardware requirements of ZK on very large clusters.


---

* [HBASE-7590](https://issues.apache.org/jira/browse/HBASE-7590) | *Major* | **Add a costless notifications mechanism from master to regionservers & clients**

This allows to setup a multicast connection between the master and the hbase clients. With the feature on, when a regionserver is marked as dead by the master, the master sends as well a multicast message that will make the hbase client to disconnect immediately from the dead server instead of waiting for a socket timeout. Specifically, this allows to set hbase.rpc.timeout to larger values (like 5 minutes) without impacting the MTTR: without this, even if the dead regionserver data is now available on another server, the client stays on the dead one, waiting for an answer that will never come. It's a multicast message, hence cheap, scalable, but unreliable. For this reason, the master sends the information 5 times, to allow the hbase client to miss a message. This feature is NOT activated by default. To activate it, add to your hbase-site.xml:

  <property>
    <name>hbase.status.published</name>
    <value>true</value>
  </property>

You can as well configure the ip address and port used with the following setting:
<property>
<name>hbase.status.multicast.address.ip</name>
<value>226.1.1.3</value>
</property>

<property>
<name>hbase.status.multicast.address.port</name>
<value>6100</value>
</property>


---

* [HBASE-7546](https://issues.apache.org/jira/browse/HBASE-7546) | *Major* | **Obtain a table read lock on region split operations**

Region split operations now acquire a read lock on the table to guard against concurrent table CRUD operations.


---

* [HBASE-7544](https://issues.apache.org/jira/browse/HBASE-7544) | *Major* | **Transparent table/CF encryption**

This change introduces a transparent encryption feature for protecting HFile and WAL data at rest. For detailed information including configuration examples see the Security section of the HBase manual.


---

* [HBASE-7525](https://issues.apache.org/jira/browse/HBASE-7525) | *Critical* | **A canary monitoring program specifically for regionserver**

Tool to check cluster.  See $ ./bin/hbase org.apache.hadoop.hbase.tool.RegionServerCanary -help for how to use.

{code}
Usage: bin/hbase org.apache.hadoop.hbase.tool.Canary [opts] [table/regionserver 1 [table/regionserver 2...]] 
  where [opts] are: 
    -help Show this help and exit. 
    -regionserver replace the table argument to regionserver, which means to enable regionserver mode 
    -daemon Continuous check at defined intervals. 
    -interval <N> Interval between checks (sec) 
    -e Use region/regionserver as regular expression which means the region/regionserver is regular expression pattern 
    -f <B> stop whole program if first error occurs, default is true -t <N> timeout for a check, default is 600000 (milisecs)
{code}


---

* [HBASE-7481](https://issues.apache.org/jira/browse/HBASE-7481) | *Major* | **Allow IOExceptions to be thrown from Filter methods**

The methods of Filter and FilterBase are declared to throw IOException.


---

* [HBASE-7403](https://issues.apache.org/jira/browse/HBASE-7403) | *Critical* | **Online Merge**

Support merging two regions as a transaction, just like split transaction, it is experimental now


---

* [HBASE-7325](https://issues.apache.org/jira/browse/HBASE-7325) | *Minor* | **Replication reacts slowly on a lightly-loaded cluster**

ReplicationSource won't backoff sleeping time if it can correctly read from the WAL even though it's not replicating anything. In that kind of situation it will put more load on the NN. replication.source.sleepforretries can still be tweaked to set the minimal sleep time.


---

* [HBASE-7183](https://issues.apache.org/jira/browse/HBASE-7183) | *Major* | **print WARN message if hbase.replication.sizeOfLogQueue is too big**

When a replication source's queue is higher than replication.source.log.queue.warn (default 2), it will print a WARN in the log as a new log is added.


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

* [HBASE-6873](https://issues.apache.org/jira/browse/HBASE-6873) | *Blocker* | **Clean up Coprocessor loading failure handling**

The default setting of the configuration parameter 'hbase.coprocessor.abortonerror' has been changed from "false" to "true". This will cause HBase processes to abort if a coprocessor cannot be loaded, fails to initialize, or throws an unexpected exception. If "false", this instead will allow the server to continue execution in such cases but the system wide state of the coprocessor in question will become inconsistent as it will be properly executing in only a subset of servers, so this is most useful for debugging a new coprocessor deployment on a test cluster. Running a secure production cluster with this setting set to "false" is not advised.


---

* [HBASE-6580](https://issues.apache.org/jira/browse/HBASE-6580) | *Major* | **Deprecate HTablePool in favor of HConnection.getTable(...)**

This issue introduces a few new APIs:
* HConnectionManager:
{code}
    public static HConnection createConnection(Configuration conf)
    public static HConnection createConnection(Configuration conf, ExecutorService pool)
{code}
* HConnection:
{code}
    public HTableInterface getTable(String tableName) throws IOException
    public HTableInterface getTable(byte[] tableName) throws IOException
    public HTableInterface getTable(String tableName, ExecutorService pool) throws IOException
    public HTableInterface getTable(byte[] tableName, ExecutorService pool) throws IOException
{code}

By default HConnectionImplementation will create an ExecutorService when needed. The ExecutorService can optionally passed be passed in.
HTableInterfaces are retrieved from the HConnection. By default the HConnection's ExecutorService is used, but optionally that can be overridden for each HTable.


---

* [HBASE-6295](https://issues.apache.org/jira/browse/HBASE-6295) | *Major* | **Possible performance improvement in client batch operations: presplit and send in background**

The puts are now streamed, i.e. sent asynchronously to the region servers if autoflush it set to false. If a region server is slow or does not respond, its puts are kept into the write buffer while the others are sent to these respective region server, until the write buffer is full. This feature is keeps the semantic of the interface already existing in 0.94 when using autoflush.


---

* [HBASE-6104](https://issues.apache.org/jira/browse/HBASE-6104) | *Major* | **Require EXEC permission to call coprocessor endpoints**

If access control is active (the AccessController coprocessor is installed either as a system coprocessor or on a table as a table coprocessor) and the "hbase.security.exec.permission.checks" configuration setting is "true", then you must now grant all relevant users EXEC privilege if they require the ability to execute coprocessor endpoint calls. EXEC privilege, like any other permission, can be granted globally to a user, or to a user on a per table or per namespace basis. For more information on coprocessor endpoints, see the coprocessor section of the HBase online manual. For more information on granting or revoking permissions using the AccessController, see the security section of the HBase online manual.


---

* [HBASE-6031](https://issues.apache.org/jira/browse/HBASE-6031) | *Major* | **RegionServer does not go down while aborting**

Fixed in hadoop 2.0.3-alpha.


---

* [HBASE-5930](https://issues.apache.org/jira/browse/HBASE-5930) | *Major* | **Limits the amount of time an edit can live in the memstore.**

This feature limits the time that unflushed data will stay in the memstore.
By default a memstore will flush if data older than 1h (3600000ms) is present.

This can be configured via hbase.regionserver.optionalcacheflushinterval (default value is 3600000).


---

* [HBASE-5050](https://issues.apache.org/jira/browse/HBASE-5050) | *Major* | **[rest] SPNEGO-based authentication**

A new configuration "hbase.rest.authentication" is added to enable authentication. Currently, only "kerberos" is supported.  You also need to specify the SPNEGO principal with configuration "hbase.rest.kerberos.spnego.principal".  The keytab configured with "hbase.rest.keytab.file" should have a key for this SPNEGO principal besides the REST server principal.


---

* [HBASE-4811](https://issues.apache.org/jira/browse/HBASE-4811) | *Major* | **Support reverse Scan**

== What is it?

HBase 0.98 introduces a reverse scanner, so that you can scan rows in reverse order as well as the default order. Previously, if you wanted to scan in reverse, you needed to save rows in reverse order.

== Why do you want it?

One common use case is data stored with timestamps. Previously, when you created the schema, you needed to make a design decision about whether you wanted faster access to records with old timestamps or new ones. If you wanted to be able to scan in reverse, you needed to store the data twice, sorted forward and reverse. 

With the reverse scanner in HBase 0.98, you can choose whether to scan your data in either direction. The reverse scanner is only a few percent slower than the default scanner.

== How do you set it up?
No setup is required.

== How do you use it?
Use the Scan.setReversed(boolean reversed) API call:
Scan.setReversed(true)

If you specify a startRow and stopRow, to scan in reverse, the startRow needs to be lexicographically after the stopRow.

Refer to the API documentation for more information about the Scan API (http://hbase.apache.org/apidocs/org/apache/hadoop/hbase/client/Scan.html).

NOTE: Rows are reversed only. Columns in a row still sort forward even if you specify reverse on your scan.


---

* [HBASE-4210](https://issues.apache.org/jira/browse/HBASE-4210) | *Major* | **Allow coprocessor to interact with batches per region sent from a client**

Adds a pre/post CP hooks to deal with batches of Puts and Deletes rather than individual Put/Delete.
The preBatchMutate hook will be called after aquiring locks on all the rows which are involved in a batch. 
Also by this time the timestamps for Mutation will be applied at RS. So from this hook CP can get the batch of Mutations getting applied and their timestamps which will be getting applied
CP also can bypass any of the Mutation from getting applied by setting its OperationStatus as SUCCESS/FAILURE.
postBatchMutate hook will be called after write to memstore and append and sync to WAL.


---

* [HBASE-3171](https://issues.apache.org/jira/browse/HBASE-3171) | *Major* | **Drop ROOT and instead store META location(s) directly in ZooKeeper**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-1936](https://issues.apache.org/jira/browse/HBASE-1936) | *Major* | **ClassLoader that loads from hdfs; useful adding filters to classpath without having to restart services**

With this patch, customer filters can be dropped into a pre-configured folder (hbase.dynamic.jars.dir), which can be in hdfs. Region servers can pick them up dynamically, no need to restart the cluster for the new filters to take effect.

However, if a filter class is already loaded, it won't be un-loaded. Therefore, we can't load a new version of an existing class.  Users have to have a proper way to do filter class versioning.



