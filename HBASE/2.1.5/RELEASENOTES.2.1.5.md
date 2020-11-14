
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
# Apache HBase  2.1.5 Release Notes

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

* [HBASE-22292](https://issues.apache.org/jira/browse/HBASE-22292) | *Blocker* | **PreemptiveFastFailInterceptor clean repeatedFailuresMap issue**

Adds new configuration hbase.client.failure.map.cleanup.interval which defaults to ten minutes.


---

* [HBASE-22054](https://issues.apache.org/jira/browse/HBASE-22054) | *Minor* | **Space Quota: Compaction is not working for super user in case of NO\_WRITES\_COMPACTIONS**

This change allows the system and superusers to initiate compactions, even when a space quota violation policy disallows compactions from happening. The original intent behind disallowing of compactions was to prevent end-user compactions from creating undue I/O load, not disallowing \*any\* compaction in the system.


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

* [HBASE-21784](https://issues.apache.org/jira/browse/HBASE-21784) | *Major* | **Dump replication queue should show list of wal files ordered chronologically**

The DumpReplicationQueues tool will now list replication queues sorted in chronological order.


---

* [HBASE-20970](https://issues.apache.org/jira/browse/HBASE-20970) | *Major* | **Update hadoop check versions for hadoop3 in hbase-personality**

Add hadoop 3.0.3, 3.1.1 3.1.2 in our hadoop check jobs.


---

* [HBASE-22226](https://issues.apache.org/jira/browse/HBASE-22226) | *Trivial* | **Incorrect level for headings in asciidoc**

Warnings for level headings are corrected in the book for the HBase Incompatibilities section.


---

* [HBASE-21991](https://issues.apache.org/jira/browse/HBASE-21991) | *Major* | **Fix MetaMetrics issues - [Race condition, Faulty remove logic], few improvements**

The class LossyCounting was unintentionally marked Public but was never intended to be part of our public API. This oversight has been corrected and LossyCounting is now marked as Private and going forward may be subject to additional breaking changes or removal without notice. If you have taken a dependency on this class we recommend cloning it locally into your project before upgrading to this release.


---

* [HBASE-22148](https://issues.apache.org/jira/browse/HBASE-22148) | *Blocker* | **Provide an alternative to CellUtil.setTimestamp**

<!-- markdown -->

The `CellUtil.setTimestamp` method changes to be an API with audience `LimitedPrivate(COPROC)` in HBase 3.0. With that designation the API should remain stable within a given minor release line, but may change between minor releases.

Previously, this method was deprecated in HBase 2.0 for removal in HBase 3.0. Deprecation messages in HBase 2.y releases have been updated to indicate the expected API audience change.



