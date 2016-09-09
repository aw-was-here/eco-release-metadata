
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
# Apache HBase  0.20.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-1987](https://issues.apache.org/jira/browse/HBASE-1987) | *Minor* | **The Put object has no simple read methods for checking what has already been added.**

Adds Put#has methods.


---

* [HBASE-2029](https://issues.apache.org/jira/browse/HBASE-2029) | *Minor* | **Reduce shell exception dump on console**

Added a -d and --debug to shell options


---

* [HBASE-2068](https://issues.apache.org/jira/browse/HBASE-2068) | *Minor* | **MetricsRate is missing "registry" parameter**

Converts MasterStatistics "cluster\_requests" attribute to a MetricsRate value (computed as requests / sec).  Also adds a "requests" attribute to RegionServerStatistics MBean, also as a MetricsRate value.



