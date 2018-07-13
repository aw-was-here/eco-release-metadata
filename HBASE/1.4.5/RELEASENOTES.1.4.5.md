
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
# Apache HBase  1.4.5 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | *Minor* | **The hbase shell clone\_snaphost command returns bad error message**

<!-- markdown -->

When attempting to clone a snapshot but using a namespace that does not exist, the HBase shell will now correctly report the exception as caused by the passed namespace. Previously, the shell would report that the problem was an unknown namespace but it would claim the user provided table name was not found as a namespace. Both before and after this change the shell properly used the passed namespace to attempt to handle the request.


---

* [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | *Minor* | **Client is not able to execute REST queries in a secure cluster**

Added 'hbase.rest.http.allow.options.method' configuration property to allow user to decide whether Rest Server HTTP should allow OPTIONS method or not. By default it is enabled in HBase 2.1.0+ versions and in other versions it is disabled.
Similarly 'hbase.thrift.http.allow.options.method' is added HBase 1.5, 2.1.0 and 3.0.0 versions. It is disabled by default.


---

* [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | *Critical* | **REST Java client is not able to negotiate with the server in the secure mode**

Adds a negotiation logic between a secure java REST client and server. After this jira the Java REST client will start responding to the Negotiate challenge sent by the server. Adds RESTDemoClient which can be used to verify whether the secure Java REST client works against secure REST server or not.



