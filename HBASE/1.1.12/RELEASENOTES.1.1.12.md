
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
# Apache HBase  1.1.12 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-9393](https://issues.apache.org/jira/browse/HBASE-9393) | *Critical* | **Hbase does not closing a closed socket resulting in many CLOSE\_WAIT**

To handle this issue client need to have Hadoop client 2.6.4 or 2.7.0+ Hadoop version as CanUnBuffer interface which was added as part of HDFS-7694 is available in only those versions.


---

* [HBASE-18255](https://issues.apache.org/jira/browse/HBASE-18255) | *Critical* | **Time-Delayed HBase Performance Degradation with Java 7**

This change sets the JVM property ReservedCodeCacheSize to 256MB in the provided hbase-env.sh example file. The specific value for this property attempts to prevent performance issues seen when HBase using Java 7. The value set is the same as the default when using Java8.


---

* [HBASE-18387](https://issues.apache.org/jira/browse/HBASE-18387) | *Minor* | **[Thrift] Make principal configurable in DemoClient.java**

This change allows the demonstration Thrift client to customize the server principal used by the Thrift server for instances secured with Kerberos.



