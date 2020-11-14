
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
# Apache HBase  1.2.8 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | *Minor* | **WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes**

This adds two extra features to WALPrettyPrinter tool:

1) Output for each cell combined size of cell descriptors, plus the cell value itself, in a given WAL edit. This is printed on the results as "cell total size sum:" info by default;

2) An optional -g/--goto argument, that allows to seek straight to that specific WAL file position, then sequentially reading the WAL from that point towards its end;


---

* [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | *Critical* | **Empty qualifier cell should not be returned if it does not match QualifierFilter**

<!-- markdown -->

Scans that make use of `QualifierFilter` previously would erroneously return both columns with an empty qualifier along with those that matched. After this change that behavior has changed to only return those columns that match.



