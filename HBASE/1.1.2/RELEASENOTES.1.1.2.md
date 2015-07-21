
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
# Apache HBase  1.1.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-13983](https://issues.apache.org/jira/browse/HBASE-13983) | *Minor* | **Doc how the oddball HTable methods getStartKey, getEndKey, etc. will be removed in 2.0.0**

Adds extra doc on getStartKeys, getEndKeys, and getStartEndKeys in HTable explaining that they will be removed in 2.0.0 (these methods did not get the proper full major version deprecation cycle).

In this issue, we actually also remove these methods in master/2.0.0 branch.


---

* [HBASE-13930](https://issues.apache.org/jira/browse/HBASE-13930) | *Major* | **Exclude Findbugs packages from shaded jars**

Exclude Findbugs packages from shaded jars


---

* [HBASE-13881](https://issues.apache.org/jira/browse/HBASE-13881) | *Major* | **Bug in HTable#incrementColumnValue implementation**

HBASE-13881 Correct HTable incrementColumnValue implementation



