# Apache HBase  1.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-13030](https://issues.apache.org/jira/browse/HBASE-13030) | *Major* | **[1.0.0 polish] Make ScanMetrics public again and align Put 'add' with Get, Delete, etc., addColumn**

Miscellaneous cleanup. Make ScanMetrics audience public -- was mistakenly made private -- and make their access more amenable. Make Put like Delete and Get adding addColumn method (deprecating add). Make the ByteBuffer returned by Cell read only. Add to CellUtil a method to get a ByteRange on a value.


---

* [HBASE-13028](https://issues.apache.org/jira/browse/HBASE-13028) | *Blocker* | **Cleanup mapreduce API changes**

The bindings for reading data from HBase using both the Hadoop MapReduce mapred and mapreduce libraries now are initialized the same way. Subclasses wishing to build on TableInputFormatBase that use the new initialize method will have access to job configuration information.


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

* [HBASE-12899](https://issues.apache.org/jira/browse/HBASE-12899) | *Major* | **HBase should prefix htrace configuration keys with "hbase.htrace" rather than just "hbase."**

All htrace related configuration options are renamed to have "hbase.htrace" prefix instead of just "htrace".


---

* [HBASE-12897](https://issues.apache.org/jira/browse/HBASE-12897) | *Major* | **Minimum memstore size is a percentage**

This change lowers the minimum acceptable configured memstore heap percentage from 5% (0.05f) (10% (0.1f) in 0.98) to 0% (0.0f), and in branch 0.98 lowers the maximum acceptable percentage from 90% (0.9f) to 80% (0.8f).


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

* [HBASE-12665](https://issues.apache.org/jira/browse/HBASE-12665) | *Major* | **When aborting, dump metrics**

When regionserver aborts, we dump subset of metrics into the log (We used to do this too pre-0.96 but was lost when we refactored metrics)


---

* [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | *Major* | **Visibility Labels: issue with storing super users in labels table**

The system visibility label authorization for super users will no longer be persisted in hbase:labels table. Super users will be determined at server startup time. They will have all the permissions for Visibility labels.
If you have a prior deployment that had super users' system label persisted in hbase:labels, you can clean up by invoking the shell command 'clear\_auths'.
For example: clear\_auths 'old\_superuser', 'system'
This is particularly necessary when you change super users, i.e. a previous super user is no longer a super user.


---

* [HBASE-12597](https://issues.apache.org/jira/browse/HBASE-12597) | *Major* | **Add RpcClient interface and enable changing of RpcClient implementation**

Adds an RpcClient Interface and an RpcClientFactory to get RpcClient implementation.


---

* [HBASE-12373](https://issues.apache.org/jira/browse/HBASE-12373) | *Minor* | **Provide a command to list visibility labels**

Adds new list\_labels command to shell.


---

* [HBASE-12121](https://issues.apache.org/jira/browse/HBASE-12121) | *Minor* | **maven release plugin does not allow for customized goals**

Allows user to add goals to release procedure
mvn release:perform -Dgoal=<goal-name>
If no goal is specified default behavior is used

Example use case:
Release to private repository and upload artifacts but also want the tarball to be uploaded, not just the jars. 
the following could be added to the release command
-Dgoal="-X package install site assembly:single deploy -DskipTests"
This will execute the release procedure and also upload the tarball along with all jars.


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

* [HBASE-11639](https://issues.apache.org/jira/browse/HBASE-11639) | *Major* | **[Visibility controller] Replicate the visibility of Cells as strings**

Allows the visibility tags to be replicated as Strings to the peer cluster. Useful in cases where the peer cluster and the source cluster does not have a common global LABELs table.
In order to enable this feature configure the below property in hbase-site.xml
<property>
<name>
hbase.coprocessor.regionserver.classes
</name>
<value>
org.apache.hadoop.hbase.security.visibility.VisibilityController$VisibilityReplication
</value>
<property>


---

* [HBASE-11412](https://issues.apache.org/jira/browse/HBASE-11412) | *Minor* | **Minimize a number of hbase-client transitive dependencies**

Removes some transitive dependencies from the hbase-client module.


---

* [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | *Major* | **TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class.**

Add support for codec and cipher in HFilePerformanceEvaluation


---

* [HBASE-5699](https://issues.apache.org/jira/browse/HBASE-5699) | *Critical* | **Run with \> 1 WAL in HRegionServer**

HBase's write-ahead-log (WAL) can now be configured to use multiple HDFS pipelines in parallel to provide better write throughput for clusters by using additional disks. By default, HBase will still use only a single HDFS-based WAL. 

To run with multiple WALs, alter the hbase-site.xml property "hbase.wal.provider" to have the value "multiwal". To return to having HBase determine what kind of WAL implementation to use either remove the property all together or set it to "defaultProvider".

Altering the WAL provider used by a particular RegionServer requires restarting that instance.  RegionServers using the original WAL implementation and those using the "multiwal" implementation can each handle recovery of either set of WALs, so a zero-downtime configuration update is possible through a rolling restart.



