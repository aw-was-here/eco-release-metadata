
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
# Apache HBase  0.20.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-1949](https://issues.apache.org/jira/browse/HBASE-1949) | *Major* | **KeyValue expiration by Time-to-Live during major compaction is broken**

Fixed expiring of individual column values within rows via the column family time-to-live configuration.  Previously all column values following the first expired value in a row would be truncated.  Though in practice this might only be seen when lowering the TTL configuration on a column family with existing data.


---

* [HBASE-1829](https://issues.apache.org/jira/browse/HBASE-1829) | *Major* | **Make use of start/stop row in TableInputFormat**

Splits keep within the confines of star and end rows if provided.


---

* [HBASE-1904](https://issues.apache.org/jira/browse/HBASE-1904) | *Minor* | **Add tutorilal for installing HBase on Windows using Cygwin as a test and development environment**

WimVanLeuven has: foreseen a cygwin.html to sit next to the overview.html in the sourcetree so it can be linked from within the Java doc



