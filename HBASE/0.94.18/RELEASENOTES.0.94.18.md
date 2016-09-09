
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
# Apache HBase  0.94.18 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-9778](https://issues.apache.org/jira/browse/HBASE-9778) | *Major* | **Add hint to ExplicitColumnTracker to avoid seeking**

Introduces a new scan attribute to allow a scan operation with explicit columns (Scan.addColumn) to opportunistically look ahead a few KeyValues (columns/versions) before scheduling a seek operation to seek between columns.

A seek is efficient when it can seek past 5-10 KeyValue (columns) or 512-1024 bytes. With small rows and few versions look ahead is typically more efficient.

API:
{code}
    Scan s = new Scan(...);
    s.addColumn(...);
    // instructs the RegionServer to attempt two iterations of next before scheduling a seek
    s.setAttribute(Scan.HINT\_LOOKAHEAD, Bytes.toBytes(2));
    table.getScanner(s);
{code}



