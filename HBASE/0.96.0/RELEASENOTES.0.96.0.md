
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
# Apache HBase  0.96.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-9262](https://issues.apache.org/jira/browse/HBASE-9262) | *Major* | **Make KeyValue.KEY\_COMPARATOR default for HFile WriterFactory**

Previously, when using a WriterFactory to create an HFile writer, the HFile Writer would default to using a raw byte array comparator instead of one that was aware of the a KV's Key structure.  All actual instances of HFileWriter creation required the specification of a KEY\_COMPARATOR.  With this modification the KEY\_COMPARATOR becomes the default, and we add a special comparator for unit tests that required the rare old default semantics.


---

* [HBASE-8165](https://issues.apache.org/jira/browse/HBASE-8165) | *Major* | **Move to Hadoop 2.1.0-beta from 2.0.x-alpha (WAS: Update our protobuf to 2.5 from 2.4.1)**

Move our baseline hadoop2 from hadoop-2.0.x-alpha to hadoop-2.1-x-beta.   The main change in hbase is changing our protobufs so all are now generated using protoc 2.5 instead of 2.4.1.  Some small changes too were made to take advantage of new speedups in 2.5 protobufs (more to come).

Adds new flag hbase.testing.preserve.testdir which you can set to preserve test data (also puts the mapreduce1 data under the test dir rather than to the side in test-dir as it has been up to this -- cannot corral the yarn/mrv2 test dir --- it is always under target).


---

* [HBASE-8754](https://issues.apache.org/jira/browse/HBASE-8754) | *Major* | **Log the client IP/port of the balancer invoker**

Add logging of all admin commands that provoke a change.  Include client -- name and address -- responsible in log string.


---

* [HBASE-9299](https://issues.apache.org/jira/browse/HBASE-9299) | *Major* | **Generate the protobuf classes with hadoop-maven-plugin**

Adds in reference to the hadoop-maven-plugin (commented out).   Improved documentation around how to generate protobuf classes.


---

* [HBASE-8462](https://issues.apache.org/jira/browse/HBASE-8462) | *Major* | **Custom timestamps should not be allowed to be negative**

Timestamps in Mutations (Put/Delete, etc) are not allowed to be negative throwing IllegalArgumentException from the client side. Note that negative timestamps are not sorted correctly, and will cause inconsistencies when accessing the values.


---

* [HBASE-9230](https://issues.apache.org/jira/browse/HBASE-9230) | *Critical* | **Fix the server so it can take a pure pb request param and return a pure pb result**

If the client does not specify a codec, the server will not respond using cellblocks; instead it will response with a pure protobuf message.  This is slower but easier for clients to make sense of.  It should make version one of a client implementation easier to do.  To make the hbase client do non-cellblocking communication, set hbase.client.default.rpc.codec  to the empty string and do not set hbase.client.rpc.codec


---

* [HBASE-9208](https://issues.apache.org/jira/browse/HBASE-9208) | *Major* | **ReplicationLogCleaner slow at large scale**

The FileCleanerDelegate interface has changed to operate on a batch of files at a time.  Any custom implementations that implemented the interface directly for cleaning HLog's (specified by hbase.master.logcleaner.plugins) or HFile's (specified by hbase.master.hfilecleaner.plugins) will have to be updated to implement the new interface or extend one of the included abstract base classes.


---

* [HBASE-9110](https://issues.apache.org/jira/browse/HBASE-9110) | *Critical* | **Meta region edits not recovered while migrating to 0.96.0**

Adds a step to migration where we split any outstanding WAL files.  This process is not distributed so will be slower than the distributed version that runs on cluster startup so, make sure there are few WALs to split at this step by making sure the cluster shutdown is clean pre-upgrade.


---

* [HBASE-9382](https://issues.apache.org/jira/browse/HBASE-9382) | *Major* | **replicateWALEntry doesn't use the replication handlers**

Fix regression introduced by pb styling of method names.  TODO: have client say priority of method and remove all this QosFunction reflection stuff; its brittle and messy.


---

* [HBASE-9395](https://issues.apache.org/jira/browse/HBASE-9395) | *Blocker* | **Disable Schema Change on 0.96**

Online Schema Change has been disabled. It's a feature that is not stable on unstable clusters.


---

* [HBASE-9359](https://issues.apache.org/jira/browse/HBASE-9359) | *Major* | **Convert KeyValue to Cell in hbase-client module - Result/Put/Delete, ColumnInterpreter**

The signature for several methods on Put, Result, ColumnInterpreter, and BaseRegionObserver have been modified to use the Cell interface instead of KeyValues.  Applications need to  convert KeyValue  and List\<KeyValue\> to Cell and List\<Cell\>.  The changes are summarized here: 

Put:
-  public List\<KeyValue\> get(byte[] family, byte[] qualifier)
+  public List\<Cell\> get(byte[] family, byte[] qualifier) 

Result:
-  public KeyValue[] raw() {
+  public Cell[] raw() {

-  public List\<KeyValue\> list() {
+  public List\<Cell\> list() {

-  public List\<KeyValue\> getColumn(byte [] family, byte [] qualifier) {
+  public List\<Cell\> getColumn(byte [] family, byte [] qualifier) {

-  public KeyValue getColumnLatest(byte [] family, byte [] qualifier) {
+  public Cell getColumnLatest(byte [] family, byte [] qualifier) {

-  public KeyValue getColumnLatest(byte [] family, int foffset, int flength,
+  public Cell getColumnLatest(byte [] family, int foffset, int flength,
       byte [] qualifier, int qoffset, int qlength) {

For extension interfaces BaseRegionObserver and ColumnInterpreter, we have kept both the old and new signature, including a shim that has the abstract implementation helper have the new call the old implementation. For the shim to handle the List\<KeyValue\> -\> List\<Cell\> conversion, we use an expensive naive array copy.   It is strongly recommended that the new coprocessors are updated to override the new undeprecated API.

ColumnInterpreter:  (abstract class)
-  public abstract T getValue(byte[] colFamily, byte[] colQualifier, KeyValue kv)
+  public abstract T getValue(byte[] colFamily, byte[] colQualifier, Cell kv)
 
BaseRegionObserver: (abstract class)
RegionObserver:  (inteface)
   void preGet(final ObserverContext\<RegionCoprocessorEnvironment\> c, final Get get,
-      final List\<KeyValue\> result)
+      final List\<Cell\> result)
     throws IOException;
   void postGet(final ObserverContext\<RegionCoprocessorEnvironment\> c, final Get get,
-      final List\<KeyValue\> result)
+      final List\<Cell\> result)
     throws IOException;


---

* [HBASE-9477](https://issues.apache.org/jira/browse/HBASE-9477) | *Blocker* | **Add deprecation compat shim for Result#raw and Result#list for 0.96**

The Result#raw() and Result#list APIs have been deprecated.  Users and applications should use Result#rawCells() and Result#listCells() instead.


---

* [HBASE-9468](https://issues.apache.org/jira/browse/HBASE-9468) | *Major* | **Previous active master can still serves RPC request when it is trying recovering expired zk session**

Adds option to disable master's attempt at recovering zookeeper session: i.e. just fail.  Set the fail-fast option when you have a backup master running that you can fail to.


---

* [HBASE-9482](https://issues.apache.org/jira/browse/HBASE-9482) | *Major* | **Do not enforce secure Hadoop for secure HBase**

While it is possible to run secure HBase without securing underlying filesystem, it is recommended that you run secure HBase on top of a secured HDFS cluster to provide stronger guarantees of security. In such cases, you must configure HBase services to be able to authenticate to HDFS services.

However, if the cluster hosting HBase service is protected via other means; for example if it exports only HBase services to external users; you may save some overhead by running secure HBase over unsecured HDFS. In such cases, you must ensure that the HDSF services are not accessible to external user via any means.


---

* [HBASE-9375](https://issues.apache.org/jira/browse/HBASE-9375) | *Minor* | **[REST] Querying row data gives all the available versions of a column**

Changes the default number of versions return from HColumnDescriptor.DEFAULT\_VERSIONS to 1.


---

* [HBASE-9517](https://issues.apache.org/jira/browse/HBASE-9517) | *Major* | **Include only InterfaceAudiencePublic elements in generated Javadoc**

This updates the javadoc build so that there are two versions of the javadoc generated -- one version that contains the full internal apis of hbase, and another that only includes the @InterfaceAudience.Public API that users and applications will have stronger guarantees on for compatibility between major and minor versions.  The original api location on the website will contain the more limited api while a new link off the main page will point to the full internal api.


---

* [HBASE-9505](https://issues.apache.org/jira/browse/HBASE-9505) | *Minor* | **Enable replication by default**

hbase.replication is now true by default, meaning that users can add peers without having to do anything special and that any cluster can become a slave as soon as it is running.


---

* [HBASE-9496](https://issues.apache.org/jira/browse/HBASE-9496) | *Blocker* | **make sure HBase APIs are compatible between 0.94 and 0.96**

Restore some old APIs so downstreamers can hopefully not have to have shims.


---

* [HBASE-9549](https://issues.apache.org/jira/browse/HBASE-9549) | *Major* | **KeyValue#parseColumn(byte[]) does not handle empty qualifier**

HBase supports addressing cells with an empty column qualifier, but not all edge services handle that scenario correctly. In some case, attempting to address a cell at [rowkey, fam, ] results in interaction with the entire column family.

Users of the shell, MapReduce, REST, and Thrift who wish to interact with an entire column family must use "family" instead of "family:" (notice the omitted ':'). Including the ':' will be interpreted as an interaction with the empty qualifier in the "family" column family.


---

* [HBASE-9488](https://issues.apache.org/jira/browse/HBASE-9488) | *Major* | **Improve performance for small scan**

Better perfomance for small scan (e.g. scan range is within one data block(64KB)) through setting 'small' attribute as true in Scan Object


---

* [HBASE-9369](https://issues.apache.org/jira/browse/HBASE-9369) | *Major* | **Add support for 1- and 2-byte integers in OrderedBytes and provide types**

This change adds support for 8- and 16-bit integral types. It also alters the header byte written by OrderedBytes for NAN, FIXED\_INT32, FIXED\_INT64, TEXT, BLOB\_VAR, and BLOB\_COPY values. Data of those types written using a 0.95 release will be incompatible with this change.


---

* [HBASE-9534](https://issues.apache.org/jira/browse/HBASE-9534) | *Major* | **Short-Circuit Coprocessor HTable access when on the same server**

Allow coprocessors accessing an HTable to short-circuit access to the local HRegionServer, rather than requiring the usual RPC path.


---

* [HBASE-9364](https://issues.apache.org/jira/browse/HBASE-9364) | *Minor* | **Get request with multiple columns returns partial results**

The behavior of retrieving values of all the qualifiers of a column family has been changed. Until now, "columnfamily: " ,  used to fetch all the values belonging to all the qualifiers of a column family, but now on it means empty qualifier. To retrieve all the qualifier values, just the column family has to be specified.  In summary specifying only the column family will retrieve all the values associated with all the column qualifiers and specifying "\<columnfamily\>: "  means retrieving value associated with an empty qualifier.


---

* [HBASE-9577](https://issues.apache.org/jira/browse/HBASE-9577) | *Minor* | **Log process environment variable on HBase service startup**

HBase services (Master and Regionserver) logs environment variables to the log on startup. This can be disabled by setting "hbase.envvars.logging.disabled" to "true".

If enabled, you can also exclude environment variables containing certain substrings by setting "hbase.envvars.logging.skipwords" to comma separated list of such substrings.


---

* [HBASE-8348](https://issues.apache.org/jira/browse/HBASE-8348) | *Critical* | **Polish the migration to 0.96**

Added upgrade script that must be run moving a 0.92.x or 0.94.x era hbase dataset to 0.96.x


---

* [HBASE-9597](https://issues.apache.org/jira/browse/HBASE-9597) | *Major* | **Create hbase-thrift module**

HBase's thrift server was moved into it's own module.  This has removed the dependency for Thrift in the hbase-server module.


---

* [HBASE-8711](https://issues.apache.org/jira/browse/HBASE-8711) | *Major* | **Requests count is completely off**

hbase.regionserver.metrics.period can now be used to configure how often the RS metrics are computed. Defaults to 5, was 15 before this patch.


---

* [HBASE-9684](https://issues.apache.org/jira/browse/HBASE-9684) | *Major* | **Remove MultiRowMutationProcessorMessages.proto**

**WARNING: No release note provided for this change.**


---

* [HBASE-9677](https://issues.apache.org/jira/browse/HBASE-9677) | *Major* | **Remove MasterAdmin and MasterMonitor protos; have MasterService provide these functions**

**WARNING: No release note provided for this change.**


---

* [HBASE-8710](https://issues.apache.org/jira/browse/HBASE-8710) | *Minor* | **The balancer shouldn't try balancing one node**

The balancer will not try balancing the regions when there's only one node.


---

* [HBASE-9612](https://issues.apache.org/jira/browse/HBASE-9612) | *Blocker* | **Ability to batch edits destined to different regions**

Restores being able to send many regions's worth of edits to a regionserver when running the multi call (previous it was doing a single region's worth at a time).  Required redo of the multi proto model.  Removed multiGet since it had same problem in that it only did a region's worth at a time; use the multi call instead to do multiGets.  All should be transparent to the user but those trying to do clients against hbase will see changes (flags moved from GetRequest to Get and the above mentioned refactor of the MultiRequest proto).


---

* [HBASE-9435](https://issues.apache.org/jira/browse/HBASE-9435) | *Blocker* | **Fix jersey serialization/deserialization of json objects**

This patch replaces the default jersey json marshaller/unmarshaller with jackson. It updates unit tests to include json serialization/deserialization verification. 

The patch is backward compatible except for the following:

StorageClusterStatusModel, which is broken and had to be fixed in this patch. It only shows one node in the liveNodes field.

Previously when submitting requests represented in json, some fields prefixed with the '@' sign were accepted as equivalent to the same field name without the prefix. This was unintended and likely caused by a bug in Jersey. This has been rectified and no longer supported. It should be noted that responses represented in json remain the same (no '@' prefix).



