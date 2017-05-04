
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
# Apache HBase  1.1.8 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-16721](https://issues.apache.org/jira/browse/HBASE-16721) | *Critical* | **Concurrency issue in WAL unflushed seqId tracking**

Fixed a bug in sequenceId tracking for the WALs that caused WAL files to accumulate without being deleted due to a rare race condition.


---

* [HBASE-16765](https://issues.apache.org/jira/browse/HBASE-16765) | *Critical* | **New SteppingRegionSplitPolicy, avoid too aggressive spread of regions for small tables.**

Introduces a new split policy: SteppingSplitPolicy
This will use a simple step function to split a region at (by default) 2  xflushSize when no other region of the same table is seen on the region server, or max-file-size when one or more other regions of the same table is seen.

In HBase 2.0 this is going to be the default. In previous versions it can be configured.


---

* [HBASE-16972](https://issues.apache.org/jira/browse/HBASE-16972) | *Major* | **Log more details for Scan#next request when responseTooSlow**

**WARNING: No release note provided for this change.**


---

* [HBASE-17112](https://issues.apache.org/jira/browse/HBASE-17112) | *Major* | **Prevent setting timestamp of delta operations the same as previous value\'s**

Before this issue, two concurrent Increments/Appends done in same millisecond or RS\'s clock going back will result in two results have same TS, which is not friendly to versioning and will get wrong result in slave cluster if the replication is disordered.
After this issue, the result of Increment/Append will always have an incremental TS. There is no any inconsistent in replication for these operations. But there is a rare case that if there is a Delete in same millisecond, the later result can not be masked by this Delete. This can be fixed after we have new semantics that previous Delete will never mask later Put even its timestamp is higher.



