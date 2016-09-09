
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
# Apache HBase  0.19.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-947](https://issues.apache.org/jira/browse/HBASE-947) | *Minor* | **[Optimization] Major compaction should remove deletes as well as the deleted cell**

**WARNING: No release note provided for this change.**


---

* [HBASE-1005](https://issues.apache.org/jira/browse/HBASE-1005) | *Minor* | **Regex and string comparison operators for ColumnValueFilter**

**WARNING: No release note provided for this change.**


---

* [HBASE-972](https://issues.apache.org/jira/browse/HBASE-972) | *Major* | **Update hbase trunk to use released hadoop 0.19.0**

**WARNING: No release note provided for this change.**


---

* [HBASE-1028](https://issues.apache.org/jira/browse/HBASE-1028) | *Major* | **If key does not exist, return null in getRow rather than an empty RowResult**

**WARNING: No release note provided for this change.**


---

* [HBASE-1027](https://issues.apache.org/jira/browse/HBASE-1027) | *Major* | **Make global flusher check work with percentages rather than hard code memory sizes.**

**WARNING: No release note provided for this change.**


---

* [HBASE-1097](https://issues.apache.org/jira/browse/HBASE-1097) | *Major* | **SequenceFile.Reader keeps around buffer whose size is that of largest item read -\> results in lots of dead heap**

Address OOMEing in presence of big cells -- MBs -- when there is scanning going on



