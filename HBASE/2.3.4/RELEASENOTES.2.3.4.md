
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
# Apache HBase  2.3.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-25224](https://issues.apache.org/jira/browse/HBASE-25224) | *Major* | **Maximize sleep for checking meta and namespace regions availability**

Changed the max sleep time during meta and namespace regions availability check to be 60 sec. Previously there was no such cap


---

* [HBASE-25234](https://issues.apache.org/jira/browse/HBASE-25234) | *Major* | **[Upgrade]Incompatibility in reading RS report from 2.1 RS when Master is upgraded to a version containing HBASE-21406**

Fixes so auto-migration of master procedure store works again going from 2.0.x =\> 2.2+. Also make it so heartbeats work when rolling upgrading from 2.0.x =\> 2.3+.


---

* [HBASE-25238](https://issues.apache.org/jira/browse/HBASE-25238) | *Critical* | **Upgrading HBase from 2.2.0 to 2.3.x fails because of “Message missing required fields: state”**

Fixes master procedure store migration issues going from 2.0.x to 2.2.x and/or 2.3.x. Also fixes failed heartbeat parse during rolling upgrade from 2.0.x. to 2.3.x.



