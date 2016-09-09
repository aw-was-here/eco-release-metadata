
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
# Apache HBase  0.20.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-2190](https://issues.apache.org/jira/browse/HBASE-2190) | *Major* | **HRS should report to master when HMsg are available**

This requires that making a rolling update, you upgrade the master first (so it knows what to do w/ the new split signal this patch introduces).


---

* [HBASE-2378](https://issues.apache.org/jira/browse/HBASE-2378) | *Critical* | **Bulk insert with multiple reducers broken due to improper ImmutableBytesWritable comparator**

**WARNING: No release note provided for this change.**


---

* [HBASE-2422](https://issues.apache.org/jira/browse/HBASE-2422) | *Major* | **Remove fragmentation indicator for 0.20.4... fix in 0.20.5.**

**WARNING: No release note provided for this change.**


---

* [HBASE-2248](https://issues.apache.org/jira/browse/HBASE-2248) | *Blocker* | **Provide new non-copy mechanism to assure atomic reads in get and scan**

This patch changes the Get code path to instead be a Scan of one row.  This means than inserting cells out of timestamp order should work now (tests to verify to follow part of hbase-2294) but also that a delete at an explicit timestamp now overshadows EVEN if the effected cell is put after the delete (The old Get code path did early-out so a subsequent puts would not see the delete).


---

* [HBASE-1892](https://issues.apache.org/jira/browse/HBASE-1892) | *Major* | **[performance] make hbase splits run faster**

On region close, this change makes it so we don't wait on compaction to complete with the close-region flag in place -- i.e. region is offline while we wait on the compaction close -- and secondly, if the region memstores are over a configurable limit, before closing, we'll run a "pre-flush" to get the bulk of the memory flushed before we put the close flag up.



