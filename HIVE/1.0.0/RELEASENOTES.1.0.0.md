
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
#  1.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HIVE-9473](https://issues.apache.org/jira/browse/HIVE-9473) | *Major* | **sql std auth should disallow built-in udfs that allow any java methods to be called**

SQL Standard authorization will disable the udfs reflect, reflect2 and java\_method by automatically setting the udf blacklist config parameter (hive.server2.builtin.udf.blacklist). However, if HiveServer2 admin chooses to set the config param to a specific value, it will not be altered.


---

* [HIVE-9401](https://issues.apache.org/jira/browse/HIVE-9401) | *Minor* | **Backport: Fastpath for limited fetches from unpartitioned tables**

SimpleFetchOptimizer for limited fetches without filters


---

* [HIVE-9249](https://issues.apache.org/jira/browse/HIVE-9249) | *Critical* | **java.lang.ClassCastException: org.apache.hadoop.hive.serde2.io.HiveVarcharWritable cannot be cast to org.apache.hadoop.hive.common.type.HiveVarchar when joining tables**

HIVE-9249: Vectorization: Join involving CHAR/VARCHAR fails during execution. (Matt McCline, reviewed by Gopal V)


---

* [HIVE-8966](https://issues.apache.org/jira/browse/HIVE-8966) | *Critical* | **Delta files created by hive hcatalog streaming cannot be compacted**

Don't do compaction on the current delta if it has a file in bucket pattern but not compactable


---

* [HIVE-8953](https://issues.apache.org/jira/browse/HIVE-8953) | *Major* | **0.5.2-SNAPSHOT Dependency**

Fixed in 1.0


---

* [HIVE-8485](https://issues.apache.org/jira/browse/HIVE-8485) | *Major* | **HMS on Oracle incompatibility**

Introduces a new hive-site.xml parameter  : "hive.metastore.orm.retrieveMapNullsAsEmptyStrings" that defaults to false.
For operation with oracle, or any other datastore that converts empty strings to nulls, users should set this to true.

If this parameter is set to true, ObjectStore will transform any null map values it finds in any of the parameters maps to "".
If this parameter is set to false, ObjectStore will prune any map entry where the value is null.



