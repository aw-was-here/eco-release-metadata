
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
# Apache HBase  2.1.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | *Major* | **Replace usage of our Base64 implementation with java.util.Base64**

Class org.apache.hadoop.hbase.util.Base64 has been removed in it's entirety from HBase 2+. In HBase 1, unused methods have been removed from the class and the audience was changed from  Public to Private. This class was originally intended as an internal utility class that could be used externally but thinking since changed; these classes should not have been advertised as public to end-users.

This represents an incompatible change for users who relied on this implementation. An alternative implementation for affected clients is available at java.util.Base64 when using Java 8 or newer; be aware, it may encode/decode differently. For clients seeking to restore this specific implementation, it is available in the public domain for download at http://iharder.sourceforge.net/current/java/base64/


---

* [HBASE-20846](https://issues.apache.org/jira/browse/HBASE-20846) | *Major* | **Restore procedure locks when master restarts**

1. Make hasLock method final, and add a locked field in Procedure to record whether we have the lock. We will set it to true in doAcquireLock and to false in doReleaseLock. The sub procedures do not need to manage it any more.

2. Also added a locked field in the proto message. When storing, the field will be set according to the return value of hasLock. And when loading, there is a new field in Procedure called lockedWhenLoading. We will set it to true if the locked field in proto message is true.

3. The reason why we can not set the locked field directly to true by calling doAcquireLock is that, during initialization, most procedures need to wait until master is initialized. So the solution here is that, we introduced a new method called waitInitialized in Procedure, and move the wait master initialized related code from acquireLock to this method. And we added a restoreLock method to Procedure, if lockedWhenLoading is true, we will call the acquireLock to get the lock, but do not set locked to true. And later when we call doAcquireLock and pass the waitInitialized check, we will test lockedWhenLoading, if it is true, when we just set the locked field to true and return, without actually calling the acquireLock method since we have already called it once.


---

* [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | *Critical* | **Upgrade our hadoop versions to 2.7.7 and 3.0.3**

Update hadoop-two.version to 2.7.7 and hadoop-three.version to 3.0.3 due to a JDK issue which is solved by HADOOP-15473.


---

* [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | *Minor* | **PITA having to set WAL provider in two places**

With this change if a WAL's meta provider (hbase.wal.meta\_provider) is not explicitly set, it now defaults to whatever hbase.wal.provider is set to. Previous, the two settings operated independently, each with its own default.

This change is operationally incompatible with previous HBase versions because the default WAL meta provider no longer defaults to AsyncFSWALProvider but to hbase.wal.provider.

The thought is that this is more in line with an operator's expectation, that a change in hbase.wal.provider is sufficient to change how WALs are written, especially given hbase.wal.meta\_provider is an obscure configuration and that the very idea that meta regions would have their own wal provider would likely come as a surprise.


---

* [HBASE-20986](https://issues.apache.org/jira/browse/HBASE-20986) | *Major* | **Separate the config of block size when we do log splitting and write Hlog**

After HBASE-20986, we can set different value to block size of WAL and recovered edits. Both of their default value is 2 \* default HDFS blocksize. And hbase.regionserver.recoverededits.blocksize is for block size of recovered edits while hbase.regionserver.hlog.blocksize is for block size of WAL.


---

* [HBASE-20813](https://issues.apache.org/jira/browse/HBASE-20813) | *Minor* | **Remove RPC quotas when the associated table/Namespace is dropped off**

In previous releases, when a Space Quota was configured on a table or namespace and that table or namespace was deleted, the Space Quota was also deleted. This change improves the implementation so that the same is also done for RPC Quotas.


---

* [HBASE-20965](https://issues.apache.org/jira/browse/HBASE-20965) | *Major* | **Separate region server report requests to new handlers**

After HBASE-20965, we can use MasterFifoRpcScheduler in master to separate RegionServerReport requests to indenpedent handler. To use this feature, please set "hbase.master.rpc.scheduler.factory.class" to
 "org.apache.hadoop.hbase.ipc.MasterFifoRpcScheduler". Use "hbase.master.server.report.handler.count" to set RegionServerReport handlers count, the default value is half of "hbase.regionserver.handler.count" value, but at least 1, and the other handlers count in master is "hbase.regionserver.handler.count" value minus RegionServerReport handlers count, but at least 1 too.


---

* [HBASE-21012](https://issues.apache.org/jira/browse/HBASE-21012) | *Critical* | **Revert the change of serializing TimeRangeTracker**

HFiles generated by 2.0.0, 2.0.1, 2.1.0 are not forward compatible to 1.4.6-, 1.3.2.1-, 1.2.6.1-, and other inactive releases. Why HFile lose compatability is hbase in new versions (2.0.0, 2.0.1, 2.1.0) use protobuf to serialize/deserialize TimeRangeTracker (TRT) while old versions use DataInput/DataOutput. To solve this, We have to put HBASE-21012 to 2.x and put HBASE-21013 in 1.x. For more information, please check HBASE-21008.


---

* [HBASE-21072](https://issues.apache.org/jira/browse/HBASE-21072) | *Major* | **Block out HBCK1 in hbase2**

Fence out hbase-1.x hbck1 instances. Stop them making state changes on an hbase-2.x cluster; they could do damage. We do this by writing the hbck1 lock file into place on hbase-2.x Master start-up.

To disable this new behavior, set hbase.write.hbck1.lock.file to false


---

* [HBASE-20941](https://issues.apache.org/jira/browse/HBASE-20941) | *Major* | **Create and implement HbckService in master**

Adds an HBCK Service and a first method to force-change-in-table-state for use by an HBCK client effecting 'repair' to a malfunctioning HBase.


---

* [HBASE-20649](https://issues.apache.org/jira/browse/HBASE-20649) | *Minor* | **Validate HFiles do not have PREFIX\_TREE DataBlockEncoding**

<!-- markdown -->
Users who have previously made use of prefix tree encoding can now check that their existing HFiles no longer contain data that uses it with an additional preupgrade check command.

```
hbase pre-upgrade validate-hfile
```

Please see the "HFile Content validation" section of the ref guide's coverage of the pre-upgrade validator tool for usage details.


---

* [HBASE-21153](https://issues.apache.org/jira/browse/HBASE-21153) | *Major* | **Shaded client jars should always build in relevant phase to avoid confusion**

Client facing artifacts are now built whenever Maven is run through the "package" goal. Previously, the client facing artifacts would create placeholder jars that skipped repackaging HBase and third-party dependencies unless the "release" profile was active.

Build times may be noticeably longer depending on your build hardware. For example, the Jenkins worker nodes maintained by ASF Infra take ~14% longer to do a full packaging build. An example portability-focused personal laptop took ~25% longer.


---

* [HBASE-21171](https://issues.apache.org/jira/browse/HBASE-21171) | *Major* | **[amv2] Tool to parse a directory of MasterProcWALs standalone**

Make it so can run the WAL parse and load system in isolation. Here is an example:

{code}$ HBASE\_OPTS=" -XX:+UnlockDiagnosticVMOptions -XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:+DebugNonSafepoints" ./bin/hbase org.apache.hadoop.hbase.procedure2.store.wal.WALProcedureStore ~/big\_set\_of\_masterprocwals/
{code}


---

* [HBASE-21125](https://issues.apache.org/jira/browse/HBASE-21125) | *Major* | **Backport 'HBASE-20942 Improve RpcServer TRACE logging' to branch-2.1**

Allows configuration of the length of RPC messages printed to the log at TRACE level via "hbase.ipc.trace.param.size" in RpcServer.


---

* [HBASE-21156](https://issues.apache.org/jira/browse/HBASE-21156) | *Critical* | **[hbck2] Queue an assign of hbase:meta and bulk assign/unassign**

Adds 'raw' assigns/unassigns to the Hbck Service. Takes a list of encoded region names and bulk assigns/unassigns. Skirts Master 'state' check and does not invoke Coprocessors. For repair only.

Here is what HBCK2 usage looks like now:

{code}
$ java -cp hbase-hbck2-1.0.0-SNAPSHOT.jar  org.apache.hbase.HBCK2
usage: HBCK2 \<OPTIONS\> COMMAND [\<ARGS\>]

Options:
 -d,--debug                      run with debug output
 -h,--help                       output this help message
    --hbase.zookeeper.peerport   peerport of target hbase ensemble
    --hbase.zookeeper.quorum     ensemble of target hbase
    --zookeeper.znode.parent     parent znode of target hbase

Commands:
 setTableState \<TABLENAME\> \<STATE\>
   Possible table states: ENABLED, DISABLED, DISABLING, ENABLING
   To read current table state, in the hbase shell run:
     hbase\> get 'hbase:meta', '\<TABLENAME\>', 'table:state'
   A value of \\x08\\x00 == ENABLED, \\x08\\x01 == DISABLED, etc.
   An example making table name 'user' ENABLED:
     $ HBCK2 setTableState users ENABLED
   Returns whatever the previous table state was.

 assign \<ENCODED\_REGIONNAME\> ...
   A 'raw' assign that can be used even during Master initialization.
   Skirts Coprocessors. Pass one or more encoded RegionNames:
   e.g. 1588230740 is hard-coded encoding for hbase:meta region and
   de00010733901a05f5a2a3a382e27dd4 is an example of what a random
   user-space encoded Region name looks like. For example:
     $ HBCK2 assign 1588230740 de00010733901a05f5a2a3a382e27dd4
   Returns the pid of the created AssignProcedure or -1 if none.

 unassign \<ENCODED\_REGIONNAME\> ...
   A 'raw' unassign that can be used even during Master initialization.
   Skirts Coprocessors. Pass one or more encoded RegionNames:
   Skirts Coprocessors. Pass one or more encoded RegionNames:
   de00010733901a05f5a2a3a382e27dd4 is an example of what a random
   user-space encoded Region name looks like. For example:
     $ HBCK2 unassign 1588230740 de00010733901a05f5a2a3a382e27dd4
   Returns the pid of the created UnassignProcedure or -1 if none.
{code}


---

* [HBASE-21223](https://issues.apache.org/jira/browse/HBASE-21223) | *Critical* | **[amv2] Remove abort\_procedure from shell**

Removed the abort\_procedure command from shell -- dangerous -- and deprecated abortProcedure in Admin API.


---

* [HBASE-21232](https://issues.apache.org/jira/browse/HBASE-21232) | *Major* | **Show table state in Tables view on Master home page**

Add table state column to the tables panel


---

* [HBASE-21213](https://issues.apache.org/jira/browse/HBASE-21213) | *Major* | **[hbck2] bypass leaves behind state in RegionStates when assign/unassign**

Adds override to assigns and unassigns. Changes bypass 'force' to align calling the param 'override' instead.

The new override allows 'overriding' previous Procedure owner to override their ownership of the Procedured entity ("Region").

Used by hbck2.


---

* [HBASE-21280](https://issues.apache.org/jira/browse/HBASE-21280) | *Trivial* | **Add anchors for each heading in UI**

Adds anchors #tables, #tasks, etc.


---

* [HBASE-21287](https://issues.apache.org/jira/browse/HBASE-21287) | *Major* | **JVMClusterUtil Master initialization wait time not configurable**

Local HBase cluster (as used by unit tests) wait times on startup and initialization can be configured via \`hbase.master.start.timeout.localHBaseCluster\` and \`hbase.master.init.timeout.localHBaseCluster\`


---

* [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | *Minor* | **WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes**

This adds two extra features to WALPrettyPrinter tool:

1) Output for each cell combined size of cell descriptors, plus the cell value itself, in a given WAL edit. This is printed on the results as "cell total size sum:" info by default;

2) An optional -g/--goto argument, that allows to seek straight to that specific WAL file position, then sequentially reading the WAL from that point towards its end;


---

* [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | *Critical* | **Empty qualifier cell should not be returned if it does not match QualifierFilter**

<!-- markdown -->

Scans that make use of `QualifierFilter` previously would erroneously return both columns with an empty qualifier along with those that matched. After this change that behavior has changed to only return those columns that match.


---

* [HBASE-21320](https://issues.apache.org/jira/browse/HBASE-21320) | *Major* | **[canary] Cleanup of usage and add commentary**

Cleans up usage and docs around Canary.  Does not change command-line args (though we should -- smile).


---

* [HBASE-21291](https://issues.apache.org/jira/browse/HBASE-21291) | *Major* | **Add a test for bypassing stuck state-machine procedures**

bypass will now throw an Exception if passed a lockWait \<= 0; i.e bypass will prevent an operator getting stuck on an entity lock waiting forever (lockWait == 0)


---

* [HBASE-21335](https://issues.apache.org/jira/browse/HBASE-21335) | *Critical* | **Change the default wait time of HBCK2 tool**

Changed waitTime parameter to lockWait on bypass. Changed default waitTime from 0 -- i.e. wait for ever -- to 1ms so if lock is held, we'll go past it and if override enforce bypass.


---

* [HBASE-21075](https://issues.apache.org/jira/browse/HBASE-21075) | *Blocker* | **Confirm that we can (rolling) upgrade from 2.0.x and 2.1.x to 2.2.x after HBASE-20881**

hbase-2.2.x uses a new Procedure form assiging/unassigning/moving Regions; it does not process hbase-2.1.x and earlier Unassign/Assign Procedure types. Upgrade requires that we first drain the Master Procedure Store of old style Procedures before starting the new 2.2.x Master. The patch here facilitates the draining process.

On your running hbase-2.1.1+ (or 2.0.3+ cluster), when upgrading:

1. Shutdown both active and standby masters (Your cluster will continue to server reads and writes without interruption).
2. Set the property hbase.procedure.upgrade-to-2-2 to true in hbase-site.xml for the Master, and start only one Master, still using the 2.1.1+ (or 2.0.3+) binaries.
3. Wait until the Master quits. Confirm that there is a 'READY TO ROLLING UPGRADE' message in the master log as the cause of the shutdown. The Procedure Store is now empty.
4. Start new Masters with the new 2.2.0+ code.


---

* [HBASE-21073](https://issues.apache.org/jira/browse/HBASE-21073) | *Major* | **"Maintenance mode" master**

    Instead of being an ephemeral state set by hbck, maintenance mode is now
    an explicit toggle set by either configuration property or environment
    variable. In maintenance mode, master will host system tables and not
    assign any user-space tables to RSs. This gives operators the ability to
    affect repairs to meta table with fewer moving parts.


---

* [HBASE-21338](https://issues.apache.org/jira/browse/HBASE-21338) | *Major* | **[balancer] If balancer is an ill-fit for cluster size, it gives little indication**

The description claims the balancer not dynamically configurable but this is an error; it is http://hbase.apache.org/book.html#dyn\_config

Also, if balancer is seen to be cutting out too soon, try setting "hbase.master.balancer.stochastic.runMaxSteps" to true.

Adds cleaner logging around balancer start.


---

* [HBASE-21372](https://issues.apache.org/jira/browse/HBASE-21372) | *Major* | **Set hbase.assignment.maximum.attempts to Long.MAX**

Retry assigns 'forever' (or until an intervention such as a ServerCrashProcedure).

Previous retry was a maximum of ten times but on failure, handling was an indeterminate.


---

* [HBASE-21215](https://issues.apache.org/jira/browse/HBASE-21215) | *Major* | **Figure how to invoke hbck2; make it easy to find**

Adds to bin/hbase means of invoking hbck2. Pass the new '-j' option on the 'hbck' command with a value of the full path to the HBCK2.jar.

E.g:

$ ./bin/hbase hbck -j ~/checkouts/hbase-operator-tools/hbase-hbck2/target/hbase-hbck2-1.0.0-SNAPSHOT.jar  setTableState x ENABLED


---

* [HBASE-21191](https://issues.apache.org/jira/browse/HBASE-21191) | *Major* | **Add a holding-pattern if no assign for meta or namespace (Can happen if masterprocwals have been cleared).**

Puts master startup into holding pattern if meta is not assigned (previous it would exit). To make progress again, operator needs to inject an assign (Caveats and instruction can be found in HBASE-21035).


---

* [HBASE-20401](https://issues.apache.org/jira/browse/HBASE-20401) | *Minor* | **Make \`MAX\_WAIT\` and \`waitIfNotFinished\` in CleanerContext configurable**

When oldwals (and hfile) cleaner cleans stale wals (and hfiles), it will periodically check and wait the clean results from filesystem, the total wait time will be no more than a max time.

The periodically wait and check configurations are hbase.oldwals.cleaner.thread.check.interval.msec (default is 500 ms) and hbase.regionserver.hfilecleaner.thread.check.interval.msec (default is 1000 ms). 

Meanwhile, The max time configurations are hbase.oldwals.cleaner.thread.timeout.msec and hbase.regionserver.hfilecleaner.thread.timeout.msec, they are set to 60 seconds by default.

All support dynamic configuration.

e.g. in the oldwals cleaning scenario, one may consider tuning hbase.oldwals.cleaner.thread.timeout.msec and hbase.oldwals.cleaner.thread.check.interval.msec 

1. While deleting a oldwal never complete (strange but possible), then delete file task needs to wait for a max of 60 seconds. Here, 60 seconds might be too long, or the opposite way is to increase more than 60 seconds in the use cases of slow file delete. 
2. The check and wait of a file delete is set to default in the period of 500 milliseconds, one might want to tune this checking period to a short interval to check more frequently or to a longer interval to avoid checking too often to manage their delete file task checking period (the longer interval may be use to avoid checking too fast while using a high latency storage).


---

* [HBASE-20734](https://issues.apache.org/jira/browse/HBASE-20734) | *Major* | **Colocate recovered edits directory with hbase.wal.dir**

Previously the recovered.edits directory was under the root directory. This JIRA moves the recovered.edits directory to be under the hbase.wal.dir if set. It also adds a check for any recovered.edits found under the root directory for backwards compatibility. This gives improvements when a faster media(like SSD) or more local FileSystem is used for the hbase.wal.dir than the root dir.



