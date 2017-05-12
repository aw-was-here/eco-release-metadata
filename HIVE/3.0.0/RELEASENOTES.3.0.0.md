
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
# Apache Hive  3.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HIVE-16281](https://issues.apache.org/jira/browse/HIVE-16281) | *Major* | **Upgrade master branch to JDK8**

With this change, we are switching to build master branch with JDK8


---

* [HIVE-12274](https://issues.apache.org/jira/browse/HIVE-12274) | *Major* | **Increase width of columns used for general configuration in the metastore.**

Increased width of metastore text columns for general configuration storage.


---

* [HIVE-15434](https://issues.apache.org/jira/browse/HIVE-15434) | *Major* | **Add UDF to allow interrogation of uniontype values**

Added UDF to allow interrogation of uniontype values.


---

* [HIVE-15173](https://issues.apache.org/jira/browse/HIVE-15173) | *Major* | **Allow dec as an alias for decimal**

**WARNING: No release note provided for this change.**


---

* [HIVE-16049](https://issues.apache.org/jira/browse/HIVE-16049) | *Major* | **upgrade to jetty 9**

Embedded web services now rely on Jetty 9; downstream users who rely on Hive's classpath for their Jetty jars will need to update their use for the change.


---

* [HIVE-16392](https://issues.apache.org/jira/browse/HIVE-16392) | *Major* | **Remove hive.warehouse.subdir.inherit.perms and all permissions inheritance logic**

**WARNING: No release note provided for this change.**


---

* [HIVE-16383](https://issues.apache.org/jira/browse/HIVE-16383) | *Major* | **Switch to HikariCP as default connection pooling**

**WARNING: No release note provided for this change.**


---

* [HIVE-16269](https://issues.apache.org/jira/browse/HIVE-16269) | *Major* | **enable incremental function dump to be loaded via repl load**

Committed to master.


---

* [HIVE-14412](https://issues.apache.org/jira/browse/HIVE-14412) | *Major* | **Add timestamp with time zone**

HIVE-14412 adds 'timestamp with time zone' data type to Hive. The full qualified input format of this type is 'yyyy-MM-dd HH:mm:ss[.SSS...] ZoneId/ZoneOffset', where the time and zone parts are optional. If time part is absent, a default '00:00:00.0' will be used. If zone part is absent, the system time zone will be used. Examples of valid ZoneId and ZoneOffset are: America/Los\_Angeles and GMT+08:00. All timestamp with time zone will be converted and stored as UTC retaining the instant. E.g. '2017-04-14 18:00:00 Asia/Shanghai' will be converted and stored as '2017-04-14 10:00:00.0 Z'.
'timestamptz' is accepted as a type alias for 'timestamp with time zone'.
Conversion between date/timestamp and timestamp with time zone is done using the system time zone.
'time' becomes a reserved key word after HIVE-14412, thus can break user queries where 'time' is used as identifiers. If users want to continue use 'time' as identifiers, they have to escape it with '\`' (backtick).



