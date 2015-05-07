
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
#  1.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-13517](https://issues.apache.org/jira/browse/HBASE-13517) | *Major* | **Publish a client artifact with shaded dependencies**

HBase now provides added convenience artifacts that shade most dependencies. These jars hbase-shaded-client and hbase-shaded-server are meant to be used when dependency conflicts can not be solved any other way. The normal jars hbase-client and hbase-server should still be preferred when possible.

Do not use hbase-shaded-server or hbase-shaded-client inside of a co-processor as bad things will happen.


---

* [HBASE-13481](https://issues.apache.org/jira/browse/HBASE-13481) | *Major* | **Master should respect master (old) DNS/bind related configurations**

Master now honors configuration options as was before 1.0.0 releases:
hbase.master.ipc.address
hbase.master.dns.interface
hbase.master.dns.nameserver
hbase.master.info.bindAddress
This jira also adds hbase.master.hostname parameter as an extension to HBASE-12954.


---

* [HBASE-13469](https://issues.apache.org/jira/browse/HBASE-13469) | *Major* | **[branch-1.1] Procedure V2 - Make procedure v2 configurable in branch-1.1**

In 1.1 release, we implemented Procedure V2 to execute table DDL operations (create/delete/modify/truncate/enable/disable table; add/delete/modify column) to replace 1.0 release's handler implementation. By default, Procedure V2 feature is enabled in 1.1 release. We provide a config for customer to go back to 1.0 release implementation.
The "hbase.master.procedure.tableddl" configuration accepts 2 values to change the behavior (other values treats as default - Procedure "enabled"):
(1). "unused" 
(1a). uses handler implementation to execute new table DDLs; 
(1b).in case of unclean shutdown (crash), we could have unfinished DDLs in Procedure store, Procedure code will replay those operations and completes them.
(2). "disabled" - (in case customer run into some problem and want to completely disable the Procedure V2 feature), 
(2a). this value would use handler implementation to execute new table DDLs; 
(2b). in case of unclean shutdown (crash), we could have unfinished DDLs in Procedure store, to prevent possible problem, the files in procedure store (WAL) will be deleted so that we would get into a clean state when the Procedure is enabled.
Note: 
(A). This configuration is only checked during master start up (in constructor) - so you have to re-start master after changing the value
(B). In case of crash and unclean shut down, HBCK is needed to clean up corruptions. "disable" case has more chance to lead to half-completed operation and hence customer should not be surprised when running HBCK is needed.


---

* [HBASE-13453](https://issues.apache.org/jira/browse/HBASE-13453) | *Critical* | **Master should not bind to region server ports**

In 1.0.x, master by default binds to the region server ports (both rpc and info). This change brings back the usage of old master rpc and info ports in 1.1+ and master (2.0) branches. The motivation for this change is to ease the life of the user so that he does not need to do anything to bring up a RS on the same host and also to make the migration from 0.98 to 1.1  hassle free.  However, the users going from 1.0 to 1.1 would see the change in the master ports.


---

* [HBASE-13419](https://issues.apache.org/jira/browse/HBASE-13419) | *Major* | **Thrift gateway should propagate text from exception causes.**

Compose thrift exception text from the text of the entire cause chain of the underlying exception.


---

* [HBASE-13362](https://issues.apache.org/jira/browse/HBASE-13362) | *Major* | **Set max result size from client only (like scanner caching).**

This introduces a new config option: hbase.server.scanner.max.result.size
This setting enforces a maximum result size (in bytes), when reached the server will return the results is has so far.
This is a safety setting and should be kept large. The default is inifinite in 0.98 and 1.0.x and 100mb in 1.1 and later.

Use hbase.client.scanner.max.result.size instead to enforce practical chunk sizes of a few mb (defaults to 2mb)


---

* [HBASE-13331](https://issues.apache.org/jira/browse/HBASE-13331) | *Blocker* | **Exceptions from DFS client can cause CatalogJanitor to delete referenced files**

Fixes an issue where files from a split region that were still referenced were erroneously deleted leading to data loss.


---

* [HBASE-13316](https://issues.apache.org/jira/browse/HBASE-13316) | *Minor* | **Reduce the downtime on planned moves of regions**

When issuing an Admin.move command the RegionServer that receive the region will try and open the StoreFiles of that region to prime the block cache with index blocks.


---

* [HBASE-13307](https://issues.apache.org/jira/browse/HBASE-13307) | *Major* | **Making methods under ScannerV2#next inlineable, faster**

Made methods smaller under Scanner#next so inlinable and compilable (was getting 'too big to compile' from hotspot). Use of unsafe to parse shorts rather than use BB#getShort... faster, etc.


---

* [HBASE-13298](https://issues.apache.org/jira/browse/HBASE-13298) | *Critical* | **Clarify if Table.{set\|get}WriteBufferSize() is deprecated or not**

Deprecate said methods. They were mistakenly included in Table Interface.


---

* [HBASE-13289](https://issues.apache.org/jira/browse/HBASE-13289) | *Major* | **typo in splitSuccessCount  metric**

In hbase 1.0.0, 0.98.10, 0.98.10.1, 0.98.11, and 0.98.12 'splitSuccessCount' was misspelled as 'splitSuccessCounnt'


---

* [HBASE-13275](https://issues.apache.org/jira/browse/HBASE-13275) | *Major* | **Setting hbase.security.authorization to false does not disable authorization**

Prior to this change the configuration setting 'hbase.security.authorization' had no effect if security coprocessor were installed. The act of installing the security coprocessors was assumed to indicate active authorizaton was desired and required. Now it is possible to install the security coprocessors yet have them operate in a passive state with active authorization disabled by setting 'hbase.security.authorization' to false. This can be useful but is probably not what you want. For more information, consult the Security section of the HBase online manual. 

'hbase.security.authorization' defaults to true for backwards comptatible behavior.


---

* [HBASE-13273](https://issues.apache.org/jira/browse/HBASE-13273) | *Major* | **Make Result.EMPTY\_RESULT read-only; currently it can be modified**

The Result.EMPTY\_RESULT object is now immutable. In previous releases, the object could be modified by a caller to no longer be empty. Code that relies on this behavior will now receive an UnsupportedOperationException.


---

* [HBASE-13270](https://issues.apache.org/jira/browse/HBASE-13270) | *Major* | **Setter for Result#getStats is #addResults; confusing!**

Deprecates Result#addResults in favor of Result#setStatistics


---

* [HBASE-13187](https://issues.apache.org/jira/browse/HBASE-13187) | *Critical* | **Add ITBLL that exercises per CF flush**

Pass the -D flag generator.multiple.columnfamilies on the command-line if you want the generator to write three column families rather than the default one. When set, we will write the usual 'meta' column family and use it checking linked-list is wholesome but we will also write a 'tiny' column family and a 'big' column family to provoke uneven flushing; good for testing the flush-by-columnfamily feature.


---

* [HBASE-13170](https://issues.apache.org/jira/browse/HBASE-13170) | *Major* | **Allow block cache to be external**

HBase can use memcached as an external block cache. To use this change your config to set hbase.blockcache.use.external to true and hbase.cache.memcached.servers to contain the list of memcached servers to use.


---

* [HBASE-13149](https://issues.apache.org/jira/browse/HBASE-13149) | *Blocker* | **HBase MR is broken on Hadoop 2.5+ Yarn**

In HBase 1.1.0 and above we have upgraded the version of Jackson dependencies (jackson-core-asl, jackson-mapper-asl, jackson-jaxrs and jackson-xc) from 1.8.8 to 1.9.13. This is to follow the upgrade to Jackson 1.9.13 in Hadoop 2.5 and above which causes Jackson class incompatibility for HBase as reported in HBASE-13149.  Refer to HADOOP-10104 and YARN-2092 for additional information. Jackson1.9.13 is not completely backward compatible with the prior version 1.8.8 used in HBase. See the Compatibility reports attached in HBASE-13149 and http://svn.codehaus.org/jackson/trunk/release-notes/VERSION for more information.

This upgrade does not have direct impact on HBase users and HBase applications in most cases. In the rare case where your HBase application uses Jackson directly AND your application has compatibility issue with Jackson 1.9.13, you can do the following to mitigate the problem.

1. If you are on Hadoop 2.5 or above, and your HBase application involves running Yarn jobs, we recommend you update your application to use Jackson 1.9.13. You may be able to explore classpath isolation options (e.g. HADOOP-10893) or have your own classpath isolation strategy that works for you, but the general recommendation is that you upgrade to Jackson 1.9.13.
2. You may choose to continue using Jackson 1.8.8 and not to use Jackson 1.9.13 in your classpath.  You can also choose to replace the Jackson 1.9.13 jars in $HBASE\_HOME/lib with 1.8.8 jars.  It can work for you in the following cases:
a) You are on a Hadoop version earlier than Hadoop 2.5,  or
b) You are on Hadoop 2.5 or above, but your HBase application does not involve running Yarn jobs.
3. You may experiment with further isolation using the shaded jars introduced with 1.1.0 via HBASE-13517.

Note that it may not be tested or guaranteed that using Jackson 1.8.8 in $HBASE\_HOME/lib will work in future HBase releases.
It is recommended that your HBase application matches the Jackson version provided in HBase.

In HBase 0.98.x and HBase 1.0.x, we have NOT upgraded the version of Jackson dependencies. If you are on Hadoop 2.5 or above, and your HBase application involves running Yarn jobs, you may encounter Jackson class incomparability issue, as reported in HBASE-13149.

You can do the following to mitigate the problem:
1. Use 'hadoop jar' command to run your HBase jobs.
2. Explore classpath isolation options (e.g. HADOOP-10893) or have your own classpath isolation strategy that works for you.
3. You can also choose to replace the Jackson 1.8.8 jars in $HBASE\_HOME/lib with 1.9.13 jars from your Hadoop lib directory. We have tested HBase 0.98 with Jackson 1.9.13.


---

* [HBASE-13142](https://issues.apache.org/jira/browse/HBASE-13142) | *Major* | **[PERF] Reuse the IPCUtil#buildCellBlock buffer**

Adds buffer reuse sending Cell results. It is on by default and should not need configuration. Improves GC profile and ups throughput. The benefit gets better the larger the row size returned.

The buffer reservoir is bounded at a maximum count after which we will start logging at WARN level that the reservoir is running at capacity (returned buffers will be discarded and not added back to the reservoir pool). Default maximum is twice the handler count: i.e. 2 * hbase.regionserver.handler.count. This should be more than enough. Set the maximum with the new configuration: hbase.ipc.server.reservoir.max

The reservoir will not cache buffers in excess of hbase.ipc.server.reservoir.max.buffer.size  The default is 10MB. This means that if a row is very large, then we will allocate a buffer of the average size that is currently in the pool and we will then resize it till we can accommodate the return. These resizes are expensive. The resultant buffer will be used and then discarded.

To check how the reservoir is doing, enable trace level logging for a few seconds on a regionserver. You can do this from the regionserver UI. See 'Log Level'. Set org.apache.hadoop.hbase.io.BoundedByteBufferPool to TRACE. The BoundedByteBufferPool will spew report to the log. Disable the TRACE level and then check the log. You'll see allocation rate, size of pool, size of buffers in pool, etc.


---

* [HBASE-13118](https://issues.apache.org/jira/browse/HBASE-13118) | *Major* | **[PE] Add being able to write many columns**

Adds a --columns option to PE so you can write more than one column (changes default qualifier from 'data' to '0').


---

* [HBASE-13090](https://issues.apache.org/jira/browse/HBASE-13090) | *Major* | **Progress heartbeats for long running scanners**

Previously, there was no way to enforce a time limit on scan RPC requests. The server would receive a scan RPC request and take as much time as it needed to accumulate enough results to reach a limit or exhaust the region. The problem with this approach was that, in the case of a very selective scan, the processing of the scan could take too long and cause timeouts client side.

With this fix, the server will now enforce a time limit on the execution of scan RPC requests. When a scan RPC request arrives to the server, a time limit is calculated to be half of whichever timeout value is more restictive between the configurations ("hbase.client.scanner.timeout.period" and "hbase.rpc.timeout"). When the time limit is reached, the server will return whatever results it has accumulated up to that point. The results may be empty.

To ensure that timeout checks do not occur too often (which would hurt the performance of scans), the configuration "hbase.cells.scanned.per.heartbeat.check" has been introduced. This configuration controls how often System.currentTimeMillis() is called to update the progress towards the time limit. Currently, the default value of this configuration value is 10000. Specifying a smaller value will provide a tighter bound on the time limit, but may hurt scan performance due to the higher frequency of calls to System.currentTimeMillis().

Protobuf models for ScanRequest and ScanResponse have been updated so that heartbeat support can be communicated. Support for heartbeat messages is specified in the request sent to the server via ScanRequest.Builder#setClientHandlesHeartbeats. Only when the server sees that ScanRequest#getClientHandlesHeartbeats() is true will it send heartbeat messages back to the client. A response is marked as a heartbeat message via the boolean flag ScanResponse#getHeartbeatMessage


---

* [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | *Trivial* | **Add "HBase Configuration" link missing on the table details pages**

Add a '/conf' link to UI


---

* [HBASE-13044](https://issues.apache.org/jira/browse/HBASE-13044) | *Minor* | **Configuration option for disabling coprocessor loading**

This change adds two new configuration options:
- "hbase.coprocessor.enabled" controls globally if any coprocessors will be loaded. Set to "false" to disable. Defaults to "true" for compatibility with previous releases.
- "hbase.coprocessor.user.enabled" controls if any user (aka table) coprocessors will be loaded. Set to "false" to disable. Defaults to "true" for compatibility with previous releases.


---

* [HBASE-13030](https://issues.apache.org/jira/browse/HBASE-13030) | *Major* | **[1.0.0 polish] Make ScanMetrics public again and align Put 'add' with Get, Delete, etc., addColumn**

Miscellaneous cleanup. Make ScanMetrics audience public -- was mistakenly made private -- and make their access more amenable. Make Put like Delete and Get adding addColumn method (deprecating add). Make the ByteBuffer returned by Cell read only. Add to CellUtil a method to get a ByteRange on a value.


---

* [HBASE-13008](https://issues.apache.org/jira/browse/HBASE-13008) | *Minor* | **Better default for hbase.regionserver.regionSplitLimit parameter.**

The configuration parameter "hbase.regionserver.regionSplitLimit", the number of regions a regionserver can open before splitting on the server is stopped to limit further region count growth, was lowered from Integer.MAX\_VALUE (2147483647) to a much more reasonable 1000, and documented in hbase-defaults.xml.


---

* [HBASE-12978](https://issues.apache.org/jira/browse/HBASE-12978) | *Blocker* | **Region goes permanently offline (WAS: hbase:meta has a row missing hregioninfo and it causes my long-running job to fail)**

Fixes a bug where an optimization that keeps our hfile indexes files small chanced upon an entry that has special meaning in the meta table making it so  we failed to find a region entry in an hbase:meta HFile (though the entry was present). Once we'd happened upon this condition, the region would be unfindable thereafter making it so the region was considered offline. The bug is in branch-1+ hbase only.


---

* [HBASE-12976](https://issues.apache.org/jira/browse/HBASE-12976) | *Major* | **Set default value for hbase.client.scanner.max.result.size**

With this setting defaulted now, scanner caching should be set to large value unless the caller knows how many rows it needs/expects back.


---

* [HBASE-12961](https://issues.apache.org/jira/browse/HBASE-12961) | *Minor* | **Negative values in read and write region server metrics**

Change read and write request count in ServerLoad from int to long


---

* [HBASE-12954](https://issues.apache.org/jira/browse/HBASE-12954) | *Minor* | **Ability impaired using HBase on multihomed hosts**

The following config is added by this JIRA:

hbase.regionserver.hostname

This config is for experts: don't set its value unless you really know what you are doing.
When set to a non-empty value, this represents the (external facing) hostname for the underlying server.
See https://issues.apache.org/jira/browse/HBASE-12954 for details.

Caution: please make sure rolling upgrade succeeds before turning on this feature.


---

* [HBASE-12899](https://issues.apache.org/jira/browse/HBASE-12899) | *Major* | **HBase should prefix htrace configuration keys with "hbase.htrace" rather than just "hbase."**

All htrace related configuration options are renamed to have "hbase.htrace" prefix instead of just "htrace".


---

* [HBASE-12897](https://issues.apache.org/jira/browse/HBASE-12897) | *Major* | **Minimum memstore size is a percentage**

This change lowers the minimum acceptable configured memstore heap percentage from 5% (0.05f) (10% (0.1f) in 0.98) to 0% (0.0f), and in branch 0.98 lowers the maximum acceptable percentage from 90% (0.9f) to 80% (0.8f).


---

* [HBASE-12869](https://issues.apache.org/jira/browse/HBASE-12869) | *Major* | **Add a REST API implementation of the ClusterManager interface**

Adds an implementation of ClusterManager to control REST API-managed HBase clusters.


---

* [HBASE-12867](https://issues.apache.org/jira/browse/HBASE-12867) | *Major* | **Shell does not support custom replication endpoint specification**

Adds support to add\_peer in hbase shell to add a custom replication endpoint from HBASE-12254.


---

* [HBASE-12848](https://issues.apache.org/jira/browse/HBASE-12848) | *Major* | **Utilize Flash storage for WAL**

For users on a version of Hadoop that supports tiered storage policies (i.e. Apache Hadoop 2.6.0+), HBase now allows users to opt-in to having the write ahead log placed on the SSD tier. Users on earlier versions of Hadoop will be unable to take advantage of this feature.

Use of tiered storage is controlled by a new RegionServer config, hbase.wal.storage.policy. It defaults to the value 'NONE', which will rely on HDFS defaults for a policy decision.

User can specify ONE\_SSD or ALL\_SSD as the value:
ONE\_SSD: place only one replica of WAL files in SSD and the remaining in default storage
ALL\_SSD: all replica for WAL files are placed on SSD

See [the HDFS docs on storage policy|http://hadoop.apache.org/docs/r2.6.0/hadoop-project-dist/hadoop-hdfs/ArchivalStorage.html]


---

* [HBASE-12831](https://issues.apache.org/jira/browse/HBASE-12831) | *Major* | **Changing the set of vis labels a user has access to doesn't generate an audit log event**

Auditing of visibility label administration.

Administrative actions on visibility labels, such as creation of a label or changing the set of labels a user or group may access, are now sent to the audit log. The audit messages should be similar to those already tracked by the access controller.


---

* [HBASE-12798](https://issues.apache.org/jira/browse/HBASE-12798) | *Major* | **Map Reduce jobs should not create Tables in setConf()**

TableInputFormatBase#initialize() has been added:

  /**
   * This method will be called when any of the following are referenced, but not yet initialized:
   * admin, regionLocator, table. Subclasses will have the opportunity to call
   * {@link #initializeTable(Connection, TableName)}
   */
  protected void initialize() {


---

* [HBASE-12774](https://issues.apache.org/jira/browse/HBASE-12774) | *Minor* | **Fix the inconsistent permission checks for bulkloading.**

Bulk load permissions are changed from requiring both C and W to only require C.


---

* [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | *Major* | **Visibility Labels:  support visibility labels for user groups.**

VisibilityClient API and shell commands can be used to grant and clear visibility authorizations of a group.
e.g. 
set\_auths '@group1', ['SECRET','PRIVATE']
get\_auths '@group1'
clear\_auths '@group1', ['SECRET','PRIVATE']

When checking visibility authorizations of a user, the server will include the visibility authorizations of the groups of which the user is a member, together with the user's own.

On the other hand, get\_auths 'user1' will only get user1's own visibility authorizations.
clear\_auths 'user1' will only clear user1's own visibility authorizations.
The visibility authorizations of a group can be changed by invoking the API or command on the '@group1' itself.

Note:

The following two methods have been deprecated in VisibilityLabelService from 0.98.10 and will be removed in 2.0+ releases.
getAuths(byte[], boolean)
havingSystemAuth(byte[])

Use the following methods instead:
getUserAuths(byte[], boolean)
getGroupAuths(String[], boolean)
havingSystemAuth(User)


---

* [HBASE-12731](https://issues.apache.org/jira/browse/HBASE-12731) | *Major* | **Heap occupancy based client pushback**

This feature incorporates reported regionserver heap occupancy in the (optional) client pushback calculations. If client pushback is enabled, the exponential backoff policy will take heap occupancy into account, should it exceed "hbase.heap.occupancy.low\_water\_mark" percentage of the heap (default 0.95). Once above the low water mark, heap occupancy is an additional factor scaling from 0.1 up to 1.0 at "hbase.heap.occupancy.high\_water\_mark" (default 0.98). At or above the high water mark the client will use the maximum configured backoff.


---

* [HBASE-12728](https://issues.apache.org/jira/browse/HBASE-12728) | *Blocker* | **buffered writes substantially less useful after removal of HTablePool**

In our pre-1.0 API, HTable is considered a light-weight object that consumed by a single thread at a time. The HTablePool class provided a means of sharing multiple HTable instances across a number of threads. As an optimization, HTable managed a "write buffer", accumulating edits and sending a "batch" all at once. By default the batch was sent as the last step in invocations of put(Put) and put(List<Put>). The user could disable the automatic flushing of the write buffer, retaining edits locally and only sending the whole "batch" once the write buffer has filled or when the flushCommits() method in invoked explicitly. Explicit or implicit batch writing was controlled by the setAutoFlushTo(boolean) method. A value of true (the default) had the write buffer flushed at the completion of a call to put(Put) or put(List<Put>). A value of false allowed for explicit buffer management. HTable also exposed the buffer to consumers via getWriteBuffer().

The combination of HTable with setAutoFlushTo(false) and the HTablePool provided a convenient mechanism by which multiple "Put-producing" threads could share a common write buffer. Both HTablePool and HTable are deprecated, and they are officially replaced in The new 1.0 API by Table and BufferedMutator. Table, which replaces HTable, no longer exposes explicit write-buffer management. Instead, explicit buffer management is exposed via BufferedMutator. BufferedMutator is made safe for concurrent use. Where code would previously retrieve and return HTables from an HTablePool, now that code creates and shares a single BufferedMutator instance across all threads.


---

* [HBASE-12718](https://issues.apache.org/jira/browse/HBASE-12718) | *Major* | **Convert TestAcidGuarantees from a unit test to an integration test**

TestAcidGuarantees used to be runnable from the command line.  It has been renamed to IntegrationTestAcidGuarantees and allows for ChaosMonkey parameters.


---

* [HBASE-12706](https://issues.apache.org/jira/browse/HBASE-12706) | *Critical* | **Support multiple port numbers in ZK quorum string**

hbase.zookeeper.quorum configuration now allows servers together with client ports consistent with the way Zookeeper java client accepts the quorum string. In this case, using hbase.zookeeper.clientPort is not needed. eg.  hbase.zookeeper.quorum=myserver1:2181,myserver2:20000,myserver3:31111


---

* [HBASE-12684](https://issues.apache.org/jira/browse/HBASE-12684) | *Major* | **Add new AsyncRpcClient**

Retrofit a new, netty-based rpc transport on the client. This client is slightly slower if little contention given the extra tier or so that netty adds and that we block on a Future waiting on the call to finish.  This client opens the way for HBase having a native Async API.

This client is on by default in master branch (2.0 hbase). It is off in branch-1.0 (hbase-1.1.x).  To enable it, set "hbase.rpc.client.impl" to "org.apache.hadoop.hbase.ipc.AsyncRpcClient"


---

* [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | *Major* | **Visibility Labels: issue with storing super users in labels table**

The system visibility label authorization for super users will no longer be persisted in hbase:labels table. Super users will be determined at server startup time. They will have all the permissions for Visibility labels.
If you have a prior deployment that had super users' system label persisted in hbase:labels, you can clean up by invoking the shell command 'clear\_auths'.
For example: clear\_auths 'old\_superuser', 'system'
This is particularly necessary when you change super users, i.e. a previous super user is no longer a super user.


---

* [HBASE-12268](https://issues.apache.org/jira/browse/HBASE-12268) | *Major* | **Add support for Scan.setRowPrefixFilter to shell**

Added new option, ROWPREFIXFILTER, to the scan command in the HBase shell to easily scan for a specific row prefix.


---

* [HBASE-12108](https://issues.apache.org/jira/browse/HBASE-12108) | *Minor* | **HBaseConfiguration: set classloader before loading xml files**

This patch fixes hbase configuration not found issues when HBase jars are loaded in a child class loader whose parent has already loaded hadoop classes. Setting appropriate classloader in Configuration should fix this issue.


---

* [HBASE-12070](https://issues.apache.org/jira/browse/HBASE-12070) | *Major* | **Add an option to hbck to fix ZK inconsistencies**

Adds a new option to HBCK tool -fixOrphanedTableZnodes, which fixes orphaned table entries in zookeeper which does not have corresponding meta entries. This state can be from a failed create table attempt.


---

* [HBASE-12028](https://issues.apache.org/jira/browse/HBASE-12028) | *Major* | **Abort the RegionServer, when it's handler threads die**

Adds a configuration property "hbase.regionserver.handler.abort.on.error.percent" for aborting the region server when some of it's handler threads die. The default value is 0.5 causing an abort in the RS when half of it's handler threads die. A handler thread only dies in case of a serious software bug, or a non-recoverable Error (StackOverflow, OOM, etc) is thrown. 
These are possible values for the configuration:
   * -1  => Disable aborting
   * 0   => Abort if even a single handler has died
   * 0.x => Abort only when this percent of handlers have died
   * 1   => Abort only all of the handers have died


---

* [HBASE-11864](https://issues.apache.org/jira/browse/HBASE-11864) | *Minor* | **Enhance HLogPrettyPrinter to print information from WAL Header**

Enhance WALPrettyPrinter to print information (writer classnames and cell codec classname) from WAL Header


---

* [HBASE-11544](https://issues.apache.org/jira/browse/HBASE-11544) | *Critical* | **[Ergonomics] hbase.client.scanner.caching is dogged and will try to return batch even if it means OOME**

Results returned from RPC calls may now be returned as partials

When is a Result marked as a partial? 
When the server must stop the scan because the max size limit has been reached. Means that the LAST Result returned within the ScanResult's Result array may be marked as a partial if the scan's max size limit caused it to stop in the middle of a row.

Incompatible Change: The return type of InternalScanners#next and RegionScanners#nextRaw has been changed to NextState from boolean
The previous boolean return value can be accessed via NextState#hasMoreValues()
Provides more context as to what happened inside the scanner

Scan caching default has been changed to Integer.Max\_Value 
This value works together with the new maxResultSize value from HBASE-12976 (defaults to 2MB) 
Results returned from server on basis of size rather than number of rows
Provides better use of network since row size varies amongst tables

Protobuf models have changed for Result, ScanRequest, and ScanResponse to support new partial Results

Partial Results should be invisible to application layer unless Scan#setAllowPartials is set

Scan#setAllowPartials has been added to allow the application to request to see the partial Results returned by the server rather than have the ClientScanner form the complete Result prior to returning it to the application

To disable the use of partial Results on the server, set ScanRequest.Builder#setClientHandlesPartials() to be false in the ScanRequest issued to server

Partial Results should allow the server to return large rows in parts rather than accumulate all the cells for that particular row and run out of memory


---

* [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | *Major* | **Filter to support scanning multiple row key ranges**

MultiRowRangeFilter is a filter to support scanning multiple row key ranges. If the number of the ranges is small, using multiple scans can also do the same thing and can work well. But when the number of ranges are quite big (e.g. millions), use the MultiRowRangeFilter will be nice. In this filter, the ranges will be sorted and merged, so users do not have to take care of ranges are not continuous. And if users are using something like rest, thrift or pig to access the data the filter might be the practical solution.


---

* [HBASE-10728](https://issues.apache.org/jira/browse/HBASE-10728) | *Major* | **get\_counter value is never used.**

for 0.98 and 1.0 changes are compatible (due to mitigation by HBASE-13433):

* The "get\_counter" command no longer requires a dummy 4th argument. Downstream users are encouraged to migrate code to not pass this argument because it will result in an error for HBase 1.1+.
* The "incr" command now outputs the current value of the counter to stdout.
ex:
{code}
jruby-1.6.8 :005 > incr 'counter\_example', 'r1', 'cf1:foo', 10
COUNTER VALUE = 1772
0 row(s) in 0.1180 seconds
{code}

for 1.1+ changes are incompatible:

* The "get\_counter" command no longer accepts a dummy 4th argument. Downstream users will need to update their code to not pass this argument.
ex:
{code}
jruby-1.6.8 :006 > get\_counter 'counter\_example', 'r1', 'cf1:foo'
COUNTER VALUE = 1772

{code}
* The "incr" command now outputs the current value of the counter to stdout.
ex:
{code}
jruby-1.6.8 :005 > incr 'counter\_example', 'r1', 'cf1:foo', 10
COUNTER VALUE = 1772
0 row(s) in 0.1180 seconds
{code}


---

* [HBASE-10201](https://issues.apache.org/jira/browse/HBASE-10201) | *Major* | **Port 'Make flush decisions per column family' to trunk**

Adds new flushing policy mechanism. Default, org.apache.hadoop.hbase.regionserver.FlushLargeStoresPolicy, will try to avoid flushing out the small column families in a region, those whose memstores are < hbase.hregion.percolumnfamilyflush.size.lower.bound. To restore the old behavior of flushes writing out all column families, set hbase.regionserver.flush.policy to org.apache.hadoop.hbase.regionserver.FlushAllStoresPolicy either in hbase-default.xml or on a per-table basis by setting the policy to use with HTableDescriptor.getFlushPolicyClassName().


---

* [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | *Major* | **TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class.**

Add support for codec and cipher in HFilePerformanceEvaluation


---

* [HBASE-8329](https://issues.apache.org/jira/browse/HBASE-8329) | *Major* | **Limit compaction speed**

Adds compaction throughput limit mechanism(the word "throttle" is already used when choosing compaction thread pool, so use a different word here to avoid ambiguity). Default is org.apache.hadoop.hbase.regionserver.compactions.PressureAwareCompactionThroughputController, will limit throughput as follow:
1. In off peak hours, use a fixed limitation "hbase.hstore.compaction.throughput.offpeak" (default is Long.MAX\_VALUE which means no limitation).
2. In normal hours, the limitation is tuned between "hbase.hstore.compaction.throughput.lower.bound"(default 10MB/sec) and "hbase.hstore.compaction.throughput.higher.bound"(default 20MB/sec), using the formula "lower + (higer - lower) * param" where param is in range [0.0, 1.0] and calculate based on store files count on this regionserver.
3. If some stores have too many store files(storefilesCount > blockingFileCount), then there is no limitation no matter peak or off peak.
You can set "hbase.regionserver.throughput.controller" to org.apache.hadoop.hbase.regionserver.compactions.NoLimitCompactionThroughputController to disable throughput controlling.
And we have implemented ConfigurationObserver which means you can change all configurations above and do not need to restart cluster.


---

* [HBASE-7332](https://issues.apache.org/jira/browse/HBASE-7332) | *Minor* | **[webui] HMaster webui should display the number of regions a table has.**

Adds counts for various regions states to the table listing on main page. See attached screenshot.


---

* [HBASE-6778](https://issues.apache.org/jira/browse/HBASE-6778) | *Major* | **Deprecate Chore; its a thread per task when we should have one thread to do all tasks**

Corresponding usages for new ScheduledChore vs. Deprecated Chore:
Chore.interrupt() -> ScheduledChore.cancel(mayInterruptWhileRunning = true)
Threads.setDaemonThreadRunning(Chore) -> ChoreService.scheduleChore(ScheduledChore)
Chore.isAlive -> ScheduledChore.isScheduled()
Chore.getSleeper().skipSleepCycle() -> ScheduledChore.triggerNow()


---

* [HBASE-5699](https://issues.apache.org/jira/browse/HBASE-5699) | *Critical* | **Run with \> 1 WAL in HRegionServer**

HBase's write-ahead-log (WAL) can now be configured to use multiple HDFS pipelines in parallel to provide better write throughput for clusters by using additional disks. By default, HBase will still use only a single HDFS-based WAL. 

To run with multiple WALs, alter the hbase-site.xml property "hbase.wal.provider" to have the value "multiwal". To return to having HBase determine what kind of WAL implementation to use either remove the property all together or set it to "defaultProvider".

Altering the WAL provider used by a particular RegionServer requires restarting that instance.  RegionServers using the original WAL implementation and those using the "multiwal" implementation can each handle recovery of either set of WALs, so a zero-downtime configuration update is possible through a rolling restart.



