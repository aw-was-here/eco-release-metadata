
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
# Apache Kudu  1.10.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KUDU-2825](https://issues.apache.org/jira/browse/KUDU-2825) | *Minor* | **add a column named role in 'kudu master list'**

add a column name role in 'kudu master list' to show the role of each masterand include 'role' into default columns，roles include master,follower,learner，non\_participant and unknowrole，include 'role' into default columns

format:
 kudu master list \<master\_addresses\> [-columns=\<columns\>] [-format=\<format\>] [-timeout\_ms=\<ms\>]

default columns include "uuid"、"rpc-addresses" and "role"

columns (optional)
 Comma-separated list of master info fields to include in output. Possible values: uuid, rpc-addresses, http-addresses, version, role and seqno



