
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
# Apache HBase  0.94.13 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-9488](https://issues.apache.org/jira/browse/HBASE-9488) | *Major* | **Improve performance for small scan**

Better perfomance for small scan (e.g. scan range is within one data block(64KB)) through setting 'small' attribute as true in Scan Object


---

* [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | *Major* | **Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix**

- The additional JAR files specified with HBASE\_CLASSPATH are appended to the system JARs.
- The additional JAR files specified with HBASE\_CLASSPATH\_PREFIX are prefixed to the system JARs.



