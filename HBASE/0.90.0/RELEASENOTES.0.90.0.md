
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
# Apache HBase  0.90.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-1822](https://issues.apache.org/jira/browse/HBASE-1822) | *Major* | **Remove the deprecated APIs**

Removed deprecated API calls and internal references to family:qualifier notation.


---

* [HBASE-1859](https://issues.apache.org/jira/browse/HBASE-1859) | *Minor* | **Misc shell fixes patch.**

Fix in HBase shell formatter to allow trapping of STDOUT while running HBase shell commands.  Fix to HBase shell so that HBase shell commands are available to a loaded script.


---

* [HBASE-1885](https://issues.apache.org/jira/browse/HBASE-1885) | *Minor* | **Simplify use of IndexedTable outside Java API**

Simplify use of TableIndexed when your secondary keys are guaranteed to be unique. Ability to create an index from the Hbase shell.


---

* [HBASE-1949](https://issues.apache.org/jira/browse/HBASE-1949) | *Major* | **KeyValue expiration by Time-to-Live during major compaction is broken**

Fixed expiring of individual column values within rows via the column family time-to-live configuration.  Previously all column values following the first expired value in a row would be truncated.  Though in practice this might only be seen when lowering the TTL configuration on a column family with existing data.


---

* [HBASE-1829](https://issues.apache.org/jira/browse/HBASE-1829) | *Major* | **Make use of start/stop row in TableInputFormat**

Splits keep within the confines of star and end rows if provided.


---

* [HBASE-1904](https://issues.apache.org/jira/browse/HBASE-1904) | *Minor* | **Add tutorilal for installing HBase on Windows using Cygwin as a test and development environment**

WimVanLeuven has: foreseen a cygwin.html to sit next to the overview.html in the sourcetree so it can be linked from within the Java doc


---

* [HBASE-1963](https://issues.apache.org/jira/browse/HBASE-1963) | *Minor* | **Output to multiple tables from Hadoop MR without use of HTable**

MultiTableOutputFormat allows output from a map/reduce job to be written to multiple tables. An example illustrates use for creating secondary indexes from an existing table.


---

* [HBASE-1987](https://issues.apache.org/jira/browse/HBASE-1987) | *Minor* | **The Put object has no simple read methods for checking what has already been added.**

Adds Put#has methods.


---

* [HBASE-2029](https://issues.apache.org/jira/browse/HBASE-2029) | *Minor* | **Reduce shell exception dump on console**

Added a -d and --debug to shell options


---

* [HBASE-2036](https://issues.apache.org/jira/browse/HBASE-2036) | *Major* | **Use Configuration instead of HBaseConfiguration**

HBaseConfiguration as an object is now deprecated.  Use HBaseConfiguration.create to make an Hadoop Configuration populated with hbase config. from here on out.


---

* [HBASE-2068](https://issues.apache.org/jira/browse/HBASE-2068) | *Minor* | **MetricsRate is missing "registry" parameter**

Converts MasterStatistics "cluster\_requests" attribute to a MetricsRate value (computed as requests / sec).  Also adds a "requests" attribute to RegionServerStatistics MBean, also as a MetricsRate value.


---

* [HBASE-1996](https://issues.apache.org/jira/browse/HBASE-1996) | *Major* | **Configure scanner buffer in bytes instead of number of rows**

**WARNING: No release note provided for this change.**


---

* [HBASE-1433](https://issues.apache.org/jira/browse/HBASE-1433) | *Major* | **Update hbase build to match core, use ivy, publish jars to maven repo, etc.**

**WARNING: No release note provided for this change.**


---

* [HBASE-2190](https://issues.apache.org/jira/browse/HBASE-2190) | *Major* | **HRS should report to master when HMsg are available**

This requires that making a rolling update, you upgrade the master first (so it knows what to do w/ the new split signal this patch introduces).


---

* [HBASE-1728](https://issues.apache.org/jira/browse/HBASE-1728) | *Major* | **Column family scoping and cluster identification**

**WARNING: No release note provided for this change.**


---

* [HBASE-2276](https://issues.apache.org/jira/browse/HBASE-2276) | *Major* | **Hbase Shell hcd() method is broken by the replication scope parameter**

Attached HBASE-2276.patch file contains a patch that adds REPLICATION\_SCOPE support to hcd() method and to the shell itself by defining the REPLICATION\_SCOPE constant


---

* [HBASE-2281](https://issues.apache.org/jira/browse/HBASE-2281) | *Trivial* | **Hbase shell does not work when started from the build dir**

Submitted a patch, please review


---

* [HBASE-2287](https://issues.apache.org/jira/browse/HBASE-2287) | *Major* | **TypeError in shell**

Trivial patch attached, please review.


---

* [HBASE-2219](https://issues.apache.org/jira/browse/HBASE-2219) | *Blocker* | **stop using code mapping for method names in the RPC**

**WARNING: No release note provided for this change.**


---

* [HBASE-2255](https://issues.apache.org/jira/browse/HBASE-2255) | *Major* | **take trunk back to hadoop 0.20**

**WARNING: No release note provided for this change.**


---

* [HBASE-2378](https://issues.apache.org/jira/browse/HBASE-2378) | *Critical* | **Bulk insert with multiple reducers broken due to improper ImmutableBytesWritable comparator**

**WARNING: No release note provided for this change.**


---

* [HBASE-2446](https://issues.apache.org/jira/browse/HBASE-2446) | *Major* | **Remove 'indexed' contrib**

This contrib was moved to github -- http://github.com/ykulbak/ihbase


---

* [HBASE-1892](https://issues.apache.org/jira/browse/HBASE-1892) | *Major* | **[performance] make hbase splits run faster**

On region close, this change makes it so we don't wait on compaction to complete with the close-region flag in place -- i.e. region is offline while we wait on the compaction close -- and secondly, if the region memstores are over a configurable limit, before closing, we'll run a "pre-flush" to get the bulk of the memory flushed before we put the close flag up.


---

* [HBASE-2438](https://issues.apache.org/jira/browse/HBASE-2438) | *Major* | **Addition of a Column Pagination Filter**

 \* A filter, based on the ColumnCountGetFilter, takes two arguments: limit and offset.
 \* This filter can be used for row-based indexing, where references to other tables are stored across many columns, in order to efficient lookups and paginated results for end users.


---

* [HBASE-2294](https://issues.apache.org/jira/browse/HBASE-2294) | *Blocker* | **Enumerate ACID properties of HBase in a well defined spec**

**WARNING: No release note provided for this change.**


---

* [HBASE-2473](https://issues.apache.org/jira/browse/HBASE-2473) | *Major* | **Add to admin create table start and end key params and desired number of regions**

Changes HMasterInterface.createTable signature.  Bumps RPC version.


---

* [HBASE-2392](https://issues.apache.org/jira/browse/HBASE-2392) | *Minor* | **upgrade to ZooKeeper 3.3.0**

This version of HBase uses ZooKeeper 3.3.0. If you are running a separate ZK quorum ensemble, you should upgrade it. See the ZooKeeper release notes for 3.3.0: http://hadoop.apache.org/zookeeper/docs/r3.3.0/releasenotes.html


---

* [HBASE-2542](https://issues.apache.org/jira/browse/HBASE-2542) | *Major* | **Fold Stargate into core**

**WARNING: No release note provided for this change.**


---

* [HBASE-2531](https://issues.apache.org/jira/browse/HBASE-2531) | *Blocker* | **32-bit encoding of regionnames waaaaaaayyyyy too susceptible to hash clashes**

Changes format of region name.  Adds an md5 suffix.  Suffix is now the name used as directory name in filesystem.


---

* [HBASE-2579](https://issues.apache.org/jira/browse/HBASE-2579) | *Major* | **Add atomic checkAndDelete support**

Adds support for atomic checkAndDelete (updates to both client & regionserver). Test cases in TestHRegion updated to support this new method.


---

* [HBASE-2397](https://issues.apache.org/jira/browse/HBASE-2397) | *Minor* | **Bytes.toStringBinary escapes printable chars**

**WARNING: No release note provided for this change.**


---

* [HBASE-2815](https://issues.apache.org/jira/browse/HBASE-2815) | *Major* | **not able to run the test suite in background because TestShell gets suspended on tty output**

Fixed. Please review and apply the patch.


---

* [HBASE-2905](https://issues.apache.org/jira/browse/HBASE-2905) | *Major* | **Nullpointer Exception is throwed when insert mass data via rest interface**

Fix Nullpointer exception when insert mass data via rest interface


---

* [HBASE-997](https://issues.apache.org/jira/browse/HBASE-997) | *Major* | **Count versions with same r/c/ts as one instance with most recent addition the winner**

**WARNING: No release note provided for this change.**


---

* [HBASE-2394](https://issues.apache.org/jira/browse/HBASE-2394) | *Minor* | **Use top-level Apache pom for shared configuration**

Fixed as part of HBASE-2996


---

* [HBASE-2982](https://issues.apache.org/jira/browse/HBASE-2982) | *Major* | **Maven 3 doesn't like duplicate dependencies in hbase/pom.xml**

Fixed as part of HBASE-2996


---

* [HBASE-2538](https://issues.apache.org/jira/browse/HBASE-2538) | *Major* | **Work on repository order in hbase pom**

Fixed as part of HBASE-2996


---

* [HBASE-3140](https://issues.apache.org/jira/browse/HBASE-3140) | *Major* | **Rest schema modification throw null pointer exception**

Patch provided as attach file, apply against svn trunk


---

* [HBASE-3174](https://issues.apache.org/jira/browse/HBASE-3174) | *Minor* | **Add ability for Get operations to enable/disable use of block caching**

**WARNING: No release note provided for this change.**


---

* [HBASE-2006](https://issues.apache.org/jira/browse/HBASE-2006) | *Minor* | **Documentation of hbase-site.xml parameters**

New clarifying documentation


---

* [HBASE-3154](https://issues.apache.org/jira/browse/HBASE-3154) | *Major* | **HBase RPC should support timeout**

Adds a timeout for client-side RPC.  Default to 60 seconds.  Change by adding hbase.rpc.timeout to hbase-site.xml and setting timeout in milliseconds.


---

* [HBASE-2935](https://issues.apache.org/jira/browse/HBASE-2935) | *Minor* | **Refactor "Corrupt Data" Tests in TestHLogSplit**

https://review.cloudera.org/r/1115/


---

* [HBASE-3048](https://issues.apache.org/jira/browse/HBASE-3048) | *Major* | **unify code for major/minor compactions**

minor compactions now enforce ttl, maxversions, deletes, etc... but will let through the delete markers themselves


---

* [HBASE-2898](https://issues.apache.org/jira/browse/HBASE-2898) | *Blocker* | **MultiPut makes proper error handling impossible and leads to corrupted data**

**WARNING: No release note provided for this change.**



