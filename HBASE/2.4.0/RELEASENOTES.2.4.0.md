
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
# Apache HBase  2.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-24017](https://issues.apache.org/jira/browse/HBASE-24017) | *Major* | **Turn down flakey rerun rate on all but hot branches**

Changed master, branch-2, and branch-2.1 to twice a day.
Left branch-2.3, branch-2.2, and branch-1 at every 4 hours.
Changed branch-1.4 and branch-1.3 to @daily (1.3 was running every hour).


---

* [HBASE-24471](https://issues.apache.org/jira/browse/HBASE-24471) | *Major* | **The way we bootstrap meta table is confusing**

Move all the meta initialization code in MasterFileSystem and HRegionServer to InitMetaProcedure. Add a new step for InitMetaProcedure called INIT\_META\_WRITE\_FS\_LAYOUT to place the moved code.

This is an incompatible change, but should not have much impact. InitMetaProcedure will only be executed once when bootstraping a fresh new cluster, so typically this will not effect rolling upgrading. And even if you hit this problem, as long as InitMetaProcedure has not been finished, we can make sure that there is no user data in the cluster, you can just clean up the cluster and try again. There will be no data loss.


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

* [HBASE-24382](https://issues.apache.org/jira/browse/HBASE-24382) | *Major* | **Flush partial stores of region filtered by seqId when archive wal due to too many wals**

Change the flush level from region to store when there are too many wals, benefit from this we can reduce unnessary flush tasks and small hfiles.


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

* [HBASE-24698](https://issues.apache.org/jira/browse/HBASE-24698) | *Major* | **Turn OFF Canary WebUI as default**

Flips default for 'HBASE-23994 Add WebUI to Canary' The UI defaulted to on at port 16050. This JIRA changes it so new UI is off by default.

To enable the UI, set property 'hbase.canary.info.port' to the port you want the UI to use.


---

* [HBASE-24632](https://issues.apache.org/jira/browse/HBASE-24632) | *Major* | **Enable procedure-based log splitting as default in hbase3**

Enables procedure-based distributed WAL splitting as default (HBASE-20610). To use 'classic' zk-coordinated splitting instead, set 'hbase.split.wal.zk.coordinated' to 'true'.


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

* [HBASE-24956](https://issues.apache.org/jira/browse/HBASE-24956) | *Major* | **ConnectionManager#locateRegionInMeta waits for user region lock indefinitely.**

<!-- markdown -->

Without this fix there are situations in which locateRegionInMeta() on a client is not bound by a timeout. This happens because of a global lock whose acquisition was not under any lock scope. This affects client facing API calls that rely on this method to locate a table region in meta. This fix brings the lock acquisition under the scope of "hbase.client.meta.operation.timeout" and that guarantees a bounded wait time.


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

* [HBASE-25212](https://issues.apache.org/jira/browse/HBASE-25212) | *Major* | **Optionally abort requests in progress after deciding a region should close**

If hbase.regionserver.close.wait.abort is set to true, interrupt RPC handler threads holding the region close lock. 

Until requests in progress can be aborted, wait on the region close lock for a configurable interval (specified by hbase.regionserver.close.wait.time.ms, default 60000 (1 minute)). If we have failed to acquire the close lock after this interval elapses, if allowed (also specified by hbase.regionserver.close.wait.abort), abort the regionserver.

We will attempt to interrupt any running handlers every hbase.regionserver.close.wait.interval.ms (default 10000 (10 seconds)) until either the close lock is acquired or we reach the maximum wait time.


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



