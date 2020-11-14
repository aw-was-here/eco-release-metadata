
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
# Apache HBase  2.0.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-21223](https://issues.apache.org/jira/browse/HBASE-21223) | *Critical* | **[amv2] Remove abort\_procedure from shell**

Removed the abort\_procedure command from shell -- dangerous -- and deprecated abortProcedure in Admin API.


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

* [HBASE-21322](https://issues.apache.org/jira/browse/HBASE-21322) | *Critical* | **Add a scheduleServerCrashProcedure() API to HbckService**

Adds scheduleServerCrashProcedure to the HbckService.


---

* [HBASE-21237](https://issues.apache.org/jira/browse/HBASE-21237) | *Blocker* | **Use CompatRemoteProcedureResolver to dispatch open/close region requests to RS**

Use CompatRemoteProcedureResolver  instead of ExecuteProceduresRemoteCall to dispatch region open/close requests to RS. Since ExecuteProceduresRemoteCall  will group all the open/close operations in one call and execute them sequentially on the target RS. If one operation fails, all the operation will be marked as failure.


---

* [HBASE-21191](https://issues.apache.org/jira/browse/HBASE-21191) | *Major* | **Add a holding-pattern if no assign for meta or namespace (Can happen if masterprocwals have been cleared).**

Puts master startup into holding pattern if meta is not assigned (previous it would exit). To make progress again, operator needs to inject an assign (Caveats and instruction can be found in HBASE-21035).


---

* [HBASE-21417](https://issues.apache.org/jira/browse/HBASE-21417) | *Critical* | **Pre commit build is broken due to surefire plugin crashes**

Add -Djdk.net.URLClassPath.disableClassPathURLCheck=true when executing surefire plugin.


---

* [HBASE-21423](https://issues.apache.org/jira/browse/HBASE-21423) | *Major* | **Procedures for meta table/region should be able to execute in separate workers**

The procedure for meta table will be executed in a separate worker thread named 'Urgent Worker' to avoid stuck. A new config named 'hbase.master.urgent.procedure.threads' is added, the default value for it is 1. To disable the separate worker, set it to 0.


---

* [HBASE-21496](https://issues.apache.org/jira/browse/HBASE-21496) | *Major* | **Set version to 2.0.3 on branch-2.0 in prep for first RC**

Changed version on branch-2.0 from 2.0.2 to 2.0.3.


---

* [HBASE-21387](https://issues.apache.org/jira/browse/HBASE-21387) | *Major* | **Race condition surrounding in progress snapshot handling in snapshot cache leads to loss of snapshot files**

To prevent race condition between in progress snapshot (performed by TakeSnapshotHandler) and HFileCleaner which results in data loss, this JIRA introduced mutual exclusion between taking snapshot and running HFileCleaner. That is, at any given moment, either some snapshot can be taken or, HFileCleaner checks hfiles which are not referenced, but not both can be running.



