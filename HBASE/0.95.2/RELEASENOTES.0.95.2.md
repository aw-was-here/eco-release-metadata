
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
# Apache HBase  0.95.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-5959](https://issues.apache.org/jira/browse/HBASE-5959) | *Major* | **Add other load balancers**

Added a new StochasticLoadBalancer that when enabled will perform a randomized search for the optimal cluster balance.  The new balancer takes into account data locality, storefile size, memstore size, and the evenness of tables over region servers when trying potential new cluster states.

To enable the new balancer set hbase.master.loadbalancer.class to org.apache.hadoop.hbase.master.balancer.StochasticLoadBalancer . It is also recommended to set hbase.master.loadbalance.bytable to false .  Lots of different configuration options can be tuned to prioritize costs differently.  Explanations of all of the configuration options are available  on the JavaDoc for StochasticLoadBalancer.

StochasticLoadBalancer is the default in 0.96.0


---

* [HBASE-7902](https://issues.apache.org/jira/browse/HBASE-7902) | *Minor* | **deletes may be removed during minor compaction,  in non-standard compaction schemes [rename enums]**

committed to 0.95 and trunk last week


---

* [HBASE-8723](https://issues.apache.org/jira/browse/HBASE-8723) | *Blocker* | **HBase Intgration tests are failing because of new defaults.**

Changed default number of RPC reties to 30 to ensure the client doesn't give up too soon during a region fail over.


---

* [HBASE-8696](https://issues.apache.org/jira/browse/HBASE-8696) | *Major* | **Fixup for logs that show when running hbase-it tests.**

Changes format of log messages; shorter thread names, favors encoded region name rather than full name or full descriptor, etc.


---

* [HBASE-6295](https://issues.apache.org/jira/browse/HBASE-6295) | *Major* | **Possible performance improvement in client batch operations: presplit and send in background**

The puts are now streamed, i.e. sent asynchronously to the region servers if autoflush it set to false. If a region server is slow or does not respond, its puts are kept into the write buffer while the others are sent to these respective region server, until the write buffer is full. This feature is keeps the semantic of the interface already existing in 0.94 when using autoflush.


---

* [HBASE-8692](https://issues.apache.org/jira/browse/HBASE-8692) | *Major* | **[AccessController] Restrict HTableDescriptor enumeration**

This change adds support for restricting access to table schema. Only a user with GLOBAL ADMIN privilege can enumerate the full list of table schemas. If passed a list of specific tables, the AccessController will check that the user has either GLOBAL ADMIN privs, or TABLE ADMIN or TABLE CREATE privs for all of the listed tables before allowing the request.


---

* [HBASE-8809](https://issues.apache.org/jira/browse/HBASE-8809) | *Major* | **Include deletes in the scan (setRaw) method does not respect the time range or the filter**

"Raw" scans (Scan.setRaw(true)), now honor the scan's time range if specified.
Previously the time range would be ignored.


---

* [HBASE-8501](https://issues.apache.org/jira/browse/HBASE-8501) | *Major* | **The hbase zkcli will connection failure the first and the second ip from ZooKeeperMainServerArg return connection string**

Formats the ensemble string we pass to the zookeeper constructor so instead of server1,server2,server3:port, it is instead server1:port,server2:port, etc., as zk expects in its connectString parameter.


---

* [HBASE-8776](https://issues.apache.org/jira/browse/HBASE-8776) | *Major* | **tweak retry settings some more (on trunk and 0.94)**

Retry backoff intervals and retry count were set in such manner that at most ~5.5 minutes are spent retrying. On 94 this was adjusted up (from 1~min.), and on trunk/95 - down (from ~40min).


---

* [HBASE-8861](https://issues.apache.org/jira/browse/HBASE-8861) | *Major* | **Remove ReplicationState completely**

stop\_replication and start\_replication aren't available anymore due to the confusion it was causing. The right way to stop/start replication is to disable\_peer and enable\_peer, for each peers.


---

* [HBASE-8888](https://issues.apache.org/jira/browse/HBASE-8888) | *Major* | **Tweak retry settings some more, \*some more\***

Changes retries so we ram up quickly from a pause of 100ms between retries to 10 seonds between retries.  Once at ten seconds, we keep retrying unto the maxium of 35 times by default which works out to about five minutes.  Change this configuration to suit your work load.


---

* [HBASE-8915](https://issues.apache.org/jira/browse/HBASE-8915) | *Minor* | **protobuf message style**

Reformat of proto labels to suit protobuf style


---

* [HBASE-8375](https://issues.apache.org/jira/browse/HBASE-8375) | *Major* | **Durability setting per table**

Added Durability setting for table with HTableDescriptor.setDurability() API. Deprecated HTableDescriptor.setDeferredLogFlush(), and shell usage in favor of the new durability setting. Now, durability can be configured per table and per mutation.


---

* [HBASE-8662](https://issues.apache.org/jira/browse/HBASE-8662) | *Major* | **[rest] support impersonation**

With the patch, if "hbase.rest.authentication.type" is set to "kerberos" and security is turned on, REST server will impersonate the authenticated user in access HBase.

The RPC layer proxy user settings should be configured properly to allow impersonation.


---

* [HBASE-8877](https://issues.apache.org/jira/browse/HBASE-8877) | *Major* | **Reentrant row locks**

Changed the coprocessor RegionObserver methods preBatchMutate and postBatchMutate to remove the lock ids from the methods as lock ids are not longer used.


---

* [HBASE-8962](https://issues.apache.org/jira/browse/HBASE-8962) | *Minor* | **Clean up code and remove regular log splitting**

As distributed log splitting is getting more and more stable, non-distributed log splitting is removed and not supported any more.  The configuration hbase.master.distributed.log.splitting is also removed, which used to the configuration to turn distributed log splitting on (true) and off (false).


---

* [HBASE-9009](https://issues.apache.org/jira/browse/HBASE-9009) | *Major* | **Disable TestMultiTableInputFormat**

Removed this set of tests.


---

* [HBASE-8764](https://issues.apache.org/jira/browse/HBASE-8764) | *Major* | **Some MasterMonitorCallable should retry**

Add retrying of Master operations; helps when running hbase-it and chaos monkey kills
Master or Master is not yet up ready to take on operations.

Refactors ServerCallable.  ServerCallable had a public call() method and then beside
it a withRetries() and also a withoutRetries().  Confusing.  Also the rpc retrying
with its specific handling of server exception returns was not reusable buried down
in ServerCallable guts.

This patch moves the rpc retrying code out of ServerCallable into a utility
RpcRetryingCaller class (A 'Caller' runs the 'Callable'). ServerCallable shrinks,
implements a new RetryingCallable Interface, and becomes RegionServerCallable, a class
that is just about Calling -- no rpc nor retries, a Callable class with added details
on where the Callable is to be applied (table name and row), -- etc.

This pattern is then applied to Master operations.  Master operations were not retried
previously.  The Master operation Callables are now like RegionServerCallable (though
they need to carry way less detail), implement RetryingCallable, and are passed to
RpcRetryingCaller so they are retried.  Changed some exceptions so they now implement
DoNotRetryException because not all master operations should be retried.


---

* [HBASE-7826](https://issues.apache.org/jira/browse/HBASE-7826) | *Minor* | **Improve Hbase Thrift v1 to return results in sorted order**

When passing a TScan object, it's possible to ask for sortColumns. The result of doing this will populate TRowResult's "sortedColumns" instead of "columns", where the former is a list of the new type TColumn that wraps a column name and a TCell. 
Backward compatibility is kept. Old clients will work against thrift servers with this patch, but new clients cannot request sorted columns on an old thrift server.


---

* [HBASE-9049](https://issues.apache.org/jira/browse/HBASE-9049) | *Major* | **Generalize ServerCallable creation to support custom callables**

Support custom RpcRetryingCaller via a configurable factory.


---

* [HBASE-7634](https://issues.apache.org/jira/browse/HBASE-7634) | *Major* | **Replication handling of changes to peer clusters is inefficient**

This change has an impact on the number of watches set on the ${zookeeper.znode.parent}/rs node in ZK in a replication slave cluster (i.e. a cluster that is being replicated to). Every region server in each master cluster will place a watch on the rs node of each slave node. No additional configuration is necessary for this, but this could potentially have an impact the performance and/or hardware requirements of ZK on very large clusters.


---

* [HBASE-6891](https://issues.apache.org/jira/browse/HBASE-6891) | *Critical* | **Hadoop 2 unit test failures**

HBase unit test now pass when run against hadoop2 (hadoop-2.0..5-alpha)


---

* [HBASE-9119](https://issues.apache.org/jira/browse/HBASE-9119) | *Major* | **hbase.mapreduce.hfileoutputformat.blocksize should configure with blocksize of a table**

While writing hfiles from HFileOutputFormat forcing blocksize from table schema(HColumnDescriptor). Even if we configure hbase.mapreduce.hfileoutputformat.blocksize during bulkload/import it will be overridden with actual block size from table schema.


---

* [HBASE-8957](https://issues.apache.org/jira/browse/HBASE-8957) | *Major* | **TestDrainingServer. testDrainingServerWithAbort fails**

Make it so tests run WITHOUT short circuit reads by default.


---

* [HBASE-8778](https://issues.apache.org/jira/browse/HBASE-8778) | *Critical* | **Region assigments scan table directory making them slow for huge tables**

Table descriptors are now moved inside hdfs from residing directly in the table directory (alongside region directories) to being in a well known subdirectory called ".tabledesc".  For example, instead of /hbase/exampleTable/.tableinfo.0000000003 the file would be /hbase/exampleTable/.tabledesc/.tableinfo.0000000003 after this release.  The same will be true for snapshots.  The first active master to be started up will move these files for existing tables and snapshots.


---

* [HBASE-9129](https://issues.apache.org/jira/browse/HBASE-9129) | *Blocker* | **Scanner prefetching leaks scanners.**

Reverted Scanner Pre-fetching


---

* [HBASE-7325](https://issues.apache.org/jira/browse/HBASE-7325) | *Minor* | **Replication reacts slowly on a lightly-loaded cluster**

ReplicationSource won't backoff sleeping time if it can correctly read from the WAL even though it's not replicating anything. In that kind of situation it will put more load on the NN. replication.source.sleepforretries can still be tweaked to set the minimal sleep time.


---

* [HBASE-7183](https://issues.apache.org/jira/browse/HBASE-7183) | *Major* | **print WARN message if hbase.replication.sizeOfLogQueue is too big**

When a replication source's queue is higher than replication.source.log.queue.warn (default 2), it will print a WARN in the log as a new log is added.


---

* [HBASE-8224](https://issues.apache.org/jira/browse/HBASE-8224) | *Blocker* | **Publish hbase build against h1 and h2 adding '-hadoop1' or '-hadoop2' to version string**

When we publish artifacts, we add a -hadoop1 or -hadoop2 to the version to distingush hbase compiled against hadoop1 from that compiled against hadoop2.  This issue adds a script that runs against checked out poms to derive poms that have the -hadoop1 or -hadoop2 modification made and they add/remove to the poms the appropriate set of modules to bundle.  See refguide for final doc on how to make use of this script building (TODO); refguide will replace the notes here.


---

* [HBASE-6580](https://issues.apache.org/jira/browse/HBASE-6580) | *Major* | **Deprecate HTablePool in favor of HConnection.getTable(...)**

This issue introduces a few new APIs:
\* HConnectionManager:
{code}
    public static HConnection createConnection(Configuration conf)
    public static HConnection createConnection(Configuration conf, ExecutorService pool)
{code}
\* HConnection:
{code}
    public HTableInterface getTable(String tableName) throws IOException
    public HTableInterface getTable(byte[] tableName) throws IOException
    public HTableInterface getTable(String tableName, ExecutorService pool) throws IOException
    public HTableInterface getTable(byte[] tableName, ExecutorService pool) throws IOException
{code}

By default HConnectionImplementation will create an ExecutorService when needed. The ExecutorService can optionally passed be passed in.
HTableInterfaces are retrieved from the HConnection. By default the HConnection's ExecutorService is used, but optionally that can be overridden for each HTable.


---

* [HBASE-9142](https://issues.apache.org/jira/browse/HBASE-9142) | *Critical* | **Mutation#getFamilyMap() return type change between HBase 94 and 96 breaks downstream apps**

HBASE-9142 Mutation#getFamilyMap() return type change between HBase 94 and 96 breaks downstream apps

For 0.95/0.96, we need to preserve the getFamilyMap signature through a deprecation cycle.  The new
method needs to be present alongside the old in 0.95, so we rename the method with the new signature
to getFamilyCellMap() in both trunk and 0.95, and restore a deprecated version of the old in 0.95.


---

* [HBASE-7639](https://issues.apache.org/jira/browse/HBASE-7639) | *Major* | **Enable online schema update by default**

Online schema chages are now enabled by default.


---

* [HBASE-9097](https://issues.apache.org/jira/browse/HBASE-9097) | *Major* | **Set HBASE\_CLASSPATH before rest of the classpath**

Move HBASE\_CLASSPATH to the beginning of the CLASSPATH in bin/hbase script.


---

* [HBASE-8018](https://issues.apache.org/jira/browse/HBASE-8018) | *Major* | **Add "Flaky Testcase Detector" tool into dev-tools**

Tool that looks at jenkins builds and identifies flakey tests or tests that are 'invisibles' -- not mentioned in the test listing but that nonetheless cause the build to fail.  See the README.md under dev-tools/jenkins-tools for how to build and use.


---

* [HBASE-9091](https://issues.apache.org/jira/browse/HBASE-9091) | *Major* | **Update ByteRange to maintain consumer's position**

Extract ByteRange out to an interface. Existing implementation becomes SimpleByteRange. Extend ByteRange interface with PositionedByteRange. Includes a position marker for tracking a consumer's place within a range. Implement SimplePositionedByteRange as subclass of SimpleByteRange. Also update and clarify documentation. This class starts to become a mutable alternative to java.nio.HeapByteBuffer.


---

* [HBASE-8201](https://issues.apache.org/jira/browse/HBASE-8201) | *Major* | **OrderedBytes: an ordered encoding strategy**

OrderedBytes provides a data encoding format in which the resulting byte[] retains the same sort order as the natural types. Encoded formats can be inspected and decoded without forward knowledge of their content. Implementations are provided for integer and floating point numbers with 32- and 64-bits of precision, numeric values of arbitrary precision, Strings, and byte[]s. Utility methods for counting and skipping encoded entries are also provided.

Most of the encoding formats are modeled after the SQLite4 key encoding format. Implementations of variable-length encodings are very similar. Fixed-width encodings are modeled after the fixed-width formats provided by the Orderly library. Javadocs on the OrderedBytes class describe the encoding format in detail. See http://sqlite.org/src4/doc/trunk/www/key\_encoding.wiki for additional context.

Notable deviation from the sqlite4 spec include:
 - Different header byte values. This is to give users more room to place their own, custom encoding extensions as they see fit.
 - BlobCopy is modified to include a termination byte of 0x00 in descending order. This is necessary in order to maintain reverse sort order of empty values. It is also renamed from "BlobLast".
 - Support for fixed-length integer and float encodings. Based on implementations from the Orderly library.


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

* [HBASE-8663](https://issues.apache.org/jira/browse/HBASE-8663) | *Critical* | **a HBase Shell command to list the tables replicated from current cluster**

list\_replicated\_tables can now be used in the shell to get the list of tables and families that are configured to be replicated, instead of having to describe all the tables and manually filter those that have a replication scope of 1


---

* [HBASE-8409](https://issues.apache.org/jira/browse/HBASE-8409) | *Blocker* | **Security support for namespaces**

This patch introduces security privileges to create, alter or drop namespaces. When security is enabled only global admin is allowed to do such operations. Richer namespace privileges will be introduced in HBASE-9206.


---

* [HBASE-9128](https://issues.apache.org/jira/browse/HBASE-9128) | *Critical* | **Drop the '.' prefix from names under hbase.rootdir after namespaces goes in**

Changes the dir names under hbase.rootdir dropping the no longer needed prefix '.' and renaming a few.

 ".logs" -\> "WALs";
".splitlog" -\> "splitWAL"
".corrupt" -\> "corrupt"
 ".oldlogs" -\>  "oldWALs"
 ".data" -\> "data"
".archive" -\> "archive"


---

* [HBASE-9121](https://issues.apache.org/jira/browse/HBASE-9121) | *Major* | **Update HTrace to 2.00 and add new example usage.**

Updated to HTrace 2.00.


---

* [HBASE-9193](https://issues.apache.org/jira/browse/HBASE-9193) | *Major* | **Make what Chaos monkey actions run configurable per test.**

It is now possible to choose which ChaosMonkey you want to run with an integration test.



