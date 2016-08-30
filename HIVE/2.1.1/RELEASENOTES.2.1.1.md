
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
# Apache Hive  2.1.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HIVE-14122](https://issues.apache.org/jira/browse/HIVE-14122) | *Critical* | **VectorMapOperator: Missing update to AbstractMapOperator::numRows**

VectorMapOperator: Missing update to AbstractMapOperator::numRows (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-14267](https://issues.apache.org/jira/browse/HIVE-14267) | *Minor* | **HS2 open\_operations metrics not decremented when an operation gets timed out**

Committed to 2.2.0 and 2.1.1. Thanks Naveen for the patch.


---

* [HIVE-14349](https://issues.apache.org/jira/browse/HIVE-14349) | *Major* | **Vectorization: LIKE should anchor the regexes**

Vectorization: LIKE should anchor the regexes


---

* [HIVE-14402](https://issues.apache.org/jira/browse/HIVE-14402) | *Major* | **Vectorization: Fix Mapjoin overflow deserialization**

Vectorization: Fix Mapjoin overflow deserialization (Gopal V, reviewed by Matt McCline)


---

* [HIVE-14435](https://issues.apache.org/jira/browse/HIVE-14435) | *Major* | **Vectorization: missed vectorization for const varchar()**

Vectorization: missed vectorization for const varchar()


---

* [HIVE-14418](https://issues.apache.org/jira/browse/HIVE-14418) | *Major* | **Hive config validation prevents unsetting the settings**

"-d" option has been added to Hive CLI "reset" command, allowing one to reset specific settings to built-in defaults, overriding any session-specific values, as well as configuration files in use. E.g. "reset -d hive.compute.splits.in.am hive.smbjoin.cache.rows".



