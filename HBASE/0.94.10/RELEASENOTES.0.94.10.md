
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
# Apache HBase  0.94.10 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-8692](https://issues.apache.org/jira/browse/HBASE-8692) | *Major* | **[AccessController] Restrict HTableDescriptor enumeration**

This change adds support for restricting access to table schema. Only a user with GLOBAL ADMIN privilege can enumerate the full list of table schemas. If passed a list of specific tables, the AccessController will check that the user has either GLOBAL ADMIN privs, or TABLE ADMIN or TABLE CREATE privs for all of the listed tables before allowing the request.


---

* [HBASE-8809](https://issues.apache.org/jira/browse/HBASE-8809) | *Major* | **Include deletes in the scan (setRaw) method does not respect the time range or the filter**

"Raw" scans (Scan.setRaw(true)), now honor the scan's time range if specified.
Previously the time range would be ignored.


---

* [HBASE-8776](https://issues.apache.org/jira/browse/HBASE-8776) | *Major* | **tweak retry settings some more (on trunk and 0.94)**

Retry backoff intervals and retry count were set in such manner that at most ~5.5 minutes are spent retrying. On 94 this was adjusted up (from 1~min.), and on trunk/95 - down (from ~40min).



