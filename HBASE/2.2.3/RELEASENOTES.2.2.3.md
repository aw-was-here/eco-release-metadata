
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
# Apache HBase  2.2.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-23177](https://issues.apache.org/jira/browse/HBASE-23177) | *Major* | **If fail to open reference because FNFE, make it plain it is a Reference**

Changes the message on the FNFE exception thrown when the file a Reference points to is missing; the message now includes detail on Reference as well as pointed-to file so can connect how FNFE relates to region open.


---

* [HBASE-23172](https://issues.apache.org/jira/browse/HBASE-23172) | *Minor* | **HBase Canary region success count metrics reflect column family successes, not region successes**

Added a comment to make clear that read/write success counts are tallying column family success counts, not region success counts. 

Additionally, the region read and write latencies previously only stored the latencies of the last column family of the region reads/writes. This has been fixed by using a map of each region to a list of read and write latency values.


---

* [HBASE-23222](https://issues.apache.org/jira/browse/HBASE-23222) | *Critical* | **Better logging and mitigation for MOB compaction failures**

<!-- markdown -->

The MOB compaction process in the HBase Master now logs more about its activity.

In the event that you run into the problems described in HBASE-22075, there is a new HFileCleanerDelegate that will stop all removal of MOB hfiles from the archive area. It can be configured by adding `org.apache.hadoop.hbase.mob.ManualMobMaintHFileCleaner` to the list configured for `hbase.master.hfilecleaner.plugins`. This new cleaner delegate will cause your archive area to grow unbounded; you will have to manually prune files which may be prohibitively complex. Consider if your use case will allow you to mitigate by disabling mob compactions instead.

Caveats:
* Be sure the list of cleaner delegates still includes the default cleaners you will likely need: ttl, snapshot, and hlink.
* Be mindful that if you enable this cleaner delegate then there will be *no* automated process for removing these mob hfiles. You should see a single region per table in `%hbase_root%/archive` that accumulates files over time. You will have to determine which of these files are safe or not to remove.
* You should list this cleaner delegate after the snapshot and hlink delegates so that you can enable sufficient logging to determine when an archived mob hfile is needed by those subsystems. When set to `TRACE` logging, the CleanerChore logger will include archive retention decision justifications.
* If your use case creates a large number of uniquely named tables, this new delegate will cause memory pressure on the master.


---

* [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | *Blocker* | **Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs**

<!-- markdown -->

the Apache HBase REST Proxy now uses Jackson Databind version 2.9.10.1 to address the following CVEs

  - CVE-2019-16942
  - CVE-2019-16943

Users of prior releases with Jackson Databind 2.9.10 are advised to either upgrade to this release or to upgrade their local Jackson Databind jar directly.


---

* [HBASE-23243](https://issues.apache.org/jira/browse/HBASE-23243) | *Major* | **[pv2] Filter out SUCCESS procedures; on decent-sized cluster, plethora overwhelms problems**

The 'Procedures & Locks' tab in Master UI only displays problematic Procedures now (RUNNABLE, WAITING-TIMEOUT, etc.). It no longer notes procedures whose state is SUCCESS.


---

* [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | *Minor* | **Log message about CleanerChore delegate initialization should be at INFO**

CleanerChore delegate initialization is now logged at INFO level instead of DEBUG


---

* [HBASE-19450](https://issues.apache.org/jira/browse/HBASE-19450) | *Minor* | **Add log about average execution time for ScheduledChore**

<!-- markdown -->
HBase internal chores now log a moving average of how long execution of each chore takes at `INFO` level for the logger `org.apache.hadoop.hbase.ScheduledChore`.

Such messages will happen at most once per five minutes.


---

* [HBASE-23282](https://issues.apache.org/jira/browse/HBASE-23282) | *Major* | **HBCKServerCrashProcedure for 'Unknown Servers'**

hbck2 scheduleRecoveries will now run a SCP that also looks in hbase:meta for any references to the scheduled server -- not just consult Master in-memory state -- just in case vestiges of the server are leftover in hbase:meta


---

* [HBASE-23321](https://issues.apache.org/jira/browse/HBASE-23321) | *Minor* | **[hbck2] fixHoles of fixMeta doesn't update in-memory state**

If holes in hbase:meta, hbck2 fixMeta now will update Master in-memory state so you do not need to restart master just so you can assign the new hole-bridging regions.


---

* [HBASE-23322](https://issues.apache.org/jira/browse/HBASE-23322) | *Minor* | **[hbck2] Simplification on HBCKSCP scheduling**

An hbck2 scheduleRecoveries will run a subclass of ServerCrashProcedure which asks Master what Regions were on the dead Server but it will also do a hbase:meta table scan to see if any vestiges of the old Server remain (for the case where an SCP failed mid-point leaving references in place or where Master and hbase:meta deviated in accounting).


---

* [HBASE-22969](https://issues.apache.org/jira/browse/HBASE-22969) | *Minor* | **A new binary component comparator(BinaryComponentComparator) to perform comparison of arbitrary length and position**

With BinaryComponentCompartor applications will be able to design diverse and powerful set of filters for rows and columns. See https://issues.apache.org/jira/browse/HBASE-22969 for example. In general, the comparator can be used with any filter taking ByteArrayComparable. As of now, following filters take ByteArrayComparable: 

1. RowFilter
2. ValueFilter
3. QualifierFilter
4. FamilyFilter
5. ColumnValueFilter


---

* [HBASE-23312](https://issues.apache.org/jira/browse/HBASE-23312) | *Major* | **HBase Thrift SPNEGO configs (HBASE-19852) should be backwards compatible**

The newer HBase Thrift SPNEGO configs should not be required. The hbase.thrift.spnego.keytab.file and hbase.thrift.spnego.principal configs will fall back to the hbase.thrift.keytab.file and hbase.thrift.kerberos.principal original configs. The older configs will log a deprecation warning. It is preferred to new the newer SPNEGO configurations.


---

* [HBASE-23293](https://issues.apache.org/jira/browse/HBASE-23293) | *Minor* | **[REPLICATION] make ship edits timeout configurable**

The default rpc timeout for ReplicationSourceShipper#shipEdits is 60s, when bulkload replication enabled, timeout exception may be occurred.
Now we can conf the timeout value through replication.source.shipedits.timeout, and it’s adaptive.


---

* [HBASE-23582](https://issues.apache.org/jira/browse/HBASE-23582) | *Minor* | **Unbalanced braces in string representation of table descriptor**

Fixed unbalanced braces in string representation within HBase shell


---

* [HBASE-23549](https://issues.apache.org/jira/browse/HBASE-23549) | *Minor* | **Document steps to disable MOB for a column family**

The reference guide now includes a walk through of disabling the MOB feature if needed while maintaining availability.


---

* [HBASE-23239](https://issues.apache.org/jira/browse/HBASE-23239) | *Major* | **Reporting on status of backing MOB files from client-facing cells**

<!-- markdown -->

Users of the MOB feature can now use the `mobrefs` utility to get statistics about data in the MOB system and verify the health of backing files on HDFS.

```
HADOOP_CLASSPATH=/etc/hbase/conf:$(hbase mapredcp) yarn jar \
    /some/path/to/hbase-shaded-mapreduce.jar mobrefs mobrefs-report-output some_table foo
```

See javadocs of the class `MobRefReporter` for more details.

the reference guide has added some information about MOB internals and troubleshooting.


---

* [HBASE-20461](https://issues.apache.org/jira/browse/HBASE-20461) | *Major* | **Implement fsync for AsyncFSWAL**

Now AsyncFSWAL also supports Durability.FSYNC\_WAL.


---

* [HBASE-23320](https://issues.apache.org/jira/browse/HBASE-23320) | *Major* | **Upgrade surefire plugin to 3.0.0-M4**

Bumped surefire plugin to 3.0.0-M4


---

* [HBASE-23596](https://issues.apache.org/jira/browse/HBASE-23596) | *Major* | **HBCKServerCrashProcedure can double assign**

Makes it so the recently added HBCKServerCrashProcedure -- the SCP that gets invoked when an operator schedules an SCP via hbck2 scheduleRecoveries command -- now works the same as SCP EXCEPT if master knows nothing of the scheduled servername. In this latter case, HBCKSCP will do a full scan of hbase:meta looking for instances of the passed servername. If any found it will attempt cleanup of hbase:meta references by reassigning any found OPEN or OPENING and by closing any in CLOSING state.

Used to fix instances of what the 'HBCK Report' page shows as 'Unknown Servers'.


---

* [HBASE-23651](https://issues.apache.org/jira/browse/HBASE-23651) | *Major* | **Region balance throttling can be disabled**

Set hbase.balancer.max.balancing to a int value which \<=0 will disable region balance throttling.


---

* [HBASE-23619](https://issues.apache.org/jira/browse/HBASE-23619) | *Trivial* | **Use built-in formatting for logging in hbase-zookeeper**

Changed the logging in hbase-zookeeper to use built-in formatting


---

* [HBASE-23554](https://issues.apache.org/jira/browse/HBASE-23554) | *Major* | **Encoded regionname to regionname utility**

    Adds shell command regioninfo:

      hbase(main):001:0\>  regioninfo '0e6aa5c19ae2b2627649dc7708ce27d0'
      {ENCODED =\> 0e6aa5c19ae2b2627649dc7708ce27d0, NAME =\> 'TestTable,,1575941375972.0e6aa5c19ae2b2627649dc7708ce27d0.', STARTKEY =\> '', ENDKEY =\> '00000000000000000000299441'}
      Took 0.4737 seconds



