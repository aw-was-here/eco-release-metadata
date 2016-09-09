
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
# Apache HBase  0.94.19 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-10118](https://issues.apache.org/jira/browse/HBASE-10118) | *Minor* | **Major compact keeps deletes with future timestamps**

hbase.hstore.time.to.purge.deletes has been changed; if it is not set, or set to 0, all delete markers including those  with future timestamp are purged during the later major compaction. Otherwise, a delete marker is kept until the major compaction after marker's timestamp + this setting.


---

* [HBASE-10966](https://issues.apache.org/jira/browse/HBASE-10966) | *Trivial* | **RowCounter misinterprets column names that have colons in their qualifier**

Applied to all branches (0.94 doesn't have TestRowCounter so didn't get test change).  Thanks for the patch Alexandre.



