
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
# Apache HBase  0.99.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | *Major* | **Move REST**

HBase Rest has moved to it's own module. If you previously were using the rest sever code in your project you will now need to depend upon hbase-rest module in addition to the hbase-server module.


---

* [HBASE-12189](https://issues.apache.org/jira/browse/HBASE-12189) | *Major* | **Fix new issues found by coverity static analysis**

Fixes up the worst offenders reported by coverity.  Many hundreds more of issues to address but seem minor relatively on review.


---

* [HBASE-12145](https://issues.apache.org/jira/browse/HBASE-12145) | *Major* | **Fix javadoc and findbugs so new folks aren't freaked when they see them**

Fix javadoc warnings.

Fixup findbugs warnings mostly by adding annotations saying 'working as expected'.

In RpcRetryingCallerWithReadReplicas made following change which findbugs spotted:

 -        if (completed == null) tasks.wait();
+        while (completed == null) tasks.wait();

In RecoverableZooKeeper, made all zk accesses synchronized -- we were doing it half-ways previously.

In RatioBasedCompactionPolicy we were making an instance of Random on
each invocation of getNextMajorCompactionTime


---

* [HBASE-12133](https://issues.apache.org/jira/browse/HBASE-12133) | *Minor* | **Add FastLongHistogram for metric computation**

Adds Histogram and AtomicLong Utils


---

* [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | *Major* | **TestScannerModel fails if using jackson 1.9.13**

The XML element used for the visibility labels in the REST API has been renamed from "label" lo "labels" in order to support old and the new versions of jackson.

Developers that use visibility labels via REST XML need to modify their applications in order to use the new XML element name.


---

* [HBASE-12068](https://issues.apache.org/jira/browse/HBASE-12068) | *Major* | **[Branch-1] Avoid need to always do KeyValueUtil#ensureKeyValue for Filter transformCell**

When custom Filters are used, make sure to override Cell based methods and not keyValue based methods. ie.
transformCell(Cell) instead of transform(KeyValue) 
getNextCellHint(Cell) instead of getNextKeyHint(KeyValue)
Else there can be possible performance hit of a conversion of a non KV Cell to a KV which required key and value deep copy.


---

* [HBASE-12054](https://issues.apache.org/jira/browse/HBASE-12054) | *Major* | **bad state after NamespaceUpgrade with reserved table names**

Prior to HBase 0.98.7, if you have 0.94 tables named (data, archive, corrupt, lib, WALs, splitWAl, oldWALs) upgrading would "silently" fail, corrupting the state of those tables.


---

* [HBASE-12052](https://issues.apache.org/jira/browse/HBASE-12052) | *Major* | **BulkLoad Failed due to no write permission on input files**

SecureBulkLoadEndPoint can be used in un-secure env to bulk load data without hitting "Permission denied" for hbase user.


---

* [HBASE-12046](https://issues.apache.org/jira/browse/HBASE-12046) | *Major* | **HTD/HCD setters should be builder-style**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | *Minor* | **CopyTable with bulkload**

CopyTable now can generate HFiles and bulkload to the destination table.


---

* [HBASE-11990](https://issues.apache.org/jira/browse/HBASE-11990) | *Major* | **Make setting the start and stop row for a specific prefix easier**

Added new utility method, setRowPrefixFilter, to Scan to easily scan for a specific row prefix


---

* [HBASE-11917](https://issues.apache.org/jira/browse/HBASE-11917) | *Major* | **Deprecate / Remove HTableUtil**

HTableUtil removed in master branch (2.0) and deprecated in 1.0.


---

* [HBASE-11907](https://issues.apache.org/jira/browse/HBASE-11907) | *Minor* | **Use the joni byte[] regex engine in place of j.u.regex in RegexStringComparator**

The RegexStringComparator comparator now include an optional EngineType constructor parameter. Use EngineType.JONI to select the joni regex engine, which can be twice as fast as the Java regex engine and will be more efficient, producing less object churn while scanning, because it operates natively on byte arrays. RegexStringComparator still uses the Java regex engine by default.


---

* [HBASE-11804](https://issues.apache.org/jira/browse/HBASE-11804) | *Major* | **Raise default heap size if unspecified**

When run without a specified heap size the HBase scripts will now let the jvm choose the defaults. Usually this will mean that the max heap size will be the larger of 1gig or 1/4 of physical memory.


---

* [HBASE-10153](https://issues.apache.org/jira/browse/HBASE-10153) | *Major* | **improve VerifyReplication to compute BADROWS more accurately**

VerifyReplicaiton reports the following counters besides the existing ones:

ONLY\_IN\_SOURCE\_TABLE\_ROWS: number of rows found only in source
ONLY\_IN\_PEER\_TABLE\_ROWS: number of rows found only in peer
CONTENT\_DIFFERENT\_ROWS: number of rows whose contents are different between source and peer


---

* [HBASE-8808](https://issues.apache.org/jira/browse/HBASE-8808) | *Trivial* | **Use Jacoco to generate Unit Test coverage reports**

Adds jacoco plugin.  Call it by defining argLine with necessary arguments.  By default outputs to target dir.



