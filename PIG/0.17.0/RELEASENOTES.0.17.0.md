
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
# Apache Pig  0.17.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [PIG-4906](https://issues.apache.org/jira/browse/PIG-4906) | *Minor* | **Add Bigdecimal functions in Over function**

-4 new functions: SUM, AVG, MAX and MIN for BigDecimal and 4 test for each function.
-An another outputschema. This output takes the inner alias and type of inputschema and returns the same alias with "\_over" and the type. This is because in a foreach like the next:

x = FOREACH SUM {
		ini = FOREACH test GENERATE id, id\_2;
GENERATE FLATTEN(MYSTITCH(ini, MYOVER(test.impt\_prima, 'sum(bigdecimal)'), MYOVER(test.impt\_1, 'sum(bigdecimal)'), 
								MYOVER(test.impt\_2, 'sum(bigdecimal)')));

with the normal OVER function the foreach fails because all MYOVERS return the same alias.


---

* [PIG-5067](https://issues.apache.org/jira/browse/PIG-5067) | *Major* | **Revisit union on numeric type and chararray to bytearray**

This change now disallows union-onschema of incompatible types,  (for example, numeric types and chararray). It makes it consistent with plain union.


---

* [PIG-4923](https://issues.apache.org/jira/browse/PIG-4923) | *Major* | **Drop Hadoop 1.x support in Pig 0.17**

**WARNING: No release note provided for this change.**


---

* [PIG-4897](https://issues.apache.org/jira/browse/PIG-4897) | *Major* | **Scope of param substitution for run/exec commands**

With run/exec command, parameters are now scoped and caller would not see the parameters declared within the callee's scripts.


---

* [PIG-4728](https://issues.apache.org/jira/browse/PIG-4728) | *Major* | **Compilation against hbase 1.x fails with hbase-hadoop1-compat not found**

HBase 1.x and above will be supported with Pig 0.17. Compiling with 0.98 or below versions will require reversing this patch.


---

* [PIG-3938](https://issues.apache.org/jira/browse/PIG-3938) | *Major* | **Add LoadCaster to EvalFunc(UDF)**

UDF now supports LoadCaster.  Default behavior is to check if all parameters belong to same loadcaster and use it when true.


---

* [PIG-5085](https://issues.apache.org/jira/browse/PIG-5085) | *Major* | **Support FLATTEN of maps**

**WARNING: No release note provided for this change.**



