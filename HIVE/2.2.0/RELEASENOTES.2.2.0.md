
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
# Apache Hive  2.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HIVE-13380](https://issues.apache.org/jira/browse/HIVE-13380) | *Major* | **Decimal should have lower precedence than double in type hierachy**

Hive now considers float & double higher in precedence than decimal.


---

* [HIVE-14060](https://issues.apache.org/jira/browse/HIVE-14060) | *Major* | **Hive: Remove bogus "localhost" from Hive splits**

Hive: Remove bogus "localhost" from Hive splits


---

* [HIVE-14122](https://issues.apache.org/jira/browse/HIVE-14122) | *Critical* | **VectorMapOperator: Missing update to AbstractMapOperator::numRows**

VectorMapOperator: Missing update to AbstractMapOperator::numRows (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-14200](https://issues.apache.org/jira/browse/HIVE-14200) | *Major* | **Tez: disable auto-reducer parallelism when reducer-count \* min.partition.factor \< 1.0**

 Tez: disable auto-reducer parallelism when reducer-count \* min.partition.factor \< 1.0 (Gopal V, reviewed by Gunther Hagleitner)


---

* [HIVE-14267](https://issues.apache.org/jira/browse/HIVE-14267) | *Minor* | **HS2 open\_operations metrics not decremented when an operation gets timed out**

Committed to 2.2.0 and 2.1.1. Thanks Naveen for the patch.


---

* [HIVE-14123](https://issues.apache.org/jira/browse/HIVE-14123) | *Minor* | **Add beeline configuration option to show database in the prompt**

New BeeLine Command option --showDbInPrompt to display the current database name in prompt


---

* [HIVE-14349](https://issues.apache.org/jira/browse/HIVE-14349) | *Major* | **Vectorization: LIKE should anchor the regexes**

Vectorization: LIKE should anchor the regexes


---

* [HIVE-14434](https://issues.apache.org/jira/browse/HIVE-14434) | *Major* | **Vectorization: BytesBytes lookup capped count can be =0, =1, \>=2**

Vectorization: BytesBytes lookup capped count can be =0, =1, \>=2 (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-14436](https://issues.apache.org/jira/browse/HIVE-14436) | *Major* | **Hive 1.2.1/Hitting "ql.Driver: FAILED: IllegalArgumentException Error: , expected at the end of \'decimal(9\'" after enabling hive.optimize.skewjoin and with MR engine**

**WARNING: No release note provided for this change.**


---

* [HIVE-14435](https://issues.apache.org/jira/browse/HIVE-14435) | *Major* | **Vectorization: missed vectorization for const varchar()**

Vectorization: missed vectorization for const varchar()


---

* [HIVE-14437](https://issues.apache.org/jira/browse/HIVE-14437) | *Major* | **Vectorization: Optimize key misses in VectorMapJoinFastBytesHashTable**

 Vectorization: Optimize key misses in VectorMapJoinFastBytesHashTable (Gopal V, reviewed by Matt McCline)


---

* [HIVE-14155](https://issues.apache.org/jira/browse/HIVE-14155) | *Major* | **Vectorization: Custom UDF Vectorization annotations are ignored**

Vectorization: Custom UDF Vectorization annotations are ignored (Gopal V, reviewed by Ashutosh Chauhan)


---

* [HIVE-14648](https://issues.apache.org/jira/browse/HIVE-14648) | *Blocker* | **LLAP: Avoid private pages in the SSD cache**

 LLAP: Avoid private pages in the SSD cache (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-14418](https://issues.apache.org/jira/browse/HIVE-14418) | *Major* | **Hive config validation prevents unsetting the settings**

"-d" option has been added to Hive CLI "reset" command, allowing one to reset specific settings to built-in defaults, overriding any session-specific values, as well as configuration files in use. E.g. "reset -d hive.compute.splits.in.am hive.smbjoin.cache.rows".


---

* [HIVE-14618](https://issues.apache.org/jira/browse/HIVE-14618) | *Major* | **beeline fetch logging delays before query completion**

beeline fetch logging delays before query completion (Tao Li, via Gopal V)


---

* [HIVE-14159](https://issues.apache.org/jira/browse/HIVE-14159) | *Major* | **sorting of tuple array using multiple field[s]**

**WARNING: No release note provided for this change.**


---

* [HIVE-14251](https://issues.apache.org/jira/browse/HIVE-14251) | *Major* | **Union All of different types resolves to incorrect data**

With this change, Hive will only perform implicit conversion within each type groups including string group, number group or date group, not across groups. So in order to union a string type with a date type, a explicit cast from string to date or from date to string is needed.



