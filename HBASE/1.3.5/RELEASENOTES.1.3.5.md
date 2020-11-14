
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
# Apache HBase  1.3.5 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


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

* [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | *Trivial* | **Remove extra/useless +**

Removed extra + in HRegion, HStore and LoadIncrementalHFiles for branch-2 and HRegion and HStore for branch-1.


---

* [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | *Minor* | **Formatting issues in administration section of book**

Fixes a formatting issue in the administration section of the book, where listing indentation were a little bit off.


---

* [HBASE-21784](https://issues.apache.org/jira/browse/HBASE-21784) | *Major* | **Dump replication queue should show list of wal files ordered chronologically**

The DumpReplicationQueues tool will now list replication queues sorted in chronological order.



