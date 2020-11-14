
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
# Apache HBase  2.0.6 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-22100](https://issues.apache.org/jira/browse/HBASE-22100) | *Minor* | **False positive for error prone warnings in pre commit job**

Now we will sort the javac WARNING/ERROR before generating diff in pre-commit so we can get a stable output for the error prone. The downside is that we just sort the output lexicographically so the line number will also be sorted lexicographically, which is a bit strange to human.


---

* [HBASE-22123](https://issues.apache.org/jira/browse/HBASE-22123) | *Minor* | **REST gateway reports Insufficient permissions exceptions as 404 Not Found**

When insufficient permissions, you now get:

HTTP/1.1 403 Forbidden

on the HTTP side, and in the message

Forbidden
org.apache.hadoop.hbase.security.AccessDeniedException: org.apache.hadoop.hbase.security.AccessDeniedException: Insufficient permissions for user ‘myuser',action: get, tableName:mytable, family:cf.
at org.apache.ranger.authorization.hbase.RangerAuthorizationCoprocessor.authorizeAccess(RangerAuthorizationCoprocessor.java:547)
and the rest of the ADE stack


---

* [HBASE-22152](https://issues.apache.org/jira/browse/HBASE-22152) | *Major* | **Create a jenkins file for yetus to processing GitHub PR**

Add a new jenkins file for running pre commit check for GitHub PR.


---

* [HBASE-20851](https://issues.apache.org/jira/browse/HBASE-20851) | *Minor* | **Change rubocop config for max line length of 100**

The rubocop configuration in the hbase-shell module now allows a line length with 100 characters, instead of 80 as before. For everything before 2.1.5 this change introduces rubocop itself.


---

* [HBASE-22379](https://issues.apache.org/jira/browse/HBASE-22379) | *Minor* | **Fix Markdown for "Voting on Release Candidates" in book**

Fixes the formatting of the "Voting on Release Candidates" to actually show the quote and code formatting of the RAT check.


---

* [HBASE-22358](https://issues.apache.org/jira/browse/HBASE-22358) | *Minor* | **Change rubocop configuration for method length**

The rubocop definition for the maximum method length was set to 75.


---

* [HBASE-20494](https://issues.apache.org/jira/browse/HBASE-20494) | *Major* | **Upgrade com.yammer.metrics dependency**

Updated metrics core from 3.2.1 to 3.2.6.


---

* [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | *Trivial* | **Remove extra/useless +**

Removed extra + in HRegion, HStore and LoadIncrementalHFiles for branch-2 and HRegion and HStore for branch-1.


---

* [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | *Minor* | **Formatting issues in administration section of book**

Fixes a formatting issue in the administration section of the book, where listing indentation were a little bit off.


---

* [HBASE-22226](https://issues.apache.org/jira/browse/HBASE-22226) | *Trivial* | **Incorrect level for headings in asciidoc**

Warnings for level headings are corrected in the book for the HBase Incompatibilities section.


---

* [HBASE-22148](https://issues.apache.org/jira/browse/HBASE-22148) | *Blocker* | **Provide an alternative to CellUtil.setTimestamp**

<!-- markdown -->

The `CellUtil.setTimestamp` method changes to be an API with audience `LimitedPrivate(COPROC)` in HBase 3.0. With that designation the API should remain stable within a given minor release line, but may change between minor releases.

Previously, this method was deprecated in HBase 2.0 for removal in HBase 3.0. Deprecation messages in HBase 2.y releases have been updated to indicate the expected API audience change.


---

* [HBASE-22617](https://issues.apache.org/jira/browse/HBASE-22617) | *Blocker* | **Recovered WAL directories not getting cleaned up**

In HBASE-20734 we moved the recovered.edits onto the wal file system but when constructing the directory we missed the BASE\_NAMESPACE\_DIR('data'). So when using the default config, you will find that there are lots of new directories at the same level with the 'data' directory.

In this issue, we add the BASE\_NAMESPACE\_DIR back, and also try our best to clean up the wrong directories. But we can only clean up the region level directories, so if you want a clean fs layout on HDFS you still need to manually delete the empty directories at the same level with 'data'.

The effect versions are 2.2.0, 2.1.[1-5], 1.4.[8-10], 1.3.[3-5].


---

* [HBASE-22690](https://issues.apache.org/jira/browse/HBASE-22690) | *Major* | **Deprecate / Remove OfflineMetaRepair in hbase-2+**

OfflineMetaRepair is no longer supported in HBase-2+. Please refer to https://hbase.apache.org/book.html#HBCK2

This tool is deprecated in 2.x and will be removed in 3.0.


---

* [HBASE-22527](https://issues.apache.org/jira/browse/HBASE-22527) | *Major* | **[hbck2] Add a master web ui to show the problematic regions**

Add a new master web UI to show the potentially problematic opened regions. There are three case:
1. Master thought this region opened, but no regionserver reported it.
2. Master thought this region opened on Server1, but regionserver reported Server2
3. More than one regionservers reported opened this region


---

* [HBASE-22722](https://issues.apache.org/jira/browse/HBASE-22722) | *Blocker* | **Upgrade jackson databind dependencies to 2.9.9.1**

Upgrade jackson databind dependency to 2.9.9.1 due to CVEs

https://nvd.nist.gov/vuln/detail/CVE-2019-12814

https://nvd.nist.gov/vuln/detail/CVE-2019-12384


---

* [HBASE-22709](https://issues.apache.org/jira/browse/HBASE-22709) | *Major* | **Add a chore thread in master to do hbck checking and display results in 'HBCK Report' page**

1. Add a new chore thread in master to do hbck checking
2. Add a new web ui "HBCK Report" page to display checking results.

This feature is enabled by default. And the hbck chore run per 60 minutes by default. You can config "hbase.master.hbck.checker.interval" to a value lesser than or equal to 0 for disabling the chore.

Notice: the config "hbase.master.hbck.checker.interval" was renamed to "hbase.master.hbck.chore.interval" in HBASE-22737.


---

* [HBASE-22723](https://issues.apache.org/jira/browse/HBASE-22723) | *Major* | **Have CatalogJanitor report holes and overlaps; i.e. problems it sees when doing its regular scan of hbase:meta**

When CatalogJanitor runs, it now checks for holes, overlaps, empty info:regioninfo columns and bad servers. Dumps findings into log. Follow-up adds report to new 'HBCK Report' linked off the Master UI.

NOTE: All features but the badserver check made it into branch-2.1 and branch-2.0 backports.


---

* [HBASE-22741](https://issues.apache.org/jira/browse/HBASE-22741) | *Major* | **Show catalogjanitor consistency complaints in new 'HBCK Report' page**

Adds a "CatalogJanitor hbase:meta Consistency Issues" section to the new 'HBCK Report' page added by HBASE-22709. This section is empty unless the most recent CatalogJanitor scan turned up problems. If so, will show table of issues found.


---

* [HBASE-22737](https://issues.apache.org/jira/browse/HBASE-22737) | *Major* | **Add a new admin method and shell cmd to trigger the hbck chore to run**

Add a new method runHbckChore in Hbck interface and a new shell cmd hbck\_chore\_run to request HBCK chore to run at master side.


---

* [HBASE-22539](https://issues.apache.org/jira/browse/HBASE-22539) | *Blocker* | **WAL corruption due to early DBBs re-use when Durability.ASYNC\_WAL is used**

We found a critical bug which can lead to WAL corruption when Durability.ASYNC\_WAL is used. The reason is that we release a ByteBuffer before actually persist the content into WAL file.

The problem maybe lead to several errors, for example, ArrayIndexOfOutBounds when replaying WAL. This is because that the ByteBuffer is reused by others.

ERROR org.apache.hadoop.hbase.executor.EventHandler: Caught throwable while processing event RS\_LOG\_REPLAY
java.lang.ArrayIndexOutOfBoundsException: 18056
        at org.apache.hadoop.hbase.KeyValue.getFamilyLength(KeyValue.java:1365)
        at org.apache.hadoop.hbase.KeyValue.getFamilyLength(KeyValue.java:1358)
        at org.apache.hadoop.hbase.PrivateCellUtil.matchingFamily(PrivateCellUtil.java:735)
        at org.apache.hadoop.hbase.CellUtil.matchingFamily(CellUtil.java:816)
        at org.apache.hadoop.hbase.wal.WALEdit.isMetaEditFamily(WALEdit.java:143)
        at org.apache.hadoop.hbase.wal.WALEdit.isMetaEdit(WALEdit.java:148)
        at org.apache.hadoop.hbase.wal.WALSplitter.splitLogFile(WALSplitter.java:297)
        at org.apache.hadoop.hbase.wal.WALSplitter.splitLogFile(WALSplitter.java:195)
        at org.apache.hadoop.hbase.regionserver.SplitLogWorker$1.exec(SplitLogWorker.java:100)

And may even cause segmentation fault and crash the JVM directly. You will see a hs\_err\_pidXXX.log file and usually the problem is SIGSEGV. This is usually because that the ByteBuffer has already been returned to the OS and used for other purpose.

The problem has been reported several times in the past and this time Wellington Ramos Chevreuil provided the full logs and deeply analyzed the logs so we can find the root cause. And Lijin Bin figured out that the problem may only happen when Durability.ASYNC\_WAL is used. Thanks to them.

The problem only effects the 2.x releases, all users are highly recommand to upgrade to a release which has this fix in, especially that if you use Durability.ASYNC\_WAL.


---

* [HBASE-22777](https://issues.apache.org/jira/browse/HBASE-22777) | *Major* | **Add a multi-region merge (for fixing overlaps, etc.)**

Changes merge so you can merge more than two regions at a time.  Currently only available inside HBase. HBASE-22827, a follow-on, is about exposing the facility in the Admin API (and then via the shell).


---

* [HBASE-22771](https://issues.apache.org/jira/browse/HBASE-22771) | *Major* | **[HBCK2] fixMeta method and server-side support**

Adds a fixMeta method to hbck Service. Fixes holes in hbase:meta. Follow-up to fix overlaps. See HBASE-22567 also.

Follow-on is adding a client-side to hbase-operator-tools that can exploit this new addition (HBASE-22825)


---

* [HBASE-22833](https://issues.apache.org/jira/browse/HBASE-22833) | *Minor* | **MultiRowRangeFilter should provide a method for creating a filter which is functionally equivalent to multiple prefix filters**

Provide a public method in MultiRowRangeFilter class to speed the requirement of filtering with multiple row prefixes, it will expand the row prefixes as multiple rowkey ranges by MultiRowRangeFilter, it's more efficient.
{code}
public MultiRowRangeFilter(byte[][] rowKeyPrefixes);
{code}


---

* [HBASE-22841](https://issues.apache.org/jira/browse/HBASE-22841) | *Major* | **TimeRange's factory functions do not support ranges, only \`allTime\` and \`at\`**

Add serveral API in TimeRange class for avoiding using the deprecated TimeRange constructor: 
\* TimeRange#from: Represents the time interval [minStamp, Long.MAX\_VALUE)
\* TimeRange#until: Represents the time interval [0, maxStamp)
\* TimeRange#between: Represents the time interval [minStamp, maxStamp)



